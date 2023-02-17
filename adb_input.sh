#!/bin/bash

adb_path="/root/Android/Sdk/platform-tools/adb"

read -p "Please enter the STB device IP address: " ip_address

if ! command -v $adb_path &> /dev/null
then
    echo "adb command not found. Please modify your path and try again."
    exit
fi

echo "Open the account login menu in your STB"
$adb_path connect $ip_address
$adb_path -s $ip_address shell input text "abcd@gmail.com"
$adb_path -s $ip_address shell input keyevent 66
$adb_path -s $ip_address shell input text "123456"
$adb_path -s $ip_address shell input keyevent 66
$adb_path -s $ip_address shell input keyevent 66
