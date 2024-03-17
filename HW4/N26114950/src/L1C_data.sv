//================================================
// Auther:      Chen Yun-Ru (May)
// Filename:    L1C_data.sv
// Description: L1 Cache for data
// Version:     0.1
//================================================
`include "def.svh"
//`include "data_array_wrapper.sv"
//`include "tag_array_wrapper.sv"
module L1C_data
       (
           input                              clk,
           input                              rst,
           // Core to CPU wrapper 
           input [`DATA_BITS-1:0]             core_addr,
           input                              core_req,
           input                              core_write,
           input [`DATA_BITS-1:0]             core_in,
           input [`CACHE_TYPE_BITS-1:0]       core_type,
           // Mem to CPU wrapper  
           input [`DATA_BITS-1:0]             D_out,
           input                              D_wait,
           // CPU wrapper to core
           output logic[`DATA_BITS-1:0]       core_out,
           output logic                       core_wait,
           // CPU wrapper to Mem
           output logic                       D_req,
           output logic[`DATA_BITS-1:0]       D_addr,
           output logic                       D_write,
           output logic[`DATA_BITS-1:0]       D_in,
           output logic[`CACHE_TYPE_BITS-1:0] D_type
       );

//address
// | 31     10 | 9     4 | 3      0
// |    tag    |  index  |  offset

logic [63:0]  valid;
logic [5:0]   index;
logic         TA_write, TA_read;
logic [21:0]  TA_in, TA_out;
logic [15:0]  DA_write;
logic         DA_read;
logic [127:0] DA_in;
logic [127:0] DA_out;
logic [3:0]   offset;
logic [1:0]   cache_cs,cache_ns;
logic         r_hit, r_miss, w_hit, w_miss;
logic [95:0]  DA_buffer;
logic [1:0] Readcnt;
logic cacheable;

