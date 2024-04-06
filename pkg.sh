#!/bin/bash

GERBER_FILES="IIsiSEthernet-B_Cu.gbr IIsiSEthernet-B_Mask.gbr IIsiSEthernet-B_Paste.gbr IIsiSEthernet-B_SilkS.gbr IIsiSEthernet-Edge_Cuts.gbr IIsiSEthernet-F_Cu.gbr IIsiSEthernet-F_Mask.gbr IIsiSEthernet-F_Paste.gbr IIsiSEthernet-F_SilkS.gbr IIsiSEthernet-In1_Cu.gbr IIsiSEthernet-In2_Cu.gbr"

POS_FILES="IIsiSEthernet-bottom.pos IIsiSEthernet-top.pos"

DRL_FILES="IIsiSEthernet-NPTH.drl IIsiSEthernet-PTH.drl IIsiSEthernet-PTH-drl_map.ps IIsiSEthernet-NPTH-drl_map.ps"

FILES="${GERBER_FILES} ${POS_FILES} ${DRL_FILES} top.pdf IIsiSEthernet.d356 IIsiSEthernet.csv"

echo $FILES

KICAD_PCB=IIsiSEthernet.kicad_pcb

ABORT=no
for F in $FILES; do 
    if test \! -f $F || test $KICAD_PCB -nt $F; then
	echo "Regenerate file $F"
	ABORT=yes
    fi
done

if test $ABORT == "yes"; then
    exit -1;
fi

zip IIsiSEthernet.zip $FILES top.jpg bottom.jpg
