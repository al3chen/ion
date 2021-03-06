@echo off
cls
echo "start all services"
start "redis log" "cmd /k .\Redis-x64-3.0.504\redis-server.exe"
start "etcd log" "cmd /k .\etcd-v3.4.9-windows-amd64\etcd.exe --listen-client-urls http://192.168.1.97:2389 --advertise-client-urls http://192.168.1.97:2389"
start "nats log" "cmd /k .\nats-server-v2.1.7-windows-amd64\nats-server.exe -a 192.168.1.97"
start "islb log" "cmd /k .\islb.exe -c islb.toml"
start "biz log" "cmd /k .\biz.exe -c biz.toml"
start "avp log" "cmd /k .\avp.exe -c avp.toml"
start "sfu log" "cmd /k .\sfu.exe -c sfu.toml"
rem echo "do not close those windows"
rem pause