#!/bin/bash
for a in {20..79}
do
echo "=================== On 192.168.202.$a ========================";
ssh root@192.168.202.$a "source /etc/profile;cd /root/NLP/tcpT/; sh sh_singleClient_startUp.sh"
done

