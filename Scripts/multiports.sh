#!/bin/bash
cnt=20500
str=""
for ((c=1; c<=76; c++)); do
        echo -e "    - port: ${cnt}\n      targetPort: ${cnt}\n      name: n${c}\n      protocol: UDP\n" >> testing.txt
        cnt=$((${cnt}+1))
done
