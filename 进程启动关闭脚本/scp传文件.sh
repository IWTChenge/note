#!/bin/bash
for a in {20..79}
do
echo "=================== On 192.168.202.$a ========================";
scp -r -P 22 $(pwd)/tcpT/ root@192.168.202.$a:/root/NLP/
ssh 192.168.202.$a "chmod 777 /root/NLP/tcpT/sh_singleClient_startUp.sh" ;
ssh 192.168.202.$a "chmod 777 /root/NLP/tcpT/" ;
done

#cp $(pwd)/so_lib/libCalc.so /root/NLP/C_code/

