wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/N26114950/N26114950/build/top.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G1}
wvRenameGroup -win $_nWave1 {G1} {IM}
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvSetPosition -win $_nWave1 {("IM" 30)}
wvSetPosition -win $_nWave1 {("IM" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "IM" 19 20 21 22 23 24 25 26 27 28 29 30 )} 
wvSetPosition -win $_nWave1 {("IM" 30)}
wvSelectSignal -win $_nWave1 {( "IM" 19 )} 
wvSelectSignal -win $_nWave1 {( "IM" 19 20 21 22 23 24 25 26 27 28 29 )} 
wvSelectSignal -win $_nWave1 {( "IM" 19 20 21 22 23 24 25 26 27 28 29 30 )} 
wvSetPosition -win $_nWave1 {("IM" 29)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectGroup -win $_nWave1 {G3}
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
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 8 )} 
wvSelectSignal -win $_nWave1 {( "IM" 10 )} 
wvSetPosition -win $_nWave1 {("IM" 10)}
wvSetPosition -win $_nWave1 {("IM" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 8)}
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 5 )} 
wvSelectSignal -win $_nWave1 {( "IM" 5 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 8 )} 
wvSelectSignal -win $_nWave1 {( "IM" 9 )} 
wvSelectSignal -win $_nWave1 {( "IM" 10 )} 
wvSelectSignal -win $_nWave1 {( "IM" 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSelectSignal -win $_nWave1 {( "IM" 11 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 14 )} 
wvSelectSignal -win $_nWave1 {( "IM" 14 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 10 )} 
wvSelectSignal -win $_nWave1 {( "IM" 10 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSetPosition -win $_nWave1 {("IM" 14)}
wvSetPosition -win $_nWave1 {("IM" 13)}
wvSetPosition -win $_nWave1 {("IM" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 12)}
wvSetPosition -win $_nWave1 {("IM" 13)}
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {aster0}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {aster0}
wvRenameGroup -win $_nWave1 {aster0} {Master0}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {Master0}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 4)}
wvSetPosition -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("IM" 2)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSelectGroup -win $_nWave1 {IM}
wvSetPosition -win $_nWave1 {("IM/Master0" 1)}
wvSetPosition -win $_nWave1 {("IM/Master0" 5)}
wvSetPosition -win $_nWave1 {("IM/Master0" 7)}
wvSetPosition -win $_nWave1 {("IM/Master0" 9)}
wvSetPosition -win $_nWave1 {("IM/Master0" 11)}
wvSetPosition -win $_nWave1 {("IM/Master0" 13)}
wvSetPosition -win $_nWave1 {("IM/Master0" 14)}
wvSetPosition -win $_nWave1 {("IM/Master0" 15)}
wvSetPosition -win $_nWave1 {("IM" 17)}
wvSetPosition -win $_nWave1 {("IM/Master0" 15)}
wvMoveSelected -win $_nWave1
wvSelectGroup -win $_nWave1 {IM}
wvSelectGroup -win $_nWave1 {IM/Master0}
wvSetPosition -win $_nWave1 {("IM/Master0" 0)}
wvSetPosition -win $_nWave1 {("IM/Master0" 5)}
wvSetPosition -win $_nWave1 {("IM/Master0" 15)}
wvSetPosition -win $_nWave1 {("IM" 18)}
wvSetPosition -win $_nWave1 {("IM" 20)}
wvSetPosition -win $_nWave1 {("IM" 22)}
wvSetPosition -win $_nWave1 {("IM" 23)}
wvSetPosition -win $_nWave1 {("IM" 29)}
wvSetPosition -win $_nWave1 {("IM" 30)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {Master0}
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSelectGroup -win $_nWave1 {G3}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARADDR_S0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARBURST_S0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARID_S0\[7:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_S0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARREADY_S0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RDATA_S0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RID_S0\[7:0\]} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RLAST_S0} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RREADY_S0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
{/top_tb/TOP/axi/RRESP_S0\[1:0\]} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RVALID_S0} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 31 32 33 34 35 36 37 )} 
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARADDR_S0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARBURST_S0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARID_S0\[7:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_S0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARREADY_S0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RDATA_S0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RID_S0\[7:0\]} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RLAST_S0} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RREADY_S0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
{/top_tb/TOP/axi/RRESP_S0\[1:0\]} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RVALID_S0} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 31 32 33 34 35 36 37 )} 
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master0" 16 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 37 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 31 32 33 34 35 36 37 )} 
wvSetPosition -win $_nWave1 {("Master0" 18)}
wvSetPosition -win $_nWave1 {("Master0" 23)}
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvSetPosition -win $_nWave1 {("Master0" 27)}
wvSetPosition -win $_nWave1 {("Master0" 28)}
wvSetPosition -win $_nWave1 {("Master0" 29)}
wvSetPosition -win $_nWave1 {("Master0" 30)}
wvSetPosition -win $_nWave1 {("Master0" 31)}
wvSetPosition -win $_nWave1 {("Master0" 32)}
wvSetPosition -win $_nWave1 {("Master0" 33)}
wvSetPosition -win $_nWave1 {("Master0" 34)}
wvSetPosition -win $_nWave1 {("Master0" 35)}
wvSetPosition -win $_nWave1 {("Master0" 36)}
wvSetPosition -win $_nWave1 {("Master0" 37)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 22)}
wvSetPosition -win $_nWave1 {("G4" 22)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 12
wvSelectGroup -win $_nWave1 {G3}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 22)}
wvSelectSignal -win $_nWave1 {( "Master0" 10 )} 
wvScrollDown -win $_nWave1 11
wvSelectGroup -win $_nWave1 {G4}
wvRenameGroup -win $_nWave1 {G4} {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 1 )} 
wvSelectGroup -win $_nWave1 {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvZoom -win $_nWave1 27541996.051171 37049120.446979
wvZoom -win $_nWave1 33907431.990657 35372771.755732
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {AXI}
wvSelectGroup -win $_nWave1 {AXI}
wvSelectGroup -win $_nWave1 {AXI}
wvSetPosition -win $_nWave1 {("AXI" 0)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("Master0/AXI" 0)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("IM" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSelectSignal -win $_nWave1 {( "AXI" 18 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 22 )} 
wvScrollDown -win $_nWave1 12
wvScrollUp -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "IM" 5 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvScrollDown -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 9 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 12 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master0" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 12 )} 
wvScrollUp -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "AXI" 20 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 1 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 3 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 7 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 12 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 12 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 8 10 12 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 6 8 10 12 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 6 8 10 12 14 16 18 20 22 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 4 6 8 10 12 14 16 18 20 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 15)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 2 )} 
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 0)}
wvSetPosition -win $_nWave1 {("IM" 14)}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 2 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 9 )} 
wvSelectSignal -win $_nWave1 {( "IM" 11 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "IM" 9 )} 
wvSelectSignal -win $_nWave1 {( "IM" 7 )} 
wvSelectSignal -win $_nWave1 {( "IM" 4 )} 
wvSelectSignal -win $_nWave1 {( "IM" 8 )} 
wvSelectSignal -win $_nWave1 {( "IM" 10 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 9 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 8 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 3 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 1 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 5 )} 
wvSelectGroup -win $_nWave1 {AXI}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSetPosition -win $_nWave1 {("IM" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/axi/ARVALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
{/top_tb/TOP/axi/RVALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSetPosition -win $_nWave1 {("IM" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/axi/ARVALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
{/top_tb/TOP/axi/RVALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSetPosition -win $_nWave1 {("IM" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "AXI" 1 )} 
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSetPosition -win $_nWave1 {("AXI" 1)}
wvSetPosition -win $_nWave1 {("AXI" 3)}
wvSetPosition -win $_nWave1 {("AXI" 4)}
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvSetPosition -win $_nWave1 {("AXI" 4)}
wvSetPosition -win $_nWave1 {("AXI" 3)}
wvSetPosition -win $_nWave1 {("AXI" 4)}
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "AXI" 9 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 8 )} 
wvSelectGroup -win $_nWave1 {IM}
wvSelectSignal -win $_nWave1 {( "Master0" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSelectSignal -win $_nWave1 {( "Master0" 2 )} 
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSelectSignal -win $_nWave1 {( "Master0" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 12 )} 
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSelectSignal -win $_nWave1 {( "Master0" 15 )} 
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvSetPosition -win $_nWave1 {("Master0" 14)}
wvSetPosition -win $_nWave1 {("Master0" 13)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 9)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 13 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 12 )} 
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSelectSignal -win $_nWave1 {( "IM" 11 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 13 )} 
wvSelectSignal -win $_nWave1 {( "IM" 14 )} 
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "Master0" 14 )} 
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 34587695.310959
wvSetCursor -win $_nWave1 34587582.384035
wvSetCursor -win $_nWave1 34604973.130322
wvSetCursor -win $_nWave1 34605283.679363
wvSetCursor -win $_nWave1 34605396.606287
wvSetCursor -win $_nWave1 34605453.069749
wvSetCursor -win $_nWave1 34605481.301480
wvSetCursor -win $_nWave1 34610026.610168
wvSetCursor -win $_nWave1 34609970.146706
wvSetCursor -win $_nWave1 34611466.428449
wvSelectSignal -win $_nWave1 {( "Master0" 15 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "Master0" 15 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 )} 
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 )} 
wvSetPosition -win $_nWave1 {("Master0" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master0" 16 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 24 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 26 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 )} 
wvSetPosition -win $_nWave1 {("Master0" 18)}
wvSetPosition -win $_nWave1 {("Master0" 25)}
wvSetPosition -win $_nWave1 {("Master0" 28)}
wvSetPosition -win $_nWave1 {("Master0" 29)}
wvSetPosition -win $_nWave1 {("Master0" 30)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 15)}
wvSetPosition -win $_nWave1 {("G5" 15)}
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {Master1}
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master1" 9 )} 
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/CPU/stall_wrap} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 16 )} 
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/CPU/stall_wrap} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 16 )} 
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 9)}
wvSetPosition -win $_nWave1 {("Master0" 8)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 4
wvSetPosition -win $_nWave1 {("AXI" 2)}
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSetPosition -win $_nWave1 {("IM" 8)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 4)}
wvSetPosition -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("IM" 2)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 6)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSetPosition -win $_nWave1 {("IM" 10)}
wvSetPosition -win $_nWave1 {("IM" 11)}
wvSetPosition -win $_nWave1 {("IM" 12)}
wvSetPosition -win $_nWave1 {("IM" 13)}
wvSetPosition -win $_nWave1 {("IM" 14)}
wvSetPosition -win $_nWave1 {("IM" 15)}
wvSetPosition -win $_nWave1 {("AXI" 0)}
wvSetPosition -win $_nWave1 {("AXI" 1)}
wvSetPosition -win $_nWave1 {("AXI" 3)}
wvSetPosition -win $_nWave1 {("AXI" 4)}
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvScrollDown -win $_nWave1 12
wvScrollUp -win $_nWave1 12
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 16
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 4
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 18
wvSelectGroup -win $_nWave1 {Master1}
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvSetPosition -win $_nWave1 {("Master0" 13)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("Master0/Master1" 0)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "Master0" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 \
           )} 
