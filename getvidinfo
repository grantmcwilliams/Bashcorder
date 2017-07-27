#!/bin/bash


IFS=$'\n' 
for FILE in $@ ;do
		echo -n "$FILE: "  
		AR=( $(ffprobe -hide_banner "$FILE" 3>&2 2>&1 1>&3 | grep Stream))
		VIDEO=$(echo "${AR[0]}" | awk '{print $3,$4,$12,$13,$14,$15,$16'})
		AUDIO=$(echo "${AR[1]}" | awk '{print $3,$4,$8,$9'})
		echo -n "${VIDEO//,/} "
		echo "${AUDIO//,/}"
done | column -t 