assign cacheable = (core_addr[31:16]!=16'h1000);

//STATE
parameter Idle = 2'd0;
parameter hit_or_miss = 2'd1;
parameter Readmiss = 2'd2;
parameter Write = 2'd3;

assign D_req = (r_miss || w_hit || w_miss);
assign D_addr = (core_write)? core_addr : {core_addr[31:4],4'd0};
assign D_write = core_write;
assign D_in = core_in;
assign D_type = core_type;
assign index = core_addr[9:4];
assign offset = core_addr[3:0];
assign DA_in = (core_write)? {core_in, core_in, core_in, core_in} : {D_out,DA_buffer};
assign DA_read = 1'b1;
assign TA_in = core_addr[31:10];
assign TA_read = 1'b1;


always@(posedge clk)
if(rst)
    cache_cs <= 2'd0;
else
    cache_cs <= cache_ns;

always@(*)
begin
    case(cache_cs)
        Idle: 
            cache_ns = (core_req)? hit_or_miss : Idle;
        hit_or_miss: 
            cache_ns = (r_hit)? Idle : (r_miss)? Readmiss : (core_write)? Write : hit_or_miss;
        Readmiss: 
            cache_ns = (Readcnt==2'd3 && !D_wait)? hit_or_miss :Readmiss;
        Write:
            cache_ns = (D_wait)? Write : Idle; 
    endcase
end


always@(*)
begin
    if(cache_cs != Idle) 
    begin
        if ((TA_in==TA_out) && valid[index]) 
        begin     
            r_hit = (core_write)? 1'b0 : 1'b1;
            r_miss = 1'b0;
            w_hit = (core_write)? 1'b1 : 1'b0;
            w_miss = 1'b0;
        end
        else 
        begin
            r_hit = 1'b0;
            r_miss = (core_write)? 1'b0 : 1'b1;
            w_hit = 1'b0;
            w_miss = (core_write)? 1'b1 : 1'b0;
        end
    end
    else 
    begin
        r_hit = 1'b0;
        r_miss = 1'b0;
        w_hit = 1'b0;
        w_miss = 1'b0;
    end  
end

always@(posedge clk) 
begin
    if(rst) 
        valid <= 64'd0;
    else if(Readcnt == 2'd3 && cache_cs == Readmiss && !D_wait && cacheable)    
        valid[index] <= 1'b1;
    else 
        valid[index] <= valid[index];
end


always@(posedge clk) 
begin
    if(rst) 
        Readcnt <= 2'd0;
    else if (Readcnt == 2'd3 && cache_cs == Readmiss && !D_wait)
        Readcnt <= 2'd0;
    else if(cache_cs == Readmiss && !D_wait)    
        Readcnt <= Readcnt + 2'd1;
    else 
        Readcnt <= Readcnt;
end


always@(*)
begin
    case(cache_cs)
        Idle:   
            core_wait = (core_req)? 1'd1 : 1'd0;
        hit_or_miss: 
            core_wait = (r_hit)? 1'd0 : 1'd1;
        Readmiss:
            begin  
                if(cacheable) core_wait = 1'd1;
                else          core_wait = D_wait;
            end
        Write:    
            core_wait = (D_wait)? 1'd1 : 1'd0;
        default: 
            core_wait = 1'd1;
    endcase
end

always@(posedge clk) 
begin
    if(rst) 
        DA_buffer <= 96'd0;
    else if(cache_cs == Readmiss && !D_wait)
    begin
        DA_buffer[95:64] <= D_out;
        DA_buffer[63:32] <= DA_buffer[95:64];
        DA_buffer[31:0] <= DA_buffer[63:32];
    end 
    else 
        DA_buffer <= DA_buffer;
end

always_comb
begin
    if(cacheable)
        case (offset[3:2])
            2'b00:   core_out = DA_out[31:0];
            2'b01:   core_out = DA_out[63:32];
            2'b10:   core_out = DA_out[95:64];
            2'b11:   core_out = DA_out[127:96];
        endcase
    else
        core_out = D_out;
end

always_comb begin
    case (cache_cs)
        Readmiss: 
        begin
            DA_write = (Readcnt==2'd3 && !D_wait && cacheable)? 16'b0 : 16'b1111_1111_1111_1111;
            TA_write = (Readcnt==2'd3 && !D_wait && cacheable)? 1'b0 : 1'b1;
        end
        Write:
        begin
            if(w_hit && !D_wait && cacheable) //last cycle of write hit
 	    begin
            case (core_type)
                `CACHE_BYTE:
                    case (offset[3:2])
                        2'b00: begin
                            DA_write[15:4] = 12'b1111_1111_1111;
                            case (offset[1:0])
                                2'b00:   DA_write[3:0] = 4'b1110;
                                2'b01:   DA_write[3:0] = 4'b1101;
                                2'b10:   DA_write[3:0] = 4'b1011;
                                2'b11:   DA_write[3:0] = 4'b0111;
                            endcase
                        end
                        2'b01: begin
                            DA_write[15:8] = 8'b1111_1111;
                            DA_write[3:0] = 4'b1111;
                            case (offset[1:0])
                                2'b00:   DA_write[7:4] = 4'b1110;
                                2'b01:   DA_write[7:4] = 4'b1101;
                                2'b10:   DA_write[7:4] = 4'b1011;
                                2'b11:   DA_write[7:4] = 4'b0111;
                            endcase
                        end
                        2'b10: begin
                            DA_write[15:12] = 4'b1111;
                            DA_write[7:0] = 8'b1111_1111;
                            case (offset[1:0])
                                2'b00:   DA_write[11:8] = 4'b1110;
                                2'b01:   DA_write[11:8] = 4'b1101;
                                2'b10:   DA_write[11:8] = 4'b1011;
                                default: DA_write[11:8] = 4'b0111;
                            endcase
                        end
                        2'b11: begin
                            DA_write[11:0] = 12'b1111_1111_1111;
                            case (offset[1:0])
                                2'b00:   DA_write[15:12] = 4'b1110;
                                2'b01:   DA_write[15:12] = 4'b1101;
                                2'b10:   DA_write[15:12] = 4'b1011;
                                2'b11:   DA_write[15:12] = 4'b0111;
                            endcase
                        end
                    endcase
                `CACHE_HWORD:
                    case (offset[3:2])
                        2'b00: begin
                            DA_write[15:4] = 12'b1111_1111_1111;
                            DA_write[3:2] = (offset[1:0] == 2'b00)? 2'b11 : 2'b00;
                            DA_write[1:0] = (offset[1:0] == 2'b00)? 2'b00 : 2'b11;
                        end
                        2'b01: begin
                            DA_write[15:8] = 8'b1111_1111;
                            DA_write[3:0] = 4'b1111;
                            DA_write[7:6] = (offset[1:0] == 2'b00)? 2'b11 : 2'b00;
                            DA_write[5:4] = (offset[1:0] == 2'b00)? 2'b00 : 2'b11;
                        end
                        2'b10: begin
                            DA_write[15:12] = 4'b1111;
                            DA_write[7:0] = 8'b1111_1111;
                            DA_write[11:10] = (offset[1:0] == 2'b00)? 2'b11 : 2'b00;
                            DA_write[9:8] = (offset[1:0] == 2'b00)? 2'b00 : 2'b11;
                        end
                        2'b11: begin
                            DA_write[11:0] = 12'b1111_1111_1111;
                            DA_write[15:14] = (offset[1:0] == 2'b00)? 2'b11 : 2'b00;
                            DA_write[13:12] = (offset[1:0] == 2'b00)? 2'b00 : 2'b11;
                        end
                    endcase
                `CACHE_WORD:
                    case (offset[3:2])
                        2'b00: begin
                            DA_write[15:4] = 12'b1111_1111_1111;
                            DA_write[3:0] = 4'b0000;
                        end
                        2'b01: begin
                            DA_write[15:8] = 8'b1111_1111;
                            DA_write[3:0] = 4'b1111;
                            DA_write[7:4] = 4'b0000;
                        end
                        2'b10: begin
                            DA_write[15:12] = 4'b1111;
                            DA_write[7:0] = 8'b1111_1111;
                            DA_write[11:8] = 4'b0000;
                        end
                        2'b11: begin
                            DA_write[11:0] = 12'b1111_1111_1111;
                            DA_write[15:12] = 4'b0000;
                        end
                    endcase
                default: DA_write = 16'b1111_1111_1111_1111;
            endcase
		TA_write = 1'b1;
	    end
            else
            begin 
                DA_write = 16'b1111_1111_1111_1111;
                TA_write = 1'b1;
            end
        end
        default: 
        begin
            DA_write = 16'b1111_1111_1111_1111;
            TA_write = 1'b1;
        end
    endcase
end

//calculate the cache hit rate
integer D_read_hit_count;//32bit
integer D_read_miss_count; //32bit
integer D_write_hit_count;//32bit
integer D_write_miss_count; //32bit

//don't change
always_ff @(posedge clk) begin
    if(rst)             
        D_read_hit_count <= 32'd0;
    else if(r_hit && cache_cs == hit_or_miss) 
        D_read_hit_count <= D_read_hit_count + 32'd1;
    else                
        D_read_hit_count <= D_read_hit_count;
end

always_ff @(posedge clk) begin
    if(rst)             
        D_read_miss_count <= 32'd0;
    else if(r_miss && cache_cs == hit_or_miss)  
        D_read_miss_count <= D_read_miss_count + 32'd1;
    else                
        D_read_miss_count <= D_read_miss_count;
end

always_ff @(posedge clk) begin
    if(rst)             
        D_write_hit_count <= 32'd0;
    else if(w_hit  && cache_cs == hit_or_miss)   
        D_write_hit_count <= D_write_hit_count + 32'd1;
    else
        D_write_hit_count <= D_write_hit_count;
end

always_ff @(posedge clk) begin
    if(rst)             
        D_write_miss_count <= 32'd0;
    else if(w_miss  && cache_cs == hit_or_miss)  
        D_write_miss_count <= D_write_miss_count + 32'd1;
    else                
        D_write_miss_count <= D_write_miss_count;
end


data_array_wrapper DA(
    .A      (index),
    .DO     (DA_out),
    .DI     (DA_in),
    .CK     (clk),
    .WEB    (DA_write),
    .OE     (DA_read),
    .CS     (1'b1)
);
   
tag_array_wrapper  TA(
    .A      (index),
    .DO     (TA_out),
    .DI     (TA_in),
    .CK     (clk),
    .WEB    (TA_write),
    .OE     (TA_read),
    .CS     (1'b1)
);

endmodule
