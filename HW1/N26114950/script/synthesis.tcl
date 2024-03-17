gui_start
remove_design -designs
read_file -format sverilog {/home/user2/Vsd22/Vsd22122/Desktop/VSD_HW1/N26114950_929/src/top.sv}
current_design top
uplevel #0 source /home/user2/Vsd22/Vsd22122/Desktop/N26114950/script/DC.sdc
compile -exact_map
write -hierarchy -format verilog -output /home/user2/Vsd22/Vsd22122/Desktop/N26114950/syn/top_syn.v
write_sdf -version 2.1 -context verilog -load_delay net top_syn.sdf
