#!/bin/sh
cat passwd | grep -v "^#" | awk 'NR%2==1' | cut -d ':' -f 1 | rev | sort -r | head -n $FT_LINE2 | tail -n $(($FT_LINE2-$FT_LINE1+1)) | tr "\n" ", " | sed s/,$/./ | tr -d "\n"
