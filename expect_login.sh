#!/usr/bin/expect
set IP 192.167.3.76
set GEN_USER "admin"
set GEN_PASS "Huawei12#$"
set ROOT_USER "develop"
set ROOT_PASS "Huawei@SYS3"

spawn ssh $GEN_USER@$IP
expect "$ROOT_USER@$IP's password: "
send "$GEN_PASS\r"
expect "iBMC:/->"
send "$ROOT_USER\r"
expect "Password:"
send "$ROOT_PASS\r"
interact
