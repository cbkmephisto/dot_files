#!/bin/bash

[ ! $# -eq 2 ] && echo usage: $0 proc_name nthreads && echo examp: $0 hsrm.coder 6 && exit


        while [ 1 ]
        do
#		echo ---------------------
#		ps -A | grep $1
                nthreads=`ps -u $USER | grep $1 | grep -v grep | grep -v waitMulti.sh| wc -l`
                if [ $nthreads -lt $2 ]
                then
                        break
                fi
#		echo waiting at $nthreads: $2 inputed
                sleep 1
        done
