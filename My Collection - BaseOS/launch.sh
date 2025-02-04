#!/bin/sh
echo $0 $*

RomFullPath=$1

extension="${RomFullPath##*.}"
if [ "$extension" = "txt" ]; then
    RomFullPath=$(cat "$RomFullPath" | head -n 1) # Trick to have shortcuts: the real ROM filename is inside the text file
fi

RomDir="${RomFullPath#*/Roms/}"
RomDir="${RomDir%%/*}"

if [ "$extension" = "launch" ]; then
    source "$RomFullPath"
fi

case $(echo "$RomDir" | awk '{print toupper($0)}') in
    ARCADE)
        core="mame2003_plus_libretro.so"
        ;;
    ATARI2600)
        core="stella_libretro.so"
        ;;
    WS)
        core="mednafen_wswan_libretro.so"
        ;;
    FBNEO)
        core="fbneo_libretro.so"
        ;;
    GB)
        core="gambatte_gb_libretro.so"
        ;;
    GBC)
        core="gambatte_libretro.so"
        ;;
    GBA)
        core="mgba_libretro.so"
        ;;
    FC)
        core="fceumm_libretro.so"
        ;;
    SFC)
        core="snes9x2005_libretro.so"
        ;;
    N64)
        core="mupen64plus_libretro.so"
        ;;
    MS | MD | GG)
        core="picodrive_libretro.so"
        ;;
    DC)
        core="flycast_libretro.so"
        ;;
    PS)
        core="pcsx_rearmed_libretro.so"
        ;;
    PCE)
        core="mednafen_supergrafx_libretro.so"
        ;;
esac

cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ ./ra64.trimui -v -L ".retroarch/cores/$core" "$RomFullPath"
