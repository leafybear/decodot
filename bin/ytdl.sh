#!/bin/bash
youtube-dl \
	--merge-output-format mp4 \ # when audio needs merging use and mp4 container
	--recode-video mp4 \ # reencode the video to mp4
	--add-metadata \
	--no-mark-watched \ # dont mark it watched on YouTube
	--embed-thumbnail \
	--no-post-overwrite \
	-o "%(playlist_index)s_%(title)s.%(ext)s" $1
