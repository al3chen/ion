@echo off
cls
echo "start all services"
start "redis log" "cmd /k .\Redis-x64-3.0.504\redis-server.exe"
start "etcd log" "cmd /k .\etcd-v3.4.9-windows-amd64\etcd.exe"
start "nats log" "cmd /k .\nats-server-v2.1.7-windows-amd64\nats-server.exe"
start "islb log" "cmd /k .\islb.exe"
start "biz log" "cmd /k .\biz.exe"
start "avp log" "cmd /k .\avp.exe"
start "sfu log" "cmd /k .\sfu.exe"
echo "do not close those windows"
pause