wvSelectSignal -win $_nWave1 {( "Master0" 1 )} 
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master1" 5)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvScrollUp -win $_nWave1 14
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvSelectGroup -win $_nWave1 {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 1 )} 
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWBURST_M1\[1:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWID_S1\[7:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWSIZE_M1\[2:0\]} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 )} \
           
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWBURST_M1\[1:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWID_S1\[7:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWSIZE_M1\[2:0\]} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARBURST_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 )} \
           
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 8 17 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 5 8 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("Master1" 12)}
wvSelectSignal -win $_nWave1 {( "Master1" 19 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 20 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 19 20 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 18 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 19 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 19 20 )} 
wvSetPosition -win $_nWave1 {("Master1" 19)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 7)}
wvSetPosition -win $_nWave1 {("Master1" 6)}
wvSetPosition -win $_nWave1 {("Master1" 5)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSelectSignal -win $_nWave1 {( "Master1" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSelectSignal -win $_nWave1 {( "Master1" 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 14
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 13
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvScrollDown -win $_nWave1 8
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 9 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSelectSignal -win $_nWave1 {( "Master1" 13 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "Master1" 13 14 )} 
wvSetPosition -win $_nWave1 {("Master1" 13)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSelectSignal -win $_nWave1 {( "Master1" 8 9 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 10 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 10 11 )} 
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvSetPosition -win $_nWave1 {("Master1" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 8)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 7
wvScrollUp -win $_nWave1 16
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARLEN_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARSIZE_M1\[2:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 24
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoom -win $_nWave1 34325974.263255 36332503.030210
wvZoom -win $_nWave1 35191923.792762 35598920.071632
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 35167082.466240 35262433.012461
wvZoom -win $_nWave1 35201060.651012 35214640.167767
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 35592564.314398 35761881.297665
wvZoom -win $_nWave1 35711253.223129 35740794.965586
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34523081.427414 35091914.781548
wvZoom -win $_nWave1 34737007.658003 34793820.853668
wvZoom -win $_nWave1 34745589.182623 34754310.813770
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34343872.572644 34442294.728327
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 34202307.289528 34334831.326527
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectGroup -win $_nWave1 {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 9 )} 
wvSelectGroup -win $_nWave1 {AXI}
wvScrollDown -win $_nWave1 7
wvSetPosition -win $_nWave1 {("AXI" 0)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 5)}
wvSetPosition -win $_nWave1 {("Master1" 6)}
wvSetPosition -win $_nWave1 {("Master1" 7)}
wvSetPosition -win $_nWave1 {("Master1" 8)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSetPosition -win $_nWave1 {("Master1" 12)}
wvSetPosition -win $_nWave1 {("Master1" 14)}
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("Master1" 16)}
wvSetPosition -win $_nWave1 {("Master1" 17)}
wvSetPosition -win $_nWave1 {("Master1" 18)}
wvSetPosition -win $_nWave1 {("Master1" 19)}
wvSetPosition -win $_nWave1 {("Master1" 20)}
wvSetPosition -win $_nWave1 {("Master1" 21)}
wvSetPosition -win $_nWave1 {("Master1" 22)}
wvSetPosition -win $_nWave1 {("Master1" 23)}
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvSetPosition -win $_nWave1 {("Master1" 25)}
wvSetPosition -win $_nWave1 {("Master1" 26)}
wvSetPosition -win $_nWave1 {("Master1" 27)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 8)}
wvSetPosition -win $_nWave1 {("Master0" 9)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 13)}
wvSetPosition -win $_nWave1 {("Master0" 14)}
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvScrollUp -win $_nWave1 11
wvSelectSignal -win $_nWave1 {( "Master1" 27 )} 
wvScrollUp -win $_nWave1 18
wvScrollDown -win $_nWave1 0
wvSelectGroup -win $_nWave1 {Master0}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master1" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 13 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 14 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 16 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 16 17 18 19 20 21 22 23 24 25 26 27 \
           )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSelectGroup -win $_nWave1 {Master0}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 8
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "Master1" 13 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvScrollDown -win $_nWave1 9
wvScrollUp -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 13
wvSelectGroup -win $_nWave1 {Master1}
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
wvSelectGroup -win $_nWave1 {Master0}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvSetPosition -win $_nWave1 {("IM" 13)}
wvSetPosition -win $_nWave1 {("IM" 9)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSetPosition -win $_nWave1 {("IM" 5)}
wvSetPosition -win $_nWave1 {("IM" 4)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSelectGroup -win $_nWave1 {IM}
wvSetPosition -win $_nWave1 {("IM/Master0" 2)}
wvSetPosition -win $_nWave1 {("IM/Master0" 6)}
wvSetPosition -win $_nWave1 {("IM/Master0" 7)}
wvSetPosition -win $_nWave1 {("IM/Master0" 9)}
wvSetPosition -win $_nWave1 {("IM/Master0" 10)}
wvSetPosition -win $_nWave1 {("IM/Master0" 11)}
wvSetPosition -win $_nWave1 {("IM/Master0" 12)}
wvSetPosition -win $_nWave1 {("IM/Master0" 13)}
wvSetPosition -win $_nWave1 {("IM/Master0" 14)}
wvSetPosition -win $_nWave1 {("IM/Master0" 15)}
wvMoveSelected -win $_nWave1
wvSelectGroup -win $_nWave1 {IM}
wvSelectGroup -win $_nWave1 {IM/Master0}
wvSetPosition -win $_nWave1 {("IM/Master0" 0)}
wvSetPosition -win $_nWave1 {("IM/Master0" 10)}
wvSetPosition -win $_nWave1 {("IM" 17)}
wvSetPosition -win $_nWave1 {("IM" 18)}
wvSetPosition -win $_nWave1 {("IM" 20)}
wvSetPosition -win $_nWave1 {("IM" 21)}
wvSetPosition -win $_nWave1 {("IM" 22)}
wvSetPosition -win $_nWave1 {("IM" 23)}
wvSetPosition -win $_nWave1 {("IM" 24)}
wvSetPosition -win $_nWave1 {("IM" 25)}
wvSetPosition -win $_nWave1 {("IM" 26)}
wvSetPosition -win $_nWave1 {("IM" 27)}
wvSetPosition -win $_nWave1 {("IM" 28)}
wvSetPosition -win $_nWave1 {("IM" 29)}
wvSetPosition -win $_nWave1 {("IM" 30)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSelectGroup -win $_nWave1 {IM}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSetPosition -win $_nWave1 {("IM" 7)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 14)}
wvSetPosition -win $_nWave1 {("Master0" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 14)}
wvSelectSignal -win $_nWave1 {( "Master0" 6 )} 
wvSelectSignal -win $_nWave1 {( "IM" 6 )} 
wvScrollDown -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvScrollDown -win $_nWave1 14
wvSelectSignal -win $_nWave1 {( "Master1" 15 )} 
wvSelectGroup -win $_nWave1 {AXI}
wvScrollDown -win $_nWave1 0
wvSelectGroup -win $_nWave1 {G6}
wvScrollDown -win $_nWave1 0
wvRenameGroup -win $_nWave1 {G6} {DM}
wvSelectSignal -win $_nWave1 {( "Master1" 9 )} 
wvSelectGroup -win $_nWave1 {DM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("IM" 31)}
wvSetPosition -win $_nWave1 {("IM" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RID_M0\[3:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "IM" 15 16 17 18 19 20 21 22 23 24 25 26 27 28 \
           29 30 31 )} 
wvSetPosition -win $_nWave1 {("IM" 31)}
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 16
wvScrollUp -win $_nWave1 9
wvScrollDown -win $_nWave1 33
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 8
wvSelectSignal -win $_nWave1 {( "IM" 15 )} 
wvSelectSignal -win $_nWave1 {( "IM" 15 16 17 18 19 20 21 22 23 24 25 26 27 28 \
           29 30 31 )} 
wvSetPosition -win $_nWave1 {("IM" 30)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSetPosition -win $_nWave1 {("Master1" 15)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 17)}
wvScrollUp -win $_nWave1 14
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 11
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectGroup -win $_nWave1 {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 4 8 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 4 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 17)}
wvSelectGroup -win $_nWave1 {AXI}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 20
wvScrollDown -win $_nWave1 32
wvSetPosition -win $_nWave1 {("DM" 25)}
wvSetPosition -win $_nWave1 {("DM" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WREADY_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 )} 
wvSetPosition -win $_nWave1 {("DM" 25)}
wvSetPosition -win $_nWave1 {("DM" 25)}
wvSetPosition -win $_nWave1 {("DM" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WREADY_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARID_M0\[3:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RRESP_M0\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 )} 
wvSetPosition -win $_nWave1 {("DM" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 18 )} 
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 )} 
wvSelectGroup -win $_nWave1 {AXI} {G7}
wvSelectSignal -win $_nWave1 {( "DM" 25 )} 
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 )} 
wvSetPosition -win $_nWave1 {("DM" 19)}
wvSetPosition -win $_nWave1 {("DM" 20)}
wvSetPosition -win $_nWave1 {("DM" 21)}
wvSetPosition -win $_nWave1 {("DM" 22)}
wvSetPosition -win $_nWave1 {("DM" 23)}
wvSetPosition -win $_nWave1 {("DM" 24)}
wvSetPosition -win $_nWave1 {("DM" 25)}
wvSetPosition -win $_nWave1 {("AXI" 0)}
wvSetPosition -win $_nWave1 {("AXI" 2)}
wvSetPosition -win $_nWave1 {("AXI" 3)}
wvSetPosition -win $_nWave1 {("AXI" 4)}
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 8)}
wvSetPosition -win $_nWave1 {("G7" 8)}
wvSetPosition -win $_nWave1 {("G7" 4)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 17)}
wvSetCursor -win $_nWave1 34266686.028708 -snap {("G7" 0)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "AXI" 6 )} 
wvScrollDown -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 2 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("AXI" 15)}
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 3 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 4 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 5 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 6 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 7 )} 
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 5)}
wvSetPosition -win $_nWave1 {("AXI" 6)}
wvSelectSignal -win $_nWave1 {( "AXI" 6 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 7 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 8 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 9 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 14)}
wvSetPosition -win $_nWave1 {("AXI" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 15)}
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 7)}
wvSetPosition -win $_nWave1 {("AXI" 8)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 9)}
wvSelectSignal -win $_nWave1 {( "AXI" 10 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 11 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 10)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSelectSignal -win $_nWave1 {( "AXI" 12 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 12 13 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 13 )} 
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 11)}
wvSetPosition -win $_nWave1 {("AXI" 12)}
wvSelectSignal -win $_nWave1 {( "AXI" 14 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WREADY_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "AXI" 13 )} 
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/axi/AWADDR_M1\[31:0\]} \
{/top_tb/TOP/axi/AWID_M1\[3:0\]} \
{/top_tb/TOP/axi/AWLEN_M1\[3:0\]} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/WREADY_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/BRESP_M1\[1:0\]} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
}
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/axi/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/axi/ARREADY_M0} \
{/top_tb/TOP/axi/ARVALID_M0} \
{/top_tb/TOP/axi/RDATA_M0\[31:0\]} \
{/top_tb/TOP/axi/RREADY_M0} \
{/top_tb/TOP/axi/RVALID_M0} \
{/top_tb/TOP/axi/RLAST_M0} \
{/top_tb/TOP/axi/AWREADY_M1} \
{/top_tb/TOP/axi/AWVALID_M1} \
{/top_tb/TOP/axi/WDATA_M1\[31:0\]} \
{/top_tb/TOP/axi/WREADY_M1} \
{/top_tb/TOP/axi/WVALID_M1} \
{/top_tb/TOP/axi/BVALID_M1} \
{/top_tb/TOP/axi/WLAST_M1} \
{/top_tb/TOP/axi/BREADY_M1} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "AXI" 13 )} 
wvSetPosition -win $_nWave1 {("AXI" 13)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("AXI" 14)}
wvSelectSignal -win $_nWave1 {( "AXI" 15 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 13 )} 
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 35
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 29
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 31
wvScrollDown -win $_nWave1 39
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 8
wvSelectGroup -win $_nWave1 {AXI}
wvSelectSignal -win $_nWave1 {( "AXI" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 16 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "DM" 17 )} 
wvSelectSignal -win $_nWave1 {( "AXI" 3 )} 
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 8
wvScrollUp -win $_nWave1 19
wvScrollDown -win $_nWave1 15
wvSelectGroup -win $_nWave1 {AXI}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 17)}
wvScrollUp -win $_nWave1 23
wvSelectGroup -win $_nWave1 {IM}
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvScrollDown -win $_nWave1 8
wvSelectSignal -win $_nWave1 {( "Master1" 5 )} 
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 1
wvSelectGroup -win $_nWave1 {Master1}
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "Master1" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 4 5 6 7 8 9 10 11 12 13 14 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 17)}
wvSelectGroup -win $_nWave1 {Master1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvSetPosition -win $_nWave1 {("DM" 26)}
wvSetPosition -win $_nWave1 {("DM" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("DM" 26)}
wvSetPosition -win $_nWave1 {("DM" 26)}
wvSetPosition -win $_nWave1 {("DM" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/AWADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWBURST\[1:0\]} \
{/top_tb/TOP/DM1/AWID\[7:0\]} \
{/top_tb/TOP/DM1/AWID_reg\[31:0\]} \
{/top_tb/TOP/DM1/AWLEN\[3:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWSIZE\[2:0\]} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/BID\[7:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BRESP\[1:0\]} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WSTRB\[3:0\]} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("DM" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DM" 18 )} 
wvSelectSignal -win $_nWave1 {( "DM" 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("DM" 20)}
wvSetPosition -win $_nWave1 {("DM" 10)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("DM" 3)}
wvSetPosition -win $_nWave1 {("DM" 2)}
wvSetPosition -win $_nWave1 {("DM" 1)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 12)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvSelectGroup -win $_nWave1 {DM}
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 12)}
wvSelectGroup -win $_nWave1 {DM}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/axi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/DM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/DM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/DM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/RDATA\[31:0\]} \
{/top_tb/TOP/DM1/RID\[7:0\]} \
{/top_tb/TOP/DM1/RLAST} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/RRESP\[1:0\]} \
{/top_tb/TOP/DM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 13 14 15 16 17 18 19 20 21 22 23 24 \
           )} 
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU/u_Master0/ARADDR_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARBURST_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARID_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARSIZE_M0\[2:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARLEN_M0\[3:0\]} \
{/top_tb/TOP/CPU/u_Master0/ARREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/ARVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/A\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/Inst\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RLAST_M0} \
{/top_tb/TOP/CPU/u_Master0/RVALID_M0} \
{/top_tb/TOP/CPU/u_Master0/RREADY_M0} \
{/top_tb/TOP/CPU/u_Master0/RRESP_M0\[1:0\]} \
{/top_tb/TOP/CPU/u_Master0/RDATA_M0\[31:0\]} \
{/top_tb/TOP/CPU/u_Master0/RID_M0\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/IM1/ARBURST\[1:0\]} \
{/top_tb/TOP/IM1/ARID\[7:0\]} \
{/top_tb/TOP/IM1/ARLEN\[3:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RRESP\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU/stall_wrap} \
{/top_tb/TOP/CPU/u_Master1/MemRead} \
{/top_tb/TOP/CPU/u_Master1/MemWrite} \
{/top_tb/TOP/CPU/u_Master1/ARADDR_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARID_M1\[3:0\]} \
{/top_tb/TOP/CPU/u_Master1/ARREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/ARVALID_M1} \
{/top_tb/TOP/CPU/u_Master1/RDATA_M1\[31:0\]} \
{/top_tb/TOP/CPU/u_Master1/RLAST_M1} \
{/top_tb/TOP/CPU/u_Master1/RREADY_M1} \
{/top_tb/TOP/CPU/u_Master1/RRESP_M1\[1:0\]} \
{/top_tb/TOP/CPU/u_Master1/RVALID_M1} \
{/top_tb/TOP/DM1/ARADDR_reg\[31:0\]} \
{/top_tb/TOP/DM1/ARID_reg\[31:0\]} \
{/top_tb/TOP/DM1/ARLEN_reg\[3:0\]} \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARSIZE\[2:0\]} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/RDATA\[31:0\]} \
{/top_tb/TOP/DM1/RID\[7:0\]} \
{/top_tb/TOP/DM1/RLAST} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/RRESP\[1:0\]} \
{/top_tb/TOP/DM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 13 14 15 16 17 18 19 20 21 22 23 24 \
           )} 
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master1" 13 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 13 14 15 16 17 18 19 20 21 22 23 )} \
           
