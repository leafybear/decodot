    case $line in
      c*) # time
        clock="${line#?}" ;;
      r*) # RAM
        ram="${line#?}" ;;
      d*) # disk usage
        disk="${line#?}" ;;
      t*) # cpu temps
        cputemps="${line#?}" ;;
      v*) # alsa volume
        volume="${line#?}" ;;
      W*) # BSPWM
        # set up tags
        wm_infos=""
        IFS=':'
        set -- ${line#?}
        while [ $# -gt 0 ] ; do
          item=$1
          name=${item#?}
          desk=" $name "
          case $item in
            O*)
              # focused occupied desktop
              wm_infos="$wm_infos%{F$color_01}%{B$color_07}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            F*)
              # focused empty desktop
              wm_infos="$wm_infos%{F$color_02}%{B$color_07}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            U*)
              # focused urgent desktop
              wm_infos="$wm_infos%{F$color_03}%{B$color_07}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            o*)
              # occupied desktop
              wm_infos="$wm_infos%{F$color_04}%{B$color_08}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            f*)
              # free desktop
              wm_infos="$wm_infos%{F$color_05}%{B$color_08}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            u*)
              # urgent desktop
              wm_infos="$wm_infos%{F$color_06}%{B$color_08}%{A:bspc desktop -f $name:}$desk%{A}%{B$color_bg}" ;;
            m*|M*)
              # monitor seperator
              wm_infos="$wm_infos%{B$color_bg}%{-o}%{F-}  " ;;
          esac
          shift
        done ;;
    esac
