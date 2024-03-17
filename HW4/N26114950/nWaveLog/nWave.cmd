wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/N26114950/VSD_backup/HW4/N26114950/build/top.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/SC1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_empty} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_full} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_empty} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_full} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 117422986.566604 -snap {("G2" 0)}
wvZoom -win $_nWave1 127318182.063790 175474800.150094
wvZoom -win $_nWave1 145297857.484290 152044000.355667
wvZoom -win $_nWave1 147525476.893886 148871330.287237
wvZoom -win $_nWave1 147760306.847987 148307401.723333
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
wvZoom -win $_nWave1 182731276.848030 216045101.688555
wvZoom -win $_nWave1 192606669.577462 201023670.975568
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 190317593.395872 201532148.292683
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoom -win $_nWave1 197092615.303442 198565446.152929
wvZoom -win $_nWave1 197803700.616598 198184112.837260
wvZoom -win $_nWave1 197934787.003983 198024953.502814
wvSelectSignal -win $_nWave1 {( "G1" 3 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 10 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 7 10 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 197952493.245697 -snap {("G1" 3)}
wvZoom -win $_nWave1 197938113.972900 197942737.895917
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 197957105.601604 197963305.533404
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 197937732.268743 197967107.305214
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 197934691.888163 197962431.916351
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
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
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
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
wvZoom -win $_nWave1 190647433.245779 213736222.739212
wvZoom -win $_nWave1 196971942.187616 200740656.420128
wvZoom -win $_nWave1 197641307.317077 198511010.601502
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoom -win $_nWave1 197926313.271371 198008442.849825
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
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
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 194275671.594747 220992699.437148
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 191543817.903498 202905655.885258
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
wvZoom -win $_nWave1 175144960.300188 207139425.741088
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 190782030.182617 204548254.212223
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
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
wvZoom -win $_nWave1 200996930.001945 201616797.500463
wvSetCursor -win $_nWave1 201231851.642990 -snap {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 197355838.394789 198807235.464491
wvZoom -win $_nWave1 197890468.084540 198128282.989020
wvZoom -win $_nWave1 197932409.174596 198001567.355073
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
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
wvZoom -win $_nWave1 200950953.985504 201404915.375302
wvZoom -win $_nWave1 201207886.479413 201257569.558347
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
wvZoom -win $_nWave1 195792011.412422 200755472.176118
wvZoom -win $_nWave1 197806574.286470 198399457.967437
wvZoom -win $_nWave1 197898528.728476 198017550.405518
wvZoom -win $_nWave1 197934257.562034 197968274.389056
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
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
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 197890337.774958 198070058.947367
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
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
wvZoom -win $_nWave1 197936852.851362 197962703.926818
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectGroup -win $_nWave1 {G1}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_IF_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_EX_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_IF_stage"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetCursor -win $_nWave1 197946819.823197 -snap {("G1" 7)}
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
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 189181542.057173 205604136.964472
wvZoom -win $_nWave1 193957343.577984 195374678.222892
wvZoom -win $_nWave1 194462584.820925 194606179.700522
wvZoom -win $_nWave1 194495183.283247 194532182.088997
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
wvZoom -win $_nWave1 197439897.176568 198861539.844024
wvZoom -win $_nWave1 197908443.571590 198038249.593760
wvZoom -win $_nWave1 197934826.909339 197975254.300859
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_IF_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_Inst_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_IF_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage/u_Control"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_IF_stage/PC\[31:0\]} \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 197958036.631261 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 197940313.303271 -snap {("G1" 11)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 181411917.448405 224950777.636023
wvZoom -win $_nWave1 193855481.617094 201779064.052739
wvZoom -win $_nWave1 197586849.705831 198667112.977232
wvZoom -win $_nWave1 197877352.023938 198051653.414821
wvZoom -win $_nWave1 197930220.175606 197976874.956906
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectGroup -win $_nWave1 {G3}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/load_sync_WDEN"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
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
wvZoom -win $_nWave1 482979544.796748 522669432.682927
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
wvZoom -win $_nWave1 262881075.609756 342776304.471545
wvZoom -win $_nWave1 289762647.296781 301704460.741413
wvZoom -win $_nWave1 294101730.230616 295692478.363015
wvZoom -win $_nWave1 294520557.600043 295059760.531726
wvZoom -win $_nWave1 294735699.232529 294883398.347023
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
wvZoom -win $_nWave1 282468293.008130 326281805.609756
wvZoom -win $_nWave1 293894331.003646 297867413.759891
wvZoom -win $_nWave1 294398731.128377 295380199.351464
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
wvZoom -win $_nWave1 472670483.008130 516999448.699187
wvZoom -win $_nWave1 489720085.196968 495015164.901153
wvZoom -win $_nWave1 491557964.643944 492173902.620791
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
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 480917732.439024 521123073.414634
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
wvZoom -win $_nWave1 188140377.642276 210304860.487805
wvZoom -win $_nWave1 194073084.745318 195459231.264738
wvZoom -win $_nWave1 194463182.264837 194613153.089014
wvZoom -win $_nWave1 194497697.126149 194539902.798995
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetSearchMode -win $_nWave1 -value 10010200
wvSearchNext -win $_nWave1
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
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 171130425.691057 265973794.146341
wvZoom -win $_nWave1 189102621.214422 216565085.001036
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoom -win $_nWave1 197449561.427217 199270087.481865
wvZoom -win $_nWave1 197869682.824426 198093975.277688
wvZoom -win $_nWave1 197927333.980304 197990034.872492
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
wvZoom -win $_nWave1 465969592.845528 535040306.829268
wvZoom -win $_nWave1 485278291.501367 500785725.097466
wvZoom -win $_nWave1 487867712.871005 492949573.536644
wvZoom -win $_nWave1 488210952.991006 488735347.618792
wvZoom -win $_nWave1 488317865.216552 488413955.038905
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
wvZoom -win $_nWave1 491527319.367430 492373438.628670
wvZoom -win $_nWave1 491787663.755474 491893494.807536
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 491783593.330352 491826084.597034
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 491797411.628408 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 491816464.935607 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 491797172.465556 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 491798634.016317 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 491797783.659511 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 491797889.954112 -snap {("G1" 15)}
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
wvZoom -win $_nWave1 484525904.065041 549988446.422764
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 480402279.349593 532978494.471545
wvZoom -win $_nWave1 487307223.174146 497039905.898410
wvZoom -win $_nWave1 491032302.490704 492961796.189010
wvZoom -win $_nWave1 491640473.112305 492012132.936619
wvZoom -win $_nWave1 491787370.553805 491874300.368873
wvZoom -win $_nWave1 491790632.460557 491823523.353687
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 491797389.595170 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 491816570.807115 -snap {("G1" 16)}
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
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoom -win $_nWave1 429574223.106840 431912253.423799
wvZoom -win $_nWave1 429888592.411457 430254138.114546
wvZoom -win $_nWave1 429983922.341474 430051133.371310
wvZoom -win $_nWave1 430001366.104616 430023013.184269
wvSetCursor -win $_nWave1 430006442.811836 -snap {("G1" 14)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 430744300.091768 461796961.396172
wvZoom -win $_nWave1 435657572.955999 440842726.532157
wvZoom -win $_nWave1 436380705.693538 437282189.554809
wvZoom -win $_nWave1 436496280.547509 436678381.415045
wvZoom -win $_nWave1 436538076.056184 436585338.007421
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 436554517.244568 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 436565660.306242 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 183061116.697936 221652379.136961
wvZoom -win $_nWave1 196769582.654977 203430738.648204
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
wvSetCursor -win $_nWave1 175144960.300188 -snap {("G4" 0)}
wvSelectGroup -win $_nWave1 {G4}
wvZoom -win $_nWave1 196584550.544090 217694300.938086
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 433079722.926829 517188884.652908
wvZoom -win $_nWave1 472898756.964725 501303351.919123
wvZoom -win $_nWave1 481816272.078589 490698259.243816
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 184710315.947467 299494583.714822
wvZoom -win $_nWave1 214716459.741493 232232007.793547
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 194686954.042189 209321583.308946
wvZoom -win $_nWave1 197295377.644993 202512224.850779
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/rst} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/rst} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectGroup -win $_nWave1 {G4}
wvRenameGroup -win $_nWave1 {G4} {pulse sync}
wvSelectSignal -win $_nWave1 {( "pulse sync" 5 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 1 )} 
wvZoom -win $_nWave1 189328073.846154 208458785.140713
wvZoom -win $_nWave1 197487639.263792 198612271.447462
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "pulse sync" 1 2 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 10 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("pulse sync" 8)}
wvSelectSignal -win $_nWave1 {( "pulse sync" 2 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 3 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 4 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 1 )} 
wvZoom -win $_nWave1 197653274.585356 198289089.153234
wvZoom -win $_nWave1 197906566.567626 198007962.887081
wvSelectSignal -win $_nWave1 {( "pulse sync" 3 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "pulse sync" 7 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 8 )} 
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
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
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
wvZoom -win $_nWave1 131276260.262664 161291686.604128
wvZoom -win $_nWave1 146443530.108693 149071522.408758
wvZoom -win $_nWave1 147738625.751159 148026242.169240
wvZoom -win $_nWave1 147806977.370156 147870652.299487
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
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
wvZoom -win $_nWave1 127225614.898056 179094519.433418
wvZoom -win $_nWave1 144417934.725231 152235574.495726
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
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
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetSearchMode -win $_nWave1 -value 10010100
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
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
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 143150494.859287 161951366.303940
wvZoom -win $_nWave1 147747831.153671 149135262.567348
wvZoom -win $_nWave1 148158247.075219 148272781.751020
wvZoom -win $_nWave1 148183675.349064 148196353.671526
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
wvZoom -win $_nWave1 137961461.288779 168099934.941318
wvZoom -win $_nWave1 147140596.165990 150552143.214839
wvZoom -win $_nWave1 147789195.479752 148634081.428060
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("pulse sync" 9)}
wvSetPosition -win $_nWave1 {("pulse sync" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"pulse sync" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN_Data_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "pulse sync" 9 )} 
wvSetPosition -win $_nWave1 {("pulse sync" 9)}
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"pulse sync" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "pulse sync" 10 11 )} 
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"pulse sync" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "pulse sync" 10 11 )} 
wvSetPosition -win $_nWave1 {("pulse sync" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "pulse sync" 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("pulse sync" 10)}
wvSelectSignal -win $_nWave1 {( "pulse sync" 9 )} 
wvSelectSignal -win $_nWave1 {( "pulse sync" 9 10 )} 
wvSetPosition -win $_nWave1 {("pulse sync" 9)}
wvSetPosition -win $_nWave1 {("pulse sync" 10)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {pulse sync}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectGroup -win $_nWave1 {pulse sync}
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetCursor -win $_nWave1 148194465.975230 -snap {("G5" 2)}
wvSetCursor -win $_nWave1 148187068.599823 -snap {("G5" 2)}
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
wvZoom -win $_nWave1 42227100.737961 172867193.646029
wvZoom -win $_nWave1 44923237.739815 52276338.653965
wvZoom -win $_nWave1 47323687.193960 48468729.174963
wvZoom -win $_nWave1 47754062.572686 47861477.392667
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectGroup -win $_nWave1 {G5}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_ID_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU/u_CPU/u_IF_stage"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"pulse sync" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/q2_clk2} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU/u_CPU/u_ID_stage/ID_stage_pc_i\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT_reg\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_reg} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/rst} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
{/top_tb/TOP/WDT_wrapper/WDT/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_Data_out\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_wready} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_load_clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WDLIVE_clk\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"pulse sync" \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_in} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Data_out} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/Tq} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/q2_clk2} \
{/top_tb/TOP/WDT_wrapper/sync_pulse_WDLIVE/reg_clk2} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDEN_clk\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/q1_clk2} \
{/top_tb/TOP/WDT_wrapper/q2_clk2} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 47754935.863899 -snap {("G5" 4)}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {2ffs WDEN}
wvSelectGroup -win $_nWave1 {pulse sync}
wvRenameGroup -win $_nWave1 {pulse sync} {WDLIVE pulse sync}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("2ffs WDEN" 4)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G2}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("2ffs WDEN" 4)}
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
wvZoom -win $_nWave1 134275108.249145 172246347.876977
wvZoom -win $_nWave1 146029807.195802 151800295.769638
wvZoom -win $_nWave1 147765645.222076 148841070.859976
wvZoom -win $_nWave1 148129500.925630 148313110.180881
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
wvSetCursor -win $_nWave1 214434495.934959 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 184083767.279550 -snap {("G1" 17)}
wvExit
