#!/bin/bash
unset WINEPREFIX
if [ ! -d "$HOME"/.mushaf_almadinah ] ; then
   mkdir -p "$HOME"/.mushaf_almadinah
   #prepare the environment here
   cp -r /usr/share/mushaf_almadinah/Data "$HOME"/.mushaf_almadinah/Data
   ln -s /usr/share/mushaf_almadinah/Al_Madinah_Mushaf.exe "$HOME"/.mushaf_almadinah/Al_Madinah_Mushaf.exe
   fi
export LANG=ar_DZ.UTF-8; WINEDEBUG=fixme-all wine "$HOME"/.mushaf_almadinah/Al_Madinah_Mushaf.exe "$@"
