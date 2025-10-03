arg1=(1 2 3)
arg2=(5 8 9)
res=(6 10 12)

arrLen=${#arg1[@]}

PROG=$(pwd)/main

for i in $(seq 1 ${arrLen}); do
    prog_res=$(${PROG} ${arg1[${i}-1]} ${arg2[${i}-1]})
    if [ ${res[${i}-1]} != ${prog_res} ]; then
        echo "Error in case: ARG1=${arg1[${i}-1]}, ARG2=${arg2[${i}-1]}, PROG_RES=${prog_res} but should be RES=${res[${i}-1]}"
        exit 1
    fi
done

exit 0