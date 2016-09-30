i=0
while [ TRUE ]; do
  clear
  echo "$i seconds elapsed";i=$((i+1));
  du -h ./ | tail -1
  echo "$(ls -1 | wc -l) items in $(pwd)" 
  sleep 1
 done
