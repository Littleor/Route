#! /bin/bash
clear 
echo 同时上内外网解决办法\(MAC版\)
echo 使用说明:
echo 1.使用终端运行
echo 2.程序会要求你输入默认网关,3s之后,找到broadcast后面的172或者202开头的IP地址复制下来输入到终端再回车即可
sleep 3s
echo =======================================================================
ifconfig en0
echo ======================================================================= 
read -p "Please enter the gateway:" gateway
echo 你输入的是:$gateway,正在修改路由
sudo route -n add -net 202.202.32.0 -netmask 255.255.240.0 $gatway
sudo route -n add -net 172.16.0.0 -netmask 255.224.0.0 $gatway
sudo route -n add -net 172.32.0.0 -netmask 255.254.0.0 $gatway
sudo route -n add -net 211.83.208.0 -netmask 255.255.240.0 $gatway
sudo route -n add -net 222.177.140.0 -netmask 255.255.255.128 $gatway
sudo route -n add -net 219.153.62.64 -netmask 255.255.255.192 $gatway
sudo route -n add -net 10.10.10.0 -netmask 255.255.255.0 $gatway
sudo route -n add -net 192.168.0.0 -netmask 255.255.0.0 $gateway
echo 执行完毕 