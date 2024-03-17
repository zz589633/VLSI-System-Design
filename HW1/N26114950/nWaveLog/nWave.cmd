wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/N26114950/N26114950_929/build/top_syn.fsdb}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 7233000
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 65119.702448
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 1077685.216573
wvZoom -win $_nWave1 0.000000 75092.943528
wvSelectGroup -win $_nWave1 {G1}
wvRenameGroup -win $_nWave1 {G1} {IM}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {DM}
wvSelectGroup -win $_nWave1 {DM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectGroup -win $_nWave1 {G3}
wvSetCursor -win $_nWave1 28236.455225 -snap {("G3" 0)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
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
wvZoom -win $_nWave1 0.000000 522791.977401
wvZoom -win $_nWave1 31505.354570 177873.981012
wvZoom -win $_nWave1 43082.534063 60540.185679
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 70663.488775 85129.339454
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 101615.687169 130456.579673
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 301552.985276 397435.826896
wvZoom -win $_nWave1 358432.637084 376790.619943
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
wvZoom -win $_nWave1 4283225.499058 6828396.967985
wvZoom -win $_nWave1 6556784.193523 6825201.523579
wvZoom -win $_nWave1 6633787.784128 6762014.769799
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 701641.864407 1348252.994350
wvZoom -win $_nWave1 769022.559680 880241.297662
wvZoom -win $_nWave1 785708.861235 800649.733758
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvOpenFile -win $_nWave1 {/home/N26114950/N26114950_929/build/top_4.fsdb}
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/home/N26114950/N26114950_929/build/top_syn.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/home/N26114950/N26114950_929/build/top_4.fsdb}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 2 )} {( "DM" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectGroup -win $_nWave1 {IM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSetPosition -win $_nWave1 {("IM" 2)}
wvSelectGroup -win $_nWave1 {DM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 4)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G3}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvSetPosition -win $_nWave1 {("DM" 7)}
wvSetPosition -win $_nWave1 {("DM" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvCollapseGroup -win $_nWave1 "G3"
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("DM" 7)}
wvSetPosition -win $_nWave1 {("DM" 7)}
wvSetPosition -win $_nWave1 {("DM" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvCollapseGroup -win $_nWave1 "G3"
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("DM" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 5 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("DM" 6)}
wvSetPosition -win $_nWave1 {("DM" 7)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {alu}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {alu}
wvRenameGroup -win $_nWave1 {alu} {ALU}
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "ALU" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvSetPosition -win $_nWave1 {("ALU" 8)}
wvSetPosition -win $_nWave1 {("ALU" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "ALU" 7 8 )} 
wvSetPosition -win $_nWave1 {("ALU" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("ALU" 7)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectGroup -win $_nWave1 {G5}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding"
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 7 )} 
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {Forwarding}
wvSelectGroup -win $_nWave1 {G6}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSetCursor -win $_nWave1 1875630.866290 -snap {("G6" 0)}
wvRenameGroup -win $_nWave1 {G4} {Branch_control}
wvSelectGroup -win $_nWave1 {G6}
wvZoom -win $_nWave1 421902.297552 1288636.365348
wvZoom -win $_nWave1 456724.005235 516573.815315
wvZoom -win $_nWave1 461908.734545 468671.424949
wvZoomOut -win $_nWave1
wvSetOptions -win $_nWave1 -leadingZeros on
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34777.124792 360812.669719
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectGroup -win $_nWave1 {IM}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1419574.726686 2241519.954825
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
wvZoom -win $_nWave1 5081171.148776 6516556.139360
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
wvZoom -win $_nWave1 5924909.531968 6843988.433660
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
wvZoom -win $_nWave1 6397322.881356 7176924.952919
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
wvZoom -win $_nWave1 6138618.550780 6886410.117226
wvZoom -win $_nWave1 6551711.192633 6643718.190137
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6604385.631882
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 6665574.261953 6775412.771060
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6720859.817247
wvSetCursor -win $_nWave1 6749899.709011
wvSetCursor -win $_nWave1 6763178.757268
wvSetCursor -win $_nWave1 6757257.613534
wvSetCursor -win $_nWave1 6756094.070005
wvSetCursor -win $_nWave1 6756050.975800
wvSetCursor -win $_nWave1 6755964.787391
wvSetCursor -win $_nWave1 6760155.698804
wvSetCursor -win $_nWave1 6760155.698804
wvSetCursor -win $_nWave1 6760181.555327
wvSetCursor -win $_nWave1 6761422.668425
wvSetCursor -win $_nWave1 6762612.068476
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "Branch_control" 5 )} 
wvSetCursor -win $_nWave1 6761396.811902
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("Forwarding" 2)}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSetCursor -win $_nWave1 6761439.906106
wvSetCursor -win $_nWave1 6761439.906106
wvSetCursor -win $_nWave1 6761439.906106
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_WB_stage"
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_WB_stage/WB_stage_Writeback_data_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Forwarding" 3 )} 
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_hd_stall_i} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_WB_stage/WB_stage_Writeback_data_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Forwarding" 3 )} 
wvSetPosition -win $_nWave1 {("Forwarding" 3)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvRenameGroup -win $_nWave1 {G6} {WB}
wvSelectGroup -win $_nWave1 {G7}
wvSelectGroup -win $_nWave1 {WB}
wvSelectSignal -win $_nWave1 {( "WB" 1 )} 
wvSetPosition -win $_nWave1 {("WB" 1)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("Branch_control" 4)}
wvSetPosition -win $_nWave1 {("Branch_control" 3)}
wvSetPosition -win $_nWave1 {("Branch_control" 4)}
wvSetPosition -win $_nWave1 {("Branch_control" 5)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("Forwarding" 1)}
wvSetPosition -win $_nWave1 {("Forwarding" 2)}
wvSetPosition -win $_nWave1 {("WB" 0)}
wvSetPosition -win $_nWave1 {("Forwarding" 2)}
wvSetPosition -win $_nWave1 {("Forwarding" 1)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("Branch_control" 5)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("Forwarding" 1)}
wvSetPosition -win $_nWave1 {("Forwarding" 2)}
wvSetPosition -win $_nWave1 {("WB" 0)}
wvSetPosition -win $_nWave1 {("WB" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("WB" 1)}
wvSelectGroup -win $_nWave1 {G7}
wvSelectSignal -win $_nWave1 {( "WB" 1 )} 
wvSelectGroup -win $_nWave1 {G7}
wvSelectSignal -win $_nWave1 {( "Branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "Branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectGroup -win $_nWave1 {Branch_control}
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectGroup -win $_nWave1 {DM}
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSetCursor -win $_nWave1 6759983.321985 -snap {("G7" 0)}
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
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
wvZoom -win $_nWave1 5983682.452879 6928031.618434
wvZoom -win $_nWave1 6627476.045969 6799984.273952
wvZoom -win $_nWave1 6753960.421540 6787855.635198
wvZoom -win $_nWave1 6755364.743009 6759577.707418
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1440 877
wvResizeWindow -win $_nWave1 0 23 1440 837
wvResizeWindow -win $_nWave1 0 23 1920 1017
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       wvSetCursor -win $_nWave1 7105305.060219 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 4530863.804143 7094378.851224
wvZoom -win $_nWave1 6428154.601700 7063803.342188
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6661983.956330 6755755.113904
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/hd_stall} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardA_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardB_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/hd_stall} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardA_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardB_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardC_o\[1:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding/ForwardD_o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6803611.373732 6947936.152081
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6739990.001948 7042954.257314
wvZoom -win $_nWave1 6798947.264448 6856383.049206
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6612859.924670 6943044.331450
wvZoom -win $_nWave1 6821168.354559 6869670.018832
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6839718.033754
wvSetCursor -win $_nWave1 6839565.800031
wvSetCursor -win $_nWave1 6839870.267478
wvSetCursor -win $_nWave1 6840083.394690
wvSetCursor -win $_nWave1 6840707.552956
wvSetCursor -win $_nWave1 6840966.350286
wvOpenFile -win $_nWave1 {/home/N26114950/N26114950_929/build/top_0.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 2 )} {( "DM" 1 2 3 4 )} {( "ALU" 1 2 3 \
           4 5 )} {( "Forwarding" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 2 )} {( "DM" 1 2 3 4 )} {( "ALU" 1 2 3 \
           4 5 )} {( "Forwarding" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSelectGroup -win $_nWave1 {IM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSetPosition -win $_nWave1 {("DM" 0)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSetPosition -win $_nWave1 {("IM" 2)}
wvSelectGroup -win $_nWave1 {DM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 )} 
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
{/LOGIC_LOW} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvCollapseGroup -win $_nWave1 "G5"
wvSelectSignal -win $_nWave1 {( "IM" 6 7 )} 
wvSetPosition -win $_nWave1 {("IM" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 5 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 0)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSelectGroup -win $_nWave1 {DM}
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {branch_control}
wvSelectGroup -win $_nWave1 {branch_control}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("DM" 8)}
wvSetPosition -win $_nWave1 {("DM" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
}
wvCollapseGroup -win $_nWave1 "branch_control"
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("DM" 8)}
wvSetPosition -win $_nWave1 {("DM" 8)}
wvSetPosition -win $_nWave1 {("DM" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
}
wvCollapseGroup -win $_nWave1 "branch_control"
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("DM" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 7 )} 
wvSelectSignal -win $_nWave1 {( "DM" 6 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("DM" 7)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectGroup -win $_nWave1 {Forwarding}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectSignal -win $_nWave1 {( "branch_control" 2 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_ALU_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_Forwarding"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_hazard_detect"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvSetCursor -win $_nWave1 7057200.711225 -snap {("G6" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 6427650.271186 7165482.090395
wvZoom -win $_nWave1 7046910.247509 7114070.080394
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7091257.493656 7227995.879402
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7391565.185260 7425213.300271
wvZoom -win $_nWave1 7415433.590760 7420545.231584
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7415672.647409
wvSetCursor -win $_nWave1 7417084.525602
wvSetCursor -win $_nWave1 7417058.855090
wvSetCursor -win $_nWave1 7417097.360859
wvSetCursor -win $_nWave1 7417212.878165
wvSetCursor -win $_nWave1 7416622.456375 -snap {("G6" 0)}
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 7 )} 
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 7 )} 
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {ALU} {Forwarding}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU} {Forwarding}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {G7}
wvSelectGroup -win $_nWave1 {G6}
wvRenameGroup -win $_nWave1 {G6} {ID}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvSetCursor -win $_nWave1 7414517.474341 -snap {("Forwarding" 0)}
wvSetCursor -win $_nWave1 7418316.710208
wvSetCursor -win $_nWave1 7418753.108922
wvSetCursor -win $_nWave1 7418932.802510
wvSetCursor -win $_nWave1 7417905.982006
wvSetCursor -win $_nWave1 7417880.311493
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 7419023.291068
wvSetCursor -win $_nWave1 7418984.785299
wvSelectGroup -win $_nWave1 {Forwarding}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6616831.197174
wvZoom -win $_nWave1 6595473.330680 6774550.826666
wvZoom -win $_nWave1 6607164.516858 6637179.389066
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 6309233.498752 6699935.564111
wvZoom -win $_nWave1 6599378.221488 6670013.623135
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 5193200.881356 7061428.885122
wvZoom -win $_nWave1 6201785.993244 6873785.143375
wvZoom -win $_nWave1 6576384.389549 6761574.362498
wvZoom -win $_nWave1 6605563.726153 6653343.436688
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
wvSetCursor -win $_nWave1 6627009.107842
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectGroup -win $_nWave1 {ALU}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"Forwarding" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("Forwarding" 4)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 4 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 3 4 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 )} 
wvSelectSignal -win $_nWave1 {( "Forwarding" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("Forwarding" 1)}
wvSetPosition -win $_nWave1 {("Forwarding" 0)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSelectGroup -win $_nWave1 {ALU}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 6627009.107842
wvSetCursor -win $_nWave1 6623552.352262
wvSetCursor -win $_nWave1 6623447.374869
wvSetCursor -win $_nWave1 6623447.374869
wvSetCursor -win $_nWave1 6622877.497594
wvSetCursor -win $_nWave1 6622367.607400
wvSetCursor -win $_nWave1 6622202.642925
wvSetCursor -win $_nWave1 6620952.662112
wvSetCursor -win $_nWave1 6625361.712613
wvSetCursor -win $_nWave1 6625706.638333
wvSetCursor -win $_nWave1 6624731.848256
wvSetCursor -win $_nWave1 6624521.893470
wvSetCursor -win $_nWave1 6624506.896700
wvSetCursor -win $_nWave1 6623292.158296
wvSetCursor -win $_nWave1 6623577.096934
wvSetCursor -win $_nWave1 6624356.928996
wvSetCursor -win $_nWave1 6623757.058179
wvSetCursor -win $_nWave1 6623232.171215
wvSetCursor -win $_nWave1 6623367.142148
wvSetCursor -win $_nWave1 6623472.119541
wvSetCursor -win $_nWave1 6628376.063466
wvSetCursor -win $_nWave1 6628241.092532
wvSetCursor -win $_nWave1 6628226.095762
wvSetCursor -win $_nWave1 6629455.830936
wvSetCursor -win $_nWave1 6629395.843854
wvSetCursor -win $_nWave1 6628151.111910
wvSetCursor -win $_nWave1 6628181.105451
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvSetCursor -win $_nWave1 6631075.482140
wvSetCursor -win $_nWave1 6630880.524125
wvSetCursor -win $_nWave1 6630550.595176
wvSetCursor -win $_nWave1 6630760.549962
wvSetCursor -win $_nWave1 6630655.572569
wvSetCursor -win $_nWave1 6630610.582258
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSelectGroup -win $_nWave1 {G8}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 5041850.764595 6862781.856874
wvZoom -win $_nWave1 6382687.030284 6839920.198465
wvZoom -win $_nWave1 6628094.662923 6726831.768921
wvZoom -win $_nWave1 6629830.155056 6645201.656806
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6797682.997907
wvSetCursor -win $_nWave1 6797625.101479
wvSetCursor -win $_nWave1 6797403.165170
wvSetCursor -win $_nWave1 6796139.093149
wvSetCursor -win $_nWave1 6796148.742554
wvSetCursor -win $_nWave1 6797490.009813
wvSetCursor -win $_nWave1 6797461.061598
wvSetCursor -win $_nWave1 6797316.320527
wvSetMarker -win $_nWave1 -keepViewRange -name "and" 6797316.321000 ID_GREEN5 \
           long_dashed
wvSetCursor -win $_nWave1 6797325.969932
wvSetCursor -win $_nWave1 6797354.918146
wvSetCursor -win $_nWave1 6796361.029458
wvSetCursor -win $_nWave1 6796235.587197
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6615806.192677 6702882.421045
wvSetCursor -win $_nWave1 6623841.475521
wvZoom -win $_nWave1 6620015.150357 6638928.129023
wvSetCursor -win $_nWave1 6628045.152315
wvSetCursor -win $_nWave1 6623319.875787
wvSetCursor -win $_nWave1 6623391.111112
wvSetCursor -win $_nWave1 6624542.748859
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetCursor -win $_nWave1 6624665.159197
wvSetCursor -win $_nWave1 6624665.159197
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6730590.604446 6833617.237600
wvZoom -win $_nWave1 6791965.238653 6803481.602600
wvSetCursor -win $_nWave1 6797399.667423
wvSetCursor -win $_nWave1 6797345.708556
wvSetCursor -win $_nWave1 6797361.125375
wvSetCursor -win $_nWave1 6797684.878578
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 36)}
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 6798601.408480
wvSetCursor -win $_nWave1 6798539.741203
wvSetCursor -win $_nWave1 6798609.116889
wvSelectUserMarker -win $_nWave1 -name "and"
wvSetMarker -win $_nWave1 -keepViewRange -name "and" 6796180.967864
wvZoomAll -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6293794.313253 6994785.827309
wvZoom -win $_nWave1 6572032.578203 6899068.110530
wvZoom -win $_nWave1 6746714.207920 6811289.497101
wvZoom -win $_nWave1 6796291.086562 6798711.579329
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSetCursor -win $_nWave1 6799806.147543
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6733733.370845 6741833.533216
wvSetCursor -win $_nWave1 6734999.603124
wvSetCursor -win $_nWave1 6736166.523067
wvSetCursor -win $_nWave1 6736169.626577
wvSetCursor -win $_nWave1 6736225.489766
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSelectSignal -win $_nWave1 {( "ALU" 4 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetCursor -win $_nWave1 6737424.477643
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6768584.852321 6887558.825228
wvZoom -win $_nWave1 6810184.780109 6836582.983738
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6871896.387888
wvSetCursor -win $_nWave1 6871795.400116
wvUnselectUserMarker -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("ID" 1)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 6871926.684220
wvSelectSignal -win $_nWave1 {( "branch_control" 2 )} 
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6873115.815236
wvSetCursor -win $_nWave1 6873085.518905
wvZoomOut -win $_nWave1
wvSetMarker -win $_nWave1 -keepViewRange -name "addi" 6873085.519000 ID_GREEN5 \
           long_dashed
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6970221.617385
wvSetCursor -win $_nWave1 6971473.865759
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetRadix -win $_nWave1 -Unsigned
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G7}
wvSetCursor -win $_nWave1 6970270.975157
wvSetCursor -win $_nWave1 6970286.123323
wvSetCursor -win $_nWave1 6971450.007397
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetMarker -win $_nWave1 -keepViewRange -name "ori" 6971450.007000 ID_GREEN5 \
           long_dashed
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6853133.995943 6870907.843834
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6860579.429546 6873036.081932
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6831029.428994
wvSetCursor -win $_nWave1 6830962.713947
wvSetCursor -win $_nWave1 6830962.713947
wvSetCursor -win $_nWave1 6831029.428994
wvSetCursor -win $_nWave1 6832077.808307
wvSetCursor -win $_nWave1 6832230.299844
wvSetCursor -win $_nWave1 6832182.646239
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6817412.411322
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 6818353.093488
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectSignal -win $_nWave1 {( "branch_control" 2 )} 
wvSetCursor -win $_nWave1 6819782.701643
wvSetCursor -win $_nWave1 6819963.785342
wvSetCursor -win $_nWave1 6819172.735497
wvUnselectUserMarker -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1440 877
wvResizeWindow -win $_nWave1 0 23 1440 837
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetMarker -win $_nWave1 -keepViewRange -name "lw" 6971450.007000 ID_GREEN5 \
           long_dashed
wvDeleteMarker -win $_nWave1 "lw"
wvSetMarker -win $_nWave1 -keepViewRange -name "lw" 6819172.735000 ID_GREEN5 \
           long_dashed
wvSetCursor -win $_nWave1 6814119.501951 -snap {("G8" 0)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6869825.163678 6951751.412805
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 6746308.529722 7262826.628485
wvZoom -win $_nWave1 7000196.234326 7168405.581317
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 7082208.255992 -snap {("G8" 0)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectUserMarker -win $_nWave1 -next
wvSelectUserMarker -win $_nWave1 -previous
wvSelectUserMarker -win $_nWave1 -previous
wvSelectUserMarker -win $_nWave1 -next
wvSetCursor -win $_nWave1 6970460.623992 -snap {("branch_control" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7112052.624072 7143029.565427
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7132113.182234 7145871.390446
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 7135115.396524
wvSetMarker -win $_nWave1 -keepViewRange -name "sw" 7135115.397000 ID_GREEN5 \
           long_dashed
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSetPosition -win $_nWave1 {("DM" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSetPosition -win $_nWave1 {("DM" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 7133468.742999
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectUserMarker -win $_nWave1 -name "sw"
wvSetMarker -win $_nWave1 -keepViewRange -name "sw" 7135613.514455
wvSelectUserMarker -win $_nWave1 -name "sw"
wvSelectUserMarker -win $_nWave1 -name "sw"
wvSetMarker -win $_nWave1 -keepViewRange -name "sw" 7134863.659505
wvDeleteMarker -win $_nWave1 "sw"
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSetCursor -win $_nWave1 7138133.213387
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 7144236.147757 7147887.615339
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7144200.300579
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7150204.331839
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvZoom -win $_nWave1 6386639.333785 7406869.259309
wvZoom -win $_nWave1 7029031.907066 7223821.913158
wvZoom -win $_nWave1 7127152.262200 7151418.586588
wvZoom -win $_nWave1 7144781.081473 7150367.100628
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7157433.774149
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {branch_control}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 1 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 3 )} 
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetCursor -win $_nWave1 7185076.437659
wvZoom -win $_nWave1 7185923.606440 7186021.938531
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvUnselectUserMarker -win $_nWave1
wvSetCursor -win $_nWave1 7186019.641674
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 7195717.302924
wvSetCursor -win $_nWave1 7315900.555141
wvUnselectUserMarker -win $_nWave1
wvUnselectUserMarker -win $_nWave1
wvUnselectUserMarker -win $_nWave1
wvSetCursor -win $_nWave1 7316792.347979
wvSetCursor -win $_nWave1 7316869.043015
wvSetCursor -win $_nWave1 7316860.521344
wvSetCursor -win $_nWave1 7316050.962628
wvSetCursor -win $_nWave1 7316025.397616
wvSetCursor -win $_nWave1 7316817.912991
wvSetCursor -win $_nWave1 7316715.652942
wvSetCursor -win $_nWave1 7316016.875945
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7399773.820697
wvZoom -win $_nWave1 7396620.802540 7402057.628443
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7398717.863959
wvSetCursor -win $_nWave1 7402102.168451
wvSetCursor -win $_nWave1 7403015.054588
wvSetCursor -win $_nWave1 7403213.828182
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {branch_control}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("ID" 1)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "ALU" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 1 )} 
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_EX_stage/EX_stage_PC_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_EX_stage/EX_stage_PC_i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("DM" 5)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectGroup -win $_nWave1 {Forwarding}
wvSetCursor -win $_nWave1 7407988.443537
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7405674.939759 7411122.808640
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7410364.459390
wvSetCursor -win $_nWave1 7410762.814054
wvSelectGroup -win $_nWave1 {branch_control}
wvSelectGroup -win $_nWave1 {ALU}
wvSelectGroup -win $_nWave1 {ALU}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ID/ALU" 5)}
wvSetPosition -win $_nWave1 {("ID/ALU" 0)}
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 1 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 2 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectGroup -win $_nWave1 {G7}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7426130.820614 7426455.405896
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7426022.369133 7428764.971922
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/u_CPU/u_EX_stage/u_alu"
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/cycle_i\[63:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/instret_i\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/EX_stage_PC_i\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 7 )} 
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"branch_control" \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_taken_o} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_branch_target_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_ra_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_rb_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_ID_stage/u_Branch_control/Bran_c_flush_o} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/cycle_i\[63:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/instret_i\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"ALU" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_a_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_b_i\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_result_o\[31:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/ALU_operation_i\[3:0\]} \
{/top_tb/TOP/u_CPU/u_EX_stage/EX_stage_PC_i\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "ALU"
wvAddSignal -win $_nWave1 -group {"ID" \
{/top_tb/TOP/u_CPU/u_ID_stage/ID_stage_Inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/u_CPU/u_EX_stage/u_alu/shmat\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Forwarding" \
}
wvCollapseGroup -win $_nWave1 "Forwarding"
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "branch_control" 6 7 )} 
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "branch_control" 6 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 6 7 )} 
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("branch_control" 1)}
wvSetPosition -win $_nWave1 {("branch_control" 2)}
wvSetPosition -win $_nWave1 {("branch_control" 3)}
wvSetPosition -win $_nWave1 {("branch_control" 4)}
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvSetPosition -win $_nWave1 {("branch_control" 6)}
wvSetPosition -win $_nWave1 {("branch_control" 7)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSetPosition -win $_nWave1 {("ALU" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 7)}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("ID" 0)}
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 6 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 6 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 4 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSetPosition -win $_nWave1 {("ALU" 5)}
wvSetPosition -win $_nWave1 {("ALU" 4)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 5 6 )} 
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSetPosition -win $_nWave1 {("ALU" 3)}
wvSetPosition -win $_nWave1 {("ALU" 1)}
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("ALU" 0)}
wvSetPosition -win $_nWave1 {("ALU" 2)}
wvSelectSignal -win $_nWave1 {( "ALU" 5 )} 
wvSelectGroup -win $_nWave1 {G8}
wvSelectGroup -win $_nWave1 {Forwarding}
wvSelectGroup -win $_nWave1 {ID}
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectGroup -win $_nWave1 {ALU}
wvSelectSignal -win $_nWave1 {( "branch_control" 4 )} 
wvSelectSignal -win $_nWave1 {( "branch_control" 5 )} 
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvSelectGroup -win $_nWave1 {G7}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSelectSignal -win $_nWave1 {( "ID" 1 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 3 )} 
wvSelectSignal -win $_nWave1 {( "ALU" 2 )} 
wvSelectGroup -win $_nWave1 {G8}
wvSelectGroup -win $_nWave1 {branch_control}
wvSetPosition -win $_nWave1 {("branch_control" 0)}
wvSetPosition -win $_nWave1 {("ALU" 6)}
wvSetPosition -win $_nWave1 {("ID" 1)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("branch_control" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7438041.914055 7439230.313368
wvZoomOut -win $_nWave1
wvUnselectUserMarker -win $_nWave1
wvSetCursor -win $_nWave1 7439303.009290
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7440528.018060
