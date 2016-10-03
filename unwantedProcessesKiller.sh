#DevOpsSwissKnife - UnwantedProcessesKiller.sh V1
#Author: walid.daboubi@gmail.com

#!/bin/sh
pattern=$1
if [ "$pattern" != "" ];then
        procs="$(ps aux | grep $pattern | awk '{print $2}')"
        for proc in $procs
        do
                kill -9 "$proc"
                if [ "$?" == "0" ];then
                        echo "The processes $proc containing the parrern $patten have successfully been terminated."
                fi
        done
else
        echo -e  "\n /!\ You have to specify a pattern, else all the running processes will be killed ;(\n"
        exit
fi
