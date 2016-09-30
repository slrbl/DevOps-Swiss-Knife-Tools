i=0;while [ TRUE ];clear;echo "$i seconds elapsed";i=$((i+1)); do du -h ./ | tail -1;echo "$(ls -1 | wc -l) items items in $(pwd)" ;sleep 1; done
