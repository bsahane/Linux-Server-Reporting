#!/bin/bash

echo "What is the IP address?"
read ip
echo " "
echo "What is the username?"
read usr
echo " "
ssh $usr@$ip 'bash -s' < script.sh > ServerReport.txt
