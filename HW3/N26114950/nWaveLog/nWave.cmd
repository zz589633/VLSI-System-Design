wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/N26114950/N26114950/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {L1C inst.}
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {L1C data}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectSignal -win $_nWave1 {( "L1C inst." 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 10 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C data}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 12 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 17)}
wvSetPosition -win $_nWave1 {("L1C data" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 0)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSelectGroup -win $_nWave1 {G4}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 721713.157107
wvZoom -win $_nWave1 0.000000 135433.703422
wvZoom -win $_nWave1 0.000000 20348.829504
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 39175.302686
wvGetSignalOpen -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C inst.}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 0)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSetPosition -win $_nWave1 {("L1C inst." 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 6)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 6)}
wvSetPosition -win $_nWave1 {("L1C inst." 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvZoom -win $_nWave1 0.000000 4274.113448
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 6)}
wvSetPosition -win $_nWave1 {("L1C inst." 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_in\[127:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_in\[127:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvZoom -win $_nWave1 4732.434840 14836.822741
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 212872.491248
wvZoom -win $_nWave1 0.000000 32647.526713
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 31555259.335047 35515298.485417
wvZoom -win $_nWave1 32700806.819935 33559967.433606
wvZoom -win $_nWave1 33232693.658693 33429807.814448
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33285167.314868 33303539.238986
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 87896609.596010 92140295.112219
wvZoom -win $_nWave1 89700969.647156 90410014.359341
wvZoom -win $_nWave1 89894586.594742 90000236.025048
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 89455258.851508 89646007.448870
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 89297094.490847 89431712.578262
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 89140823.369417 89188157.908882
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 88829253.501782 88898661.754165
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 88401466.729302 88590478.728309
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 88373421.307997 89018230.322068
wvZoom -win $_nWave1 88632309.715135 88758939.914283
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 85571302.463840 93128550.643392
wvZoom -win $_nWave1 88728008.374251 91592601.200415
wvZoom -win $_nWave1 88765512.395041 89201273.398523
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 88140124.720468 88692161.103930
wvZoom -win $_nWave1 88244750.069944 88387233.276150
wvZoom -win $_nWave1 88306042.720988 88350368.855587
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvZoom -win $_nWave1 29589533.256858 38193169.645885
wvZoom -win $_nWave1 33676796.927947 34561834.337042
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33349046.166720 33920678.807507
wvZoom -win $_nWave1 33440279.306387 33613123.340540
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33754286.485634 35595657.343248
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/L1CI/DA/DO\[127:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/L1CI/DA/DO\[127:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 6)}
wvSetPosition -win $_nWave1 {("L1C inst." 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvZoom -win $_nWave1 34688747.756265 35804590.944295
wvZoom -win $_nWave1 35225103.802377 35403193.488247
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33054496.970223 33829031.663883
wvZoom -win $_nWave1 33254890.921510 33453836.241826
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33291355.961508 33311945.065730
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 11 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 11 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33317365.750707 33329277.651404
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33321836.426653 33333599.799910
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 5 )} 
wvZoom -win $_nWave1 33331302.861931 33334148.366185
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33348705.852409 33354098.828053
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33330368.390328 33336016.893496
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33377921.462253 33384062.976920
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvMoveSelected -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvSelectGroup -win $_nWave1 {G1}
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA/i_data_array"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 12)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CI/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSetPosition -win $_nWave1 {("L1C inst." 9)}
wvSetPosition -win $_nWave1 {("L1C inst." 8)}
wvSetPosition -win $_nWave1 {("L1C inst." 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 6)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 2)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 3 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 3 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 5 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 5 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 5)}
wvSetPosition -win $_nWave1 {("L1C inst." 4)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 12)}
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 10)}
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 12 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 13)}
wvSetPosition -win $_nWave1 {("L1C inst." 20)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 0)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 12 13 )} 
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33266933.559142 33307369.483736
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33354612.460960 33375744.803462
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33367780.352763 33387054.323436
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 9 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 14 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 15769401.051231 21620939.806091
wvZoom -win $_nWave1 17371958.147410 17945350.135952
wvZoom -win $_nWave1 17584819.118031 17619755.690197
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectSignal -win $_nWave1 {( "L1C data" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/TA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CI/DA_out\[127:0\]} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CI/DA_out\[127:0\]} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 11 12 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 0)}
wvSetPosition -win $_nWave1 {("L1C inst." 16)}
wvSetPosition -win $_nWave1 {("L1C inst." 15)}
wvSetPosition -win $_nWave1 {("L1C inst." 14)}
wvSetPosition -win $_nWave1 {("L1C inst." 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 13)}
wvSetPosition -win $_nWave1 {("L1C inst." 14)}
wvZoomIn -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 14)}
wvSetPosition -win $_nWave1 {("L1C inst." 13)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvSetPosition -win $_nWave1 {("L1C data" 1)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 16)}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSelectSignal -win $_nWave1 {( "L1C data" 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 13 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 19 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 7 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 )} 
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 8 )} 
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 2)}
wvSetPosition -win $_nWave1 {("L1C data" 3)}
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 5)}
wvSetPosition -win $_nWave1 {("L1C data" 6)}
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("L1C data" 4)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 11)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 12)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 17569317.111382 17586960.958129
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 16)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 16 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 16)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 16)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "L1C data" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 6 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 9 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 11 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 12 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvSetPosition -win $_nWave1 {("L1C data" 10)}
wvSetPosition -win $_nWave1 {("L1C data" 9)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C data" 8)}
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 8 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 10 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 11 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 11)}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 32155404.512563 37661065.758794
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33531819.824120 33981402.714830
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34088243.035176 38715341.316583
wvZoom -win $_nWave1 34088243.035170 34512587.475550
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33360033.857322 33963498.563994
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33510900.033990 33611919.722638
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33513692.035427 33571562.610833
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 33539951.899535 33554964.806346
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "L1C data" 10 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD/TA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("L1C data" 19)}
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("L1C data" 17)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 13)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 14)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 19 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CD/TA_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvCollapseGroup -win $_nWave1 "L1C inst."
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CD/TA_write} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvCollapseGroup -win $_nWave1 "L1C inst."
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetOptions -win $_nWave1 -leadingZeros on
wvSelectSignal -win $_nWave1 {( "L1C data" 20 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C inst." 2 )} 
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSetPosition -win $_nWave1 {("L1C inst." 0)}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectGroup -win $_nWave1 {G5}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33209680.070352 37602494.894472
wvZoom -win $_nWave1 34283050.024234 35204658.159445
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 33238715.177545 33840770.743261
wvZoom -win $_nWave1 33503059.926557 33571887.886959
wvZoom -win $_nWave1 33523595.907198 33545861.233584
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C inst.}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C data" 18 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34088243.035176 54060907.768844
wvZoom -win $_nWave1 39570689.321987 43873845.103173
wvZoom -win $_nWave1 40695132.038672 41438453.546100
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 44234313.587853 44376254.378216
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 43940089.587719 44082743.648386
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 42196484.201990 42400070.901635
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 42236894.627293 42401605.474745
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 7 )} 
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetOptions -win $_nWave1 -leadingZeros off
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C inst.}
wvZoom -win $_nWave1 42299507.131506 42315742.591801
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 42308709.556396
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C data" 17 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 14 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 16 )} 
wvSelectSignal -win $_nWave1 {( "L1C data" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CI/DA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/L1CD"
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CD/TA_write} \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/L1CI/clk} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C data" \
{/top_tb/TOP/CPU/L1CD/core_wait} \
{/top_tb/TOP/CPU/L1CD/core_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CD/core_req} \
{/top_tb/TOP/CPU/L1CD/core_write} \
{/top_tb/TOP/CPU/L1CD/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_req} \
{/top_tb/TOP/CPU/L1CD/D_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CD/D_wait} \
{/top_tb/TOP/CPU/L1CD/D_write} \
{/top_tb/TOP/CPU/L1CD/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CD/DA_write\[15:0\]} \
{/top_tb/TOP/CPU/L1CD/r_hit} \
{/top_tb/TOP/CPU/L1CD/r_miss} \
{/top_tb/TOP/CPU/L1CD/w_hit} \
{/top_tb/TOP/CPU/L1CD/w_miss} \
{/top_tb/TOP/CPU/L1CD/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"L1C inst." \
{/top_tb/TOP/CPU/L1CD/TA_write} \
{/top_tb/TOP/CPU/L1CI/core_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/core_req} \
{/top_tb/TOP/CPU/L1CI/core_wait} \
{/top_tb/TOP/CPU/L1CI/core_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_addr\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_type\[2:0\]} \
{/top_tb/TOP/CPU/L1CI/I_in\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/I_req} \
{/top_tb/TOP/CPU/L1CI/I_wait} \
{/top_tb/TOP/CPU/L1CI/I_write} \
{/top_tb/TOP/CPU/L1CI/I_out\[31:0\]} \
{/top_tb/TOP/CPU/L1CI/Readcnt\[1:0\]} \
{/top_tb/TOP/CPU/L1CI/DA_buffer\[95:0\]} \
{/top_tb/TOP/CPU/L1CI/r_hit} \
{/top_tb/TOP/CPU/L1CI/r_miss} \
{/top_tb/TOP/CPU/L1CI/cache_cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 18)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 15)}
wvSetPosition -win $_nWave1 {("L1C data" 16)}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {L1C inst.}
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C inst." 1 )} 
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSelectSignal -win $_nWave1 {( "L1C data" 7 )} 
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSelectSignal -win $_nWave1 {( "L1C data" 7 )} 
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C data" 7)}
wvSetPosition -win $_nWave1 {("L1C inst." 1)}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectGroup -win $_nWave1 {L1C data}
wvSelectSignal -win $_nWave1 {( "L1C inst." 6 )} 