wvSelectSignal -win $_nWave1 {( "Master1" 23 24 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 13 23 24 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 13 14 15 16 17 18 19 20 21 22 23 24 \
           )} 
wvSetPosition -win $_nWave1 {("Master1" 18)}
wvSetPosition -win $_nWave1 {("Master1" 24)}
wvSetPosition -win $_nWave1 {("DM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 12)}
wvSelectGroup -win $_nWave1 {DM}
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 )} 
wvSelectSignal -win $_nWave1 {( "DM" 9 )} 
wvSelectSignal -win $_nWave1 {( "DM" 11 )} 
wvSelectSignal -win $_nWave1 {( "DM" 12 )} 
wvSelectSignal -win $_nWave1 {( "DM" 9 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 4 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 )} 
wvSelectSignal -win $_nWave1 {( "DM" 6 )} 
wvSetPosition -win $_nWave1 {("DM" 6)}
wvSetPosition -win $_nWave1 {("DM" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 4)}
wvSetPosition -win $_nWave1 {("DM" 5)}
wvSelectSignal -win $_nWave1 {( "DM" 10 )} 
wvSelectSignal -win $_nWave1 {( "DM" 11 )} 
wvSelectSignal -win $_nWave1 {( "DM" 12 )} 
wvSetPosition -win $_nWave1 {("DM" 12)}
wvSetPosition -win $_nWave1 {("DM" 10)}
wvSetPosition -win $_nWave1 {("DM" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DM" 9)}
wvSetPosition -win $_nWave1 {("DM" 10)}
wvSelectSignal -win $_nWave1 {( "DM" 12 )} 
wvSelectSignal -win $_nWave1 {( "DM" 12 )} 
wvSelectSignal -win $_nWave1 {( "DM" 8 )} 
wvSelectSignal -win $_nWave1 {( "DM" 7 )} 
wvSelectSignal -win $_nWave1 {( "DM" 5 )} 
wvSelectSignal -win $_nWave1 {( "DM" 3 )} 
wvSelectSignal -win $_nWave1 {( "DM" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 9 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 10 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvSetPosition -win $_nWave1 {("Master1" 12)}
wvSetPosition -win $_nWave1 {("Master1" 11)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvSetPosition -win $_nWave1 {("Master1" 8)}
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 9)}
wvSetPosition -win $_nWave1 {("Master1" 10)}
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 6 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 36755167.980546 37225783.549667
wvZoom -win $_nWave1 36849755.326738 36970165.598739
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 8
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 35055898.676114 35402727.770311
wvZoom -win $_nWave1 35155328.718528 35203867.685471
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 7 )} 
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
wvZoom -win $_nWave1 36091244.989278 36577711.972408
wvZoom -win $_nWave1 36272995.292462 36370168.721891
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 36682306.416706 37525834.090172
wvZoom -win $_nWave1 36812319.929873 36965215.821364
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master1" 8 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 12 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "Master1" 6 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectGroup -win $_nWave1 {G7}
wvSelectGroup -win $_nWave1 {G7}
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "IM" 12 )} 
wvSelectSignal -win $_nWave1 {( "DM" 2 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 11 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 9 )} 
wvSelectSignal -win $_nWave1 {( "DM" 7 )} 
wvSelectSignal -win $_nWave1 {( "DM" 12 )} 
wvSelectGroup -win $_nWave1 {G8}
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 0 23 1920 1017
