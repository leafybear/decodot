fd -a -e "mp4" . ~/visual/tubetoots | fzf | (nohup xargs -I{} mpv "{}" >/dev/null 2>&1 &)
