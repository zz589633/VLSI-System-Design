//================================================
// Auther:      Chen Yun-Ru (May)
// Filename:    L1C_inst.sv
// Description: L1 Cache for instruction
// Version:     0.1
//================================================
`include "def.svh"
`include "data_array_wrapper.sv"
`include "tag_array_wrapper.sv"
module L1C_inst
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
           input [`DATA_BITS-1:0]             I_out,
           input                              I_wait,
           // CPU wrapper to core 
           output logic[`DATA_BITS-1:0]       core_out,
           output logic                       core_wait,
           // CPU wrapper to Mem
           output logic                       I_req,
           output logic[`DATA_BITS-1:0]       I_addr,
           output logic                       I_write,
           output logic[`DATA_BITS-1:0]       I_in,
           output logic[`CACHE_TYPE_BITS-1:0] I_type
       );

//state name
parameter Idle = 2'd0;
parameter hit_or_miss = 2'd1;
parameter Readmiss = 2'd2;

reg [31:0]core_addr_reg;
wire [`CACHE_INDEX_BITS-1:0] index;
wire [`CACHE_INDEX_BITS-1:0] index_array;
wire [`CACHE_DATA_BITS-1:0] DA_out;
wire [`CACHE_DATA_BITS-1:0] DA_in;
wire [`CACHE_WRITE_BITS-1:0] DA_write;
wire DA_read = 1'b1;
wire [`CACHE_TAG_BITS-1:0] TA_out;
wire [`CACHE_TAG_BITS-1:0] TA_in;
wire TA_write;
wire TA_read = 1'b1;
reg [`CACHE_LINES-1:0] valid;
wire [3:0] offset;
reg  r_hit, r_miss;
reg  [1:0] cache_cs,cache_ns;
reg  [95:0] DA_buffer;
logic [1:0] Readcnt;

//output to bus
assign I_req = r_miss;
assign I_addr = {core_addr_reg[31:4],4'd0};
assign I_write = 1'd0;
assign I_in = 32'd0;
assign I_type = 3'b010;

assign index = core_addr_reg[9:4];
assign TA_in = core_addr_reg[31:10];
assign offset = core_addr_reg[3:0];

assign index_array  = (core_wait) ? core_addr_reg[9:4] : core_addr[9:4];

always@(posedge clk or posedge rst)
begin
    if(rst)
        cache_cs <= hit_or_miss;
    else
        cache_cs <= cache_ns;
end

always@(*)
begin
    case(cache_cs)
        hit_or_miss:
            cache_ns = (r_hit)? hit_or_miss : (r_miss)? Readmiss : hit_or_miss;
        Readmiss:
            cache_ns = (Readcnt==2'd3 &&!I_wait)? hit_or_miss : Readmiss;
        default:
            cache_ns = 2'd0;
    endcase
end

//dead lock
always@(posedge clk or posedge rst)
if(rst)
    core_addr_reg <= 32'd0;
else if(r_hit)
    core_addr_reg <= core_addr;
else
    core_addr_reg <= core_addr_reg;


always@(*)
begin
    if(cache_cs != Idle)
    begin
        if ((TA_in==TA_out) && valid[index])
        begin
            r_hit =  1'b1;
            r_miss = 1'b0;
        end
        else
        begin
            r_hit = 1'b0;
            r_miss = 1'b1;
        end
    end
    else
    begin
        r_hit = 1'b0;
        r_miss = 1'b0;
    end
end

always@(posedge clk or posedge rst)
begin
    if (rst)
        valid <= 64'd0;
    else if(Readcnt == 2'd3 && cache_cs==Readmiss && ~I_wait)
        valid[index] <= 1'b1;
    else
        valid[index] <= valid[index];
end

always@(*)
begin
    case(cache_cs)
        Idle:
            core_wait = 1'd1;
        hit_or_miss:
            core_wait = (r_hit)? 1'd0 : 1'd1;
        Readmiss:
            core_wait = 1'd1;
        default:
            core_wait = 1'd1;
    endcase
end

always@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        DA_buffer <= 96'd0;
    end
    else if(cache_cs==Readmiss && ~I_wait)
    begin
        DA_buffer[95:64] <= I_out;
        DA_buffer[63:32] <= DA_buffer[95:64];
        DA_buffer[31:0] <= DA_buffer[63:32];
    end
    else
    begin
        DA_buffer <= DA_buffer;
    end
end

always@(*)
begin
    case({r_hit,offset[3:2]})
        3'b100:
            core_out = DA_out[31:0];
        3'b101:
            core_out = DA_out[63:32];
        3'b110:
            core_out = DA_out[95:64];
        3'b111:
            core_out = DA_out[127:96];
        default:
            core_out = 32'd0;
    endcase
end 

always@(posedge clk or posedge rst) 
begin
    if(rst) 
        Readcnt <= 2'd0;
    else if (Readcnt == 2'd3 && cache_cs == Readmiss && !I_wait)
        Readcnt <= 2'd0;
    else if(cache_cs == Readmiss && !I_wait)    
        Readcnt <= Readcnt + 2'd1;
    else 
        Readcnt <= Readcnt;
end


assign DA_write = (Readcnt == 2'd3 && cache_cs == Readmiss && ~I_wait)? 16'd0 : 16'b1111_1111_1111_1111;
assign TA_write = (Readcnt == 2'd3 && cache_cs == Readmiss && ~I_wait)? 1'd0 : 1'd1;
assign DA_in = {I_out,DA_buffer};

//calculate the cache hit rate
integer I_read_hit_count;//32bit
integer I_read_miss_count; //32bit

always_ff @(posedge clk or posedge rst) begin
    if(rst)             
        I_read_hit_count <= 32'd0;
    else if(r_hit && cache_cs == hit_or_miss)   
        I_read_hit_count <= I_read_hit_count + 32'd1;
    else                
        I_read_hit_count <= I_read_hit_count;
end

always_ff @(posedge clk or posedge rst) begin
    if(rst)             
        I_read_miss_count <= 32'd0;
    else if(r_miss && cache_cs == hit_or_miss)  
        I_read_miss_count <= I_read_miss_count + 32'd1;
    else                
        I_read_miss_count <= I_read_miss_count;
end


data_array_wrapper DA(
                       .A(index_array),
                       .DO(DA_out),
                       .DI(DA_in),
                       .CK(clk),
                       .WEB(DA_write),
                       .OE(DA_read),
                       .CS(1'b1)
                   );

tag_array_wrapper  TA(
                       .A(index_array),
                       .DO(TA_out),
                       .DI(TA_in),
                       .CK(clk),
                       .WEB(TA_write),
                       .OE(TA_read),
                       .CS(1'b1)
                   );

endmodule

