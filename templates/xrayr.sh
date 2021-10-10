#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

install(){
	bash <(curl -Ls https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/install.sh)
	
	echo -e "${green}请输入节点ID > ${plain}"
	read -p "" uid
	echo
	echo -e "${yellow}---------------------------"
	echo -e "节点ID = ${green}${uid}${plain}"
	echo -e "${yellow}---------------------------"
	echo
	
	echo -e "${green}请输入对应的域名(不开tls直接回车) > ${plain}"
	read -p "" domain
	echo
	echo -e "${yellow}---------------------------"
	echo -e "域名 = ${green}${domain}${plain}"
	echo -e "${yellow}---------------------------"
	echo
    
	echo -e "${plain}> ${green}开始域名证书${plain}"
	mkdir -p /root/.XrayR
	cat <<EOF > /etc/XrayR/cert.pem
-----BEGIN CERTIFICATE-----
MIIFIzCCBAugAwIBAgISA/tDWnwIAz7ZNlyn6T5Zhhj/MA0GCSqGSIb3DQEBCwUA
MDIxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MQswCQYDVQQD
EwJSMzAeFw0yMTA2MDQwNDM0MjRaFw0yMTA5MDIwNDM0MjRaMBMxETAPBgNVBAMT
CGhvbGkud3RmMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseL1dnnY
cWIeV8ijG4v+Giqeq6VYHyqGRGW3uRZt968gJqw52SL0lFxiFi0Ian3L5tyndz9I
PnyfTRmt9jLX+mCKg2+AAMnMMlZDMoT20Lyb9mT0htrbeGKnPQfBkxYlc8nHXHIM
6gkZ6fHMTudvdXgmFINzTq9kvT39cqoAUzH0i3mGhKvQdwLIubwm5jijsrpsq2/y
a+eeQRXBq6/YTsdfqI1ku7YzrhIrLJNvBMHDl+/ektIKZ/DiKZYqo1ZEst35AyJf
MpEVSqiCCfbH4VltNazRImMfxhbNeY81eitq3SSrnqiwrHgs/Krz2DR2BtLm0bW5
lwLYUI6XlBtorQIDAQABo4ICUDCCAkwwDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQW
MBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBRF
DCXzF8SW4auoj2d3Ym0c1eTISTAfBgNVHSMEGDAWgBQULrMXt1hWy65QCUDmH6+d
ixTCxjBVBggrBgEFBQcBAQRJMEcwIQYIKwYBBQUHMAGGFWh0dHA6Ly9yMy5vLmxl
bmNyLm9yZzAiBggrBgEFBQcwAoYWaHR0cDovL3IzLmkubGVuY3Iub3JnLzAfBgNV
HREEGDAWggoqLmhvbGkud3Rmgghob2xpLnd0ZjBMBgNVHSAERTBDMAgGBmeBDAEC
ATA3BgsrBgEEAYLfEwEBATAoMCYGCCsGAQUFBwIBFhpodHRwOi8vY3BzLmxldHNl
bmNyeXB0Lm9yZzCCAQUGCisGAQQB1nkCBAIEgfYEgfMA8QB2AFzcQ5L+5qtFRLFe
mtRW5hA3+9X6R9yhc5SyXub2xw7KAAABedWD8nIAAAQDAEcwRQIhAJ9wO6Ai2erQ
Thv7y48/Rn6/fDN6Yl56yrvVx7c4ac48AiAcZ1wYKClKzLuPk+/jout/FhxS0P+i
HbV4OJCdw4o53gB3AH0+8viP/4hVaCTCwMqeUol5K8UOeAl/LmqXaJl+IvDXAAAB
edWD80UAAAQDAEgwRgIhAKJj3+QjK6VxX3ofqf3eziP+XhLXdIMFSw+0NRtY6WiN
AiEAuadPVwxLqaGbkyASp3apo0Cc//4KsyvuPd0q9DaaWjEwDQYJKoZIhvcNAQEL
BQADggEBALH/V/okzBKWtp+xkTg3EVeyTODB8nTmnjAlekIZzHBWjPD88MIuKZCF
Y9Jt+G7dqgyWMwWNCaVGRfARRztaHRzGkBLsNZGtrIAifUJNJjzeT2IOhsiffhzR
fmVRPA3cCVtzroK1OyF85vF2tediOdvqpUKR1PVHfV4lpVHX8CEEL0ImH4fHRe1A
uthT0cHB29A3eK5Ri5nHY1cHCWGnN1WFew8IbG6Eg4ysCKSporu7F9/sLop158yI
ZpB2mc55FNTAHTwwO4oQYey9pPDWG3+zVkLElT2d8czGn9Bs3oOBt58umhNRR7Ku
LXusCWjJ3CkJKIaU8Lj0hNnYsJm1LAY=
-----END CERTIFICATE-----

-----BEGIN CERTIFICATE-----
MIIFFjCCAv6gAwIBAgIRAJErCErPDBinU/bWLiWnX1owDQYJKoZIhvcNAQELBQAw
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMjAwOTA0MDAwMDAw
WhcNMjUwOTE1MTYwMDAwWjAyMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNTGV0J3Mg
RW5jcnlwdDELMAkGA1UEAxMCUjMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQC7AhUozPaglNMPEuyNVZLD+ILxmaZ6QoinXSaqtSu5xUyxr45r+XXIo9cP
R5QUVTVXjJ6oojkZ9YI8QqlObvU7wy7bjcCwXPNZOOftz2nwWgsbvsCUJCWH+jdx
sxPnHKzhm+/b5DtFUkWWqcFTzjTIUu61ru2P3mBw4qVUq7ZtDpelQDRrK9O8Zutm
NHz6a4uPVymZ+DAXXbpyb/uBxa3Shlg9F8fnCbvxK/eG3MHacV3URuPMrSXBiLxg
Z3Vms/EY96Jc5lP/Ooi2R6X/ExjqmAl3P51T+c8B5fWmcBcUr2Ok/5mzk53cU6cG
/kiFHaFpriV1uxPMUgP17VGhi9sVAgMBAAGjggEIMIIBBDAOBgNVHQ8BAf8EBAMC
AYYwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMBIGA1UdEwEB/wQIMAYB
Af8CAQAwHQYDVR0OBBYEFBQusxe3WFbLrlAJQOYfr52LFMLGMB8GA1UdIwQYMBaA
FHm0WeZ7tuXkAXOACIjIGlj26ZtuMDIGCCsGAQUFBwEBBCYwJDAiBggrBgEFBQcw
AoYWaHR0cDovL3gxLmkubGVuY3Iub3JnLzAnBgNVHR8EIDAeMBygGqAYhhZodHRw
Oi8veDEuYy5sZW5jci5vcmcvMCIGA1UdIAQbMBkwCAYGZ4EMAQIBMA0GCysGAQQB
gt8TAQEBMA0GCSqGSIb3DQEBCwUAA4ICAQCFyk5HPqP3hUSFvNVneLKYY611TR6W
PTNlclQtgaDqw+34IL9fzLdwALduO/ZelN7kIJ+m74uyA+eitRY8kc607TkC53wl
ikfmZW4/RvTZ8M6UK+5UzhK8jCdLuMGYL6KvzXGRSgi3yLgjewQtCPkIVz6D2QQz
CkcheAmCJ8MqyJu5zlzyZMjAvnnAT45tRAxekrsu94sQ4egdRCnbWSDtY7kh+BIm
lJNXoB1lBMEKIq4QDUOXoRgffuDghje1WrG9ML+Hbisq/yFOGwXD9RiX8F6sw6W4
avAuvDszue5L3sz85K+EC4Y/wFVDNvZo4TYXao6Z0f+lQKc0t8DQYzk1OXVu8rp2
yJMC6alLbBfODALZvYH7n7do1AZls4I9d1P4jnkDrQoxB3UqQ9hVl3LEKQ73xF1O
yK5GhDDX8oVfGKF5u+decIsH4YaTw7mP3GFxJSqv3+0lUFJoi5Lc5da149p90Ids
hCExroL1+7mryIkXPeFM5TgO9r0rvZaBFOvV2z0gp35Z0+L4WPlbuEjN/lxPFin+
HlUjr8gRsI3qfJOQFy/9rKIJR0Y/8Omwt/8oTWgy1mdeHmmjk7j1nYsvC9JSQ6Zv
MldlTTKB3zhThV1+XWYp6rjd5JW1zbVWEkLNxE7GJThEUG3szgBVGP7pSWTUTsqX
nLRbwHOoq7hHwg==
-----END CERTIFICATE-----

-----BEGIN CERTIFICATE-----
MIIFYDCCBEigAwIBAgIQQAF3ITfU6UK47naqPGQKtzANBgkqhkiG9w0BAQsFADA/
MSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT
DkRTVCBSb290IENBIFgzMB4XDTIxMDEyMDE5MTQwM1oXDTI0MDkzMDE4MTQwM1ow
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwggIiMA0GCSqGSIb3DQEB
AQUAA4ICDwAwggIKAoICAQCt6CRz9BQ385ueK1coHIe+3LffOJCMbjzmV6B493XC
ov71am72AE8o295ohmxEk7axY/0UEmu/H9LqMZshftEzPLpI9d1537O4/xLxIZpL
wYqGcWlKZmZsj348cL+tKSIG8+TA5oCu4kuPt5l+lAOf00eXfJlII1PoOK5PCm+D
LtFJV4yAdLbaL9A4jXsDcCEbdfIwPPqPrt3aY6vrFk/CjhFLfs8L6P+1dy70sntK
4EwSJQxwjQMpoOFTJOwT2e4ZvxCzSow/iaNhUd6shweU9GNx7C7ib1uYgeGJXDR5
bHbvO5BieebbpJovJsXQEOEO3tkQjhb7t/eo98flAgeYjzYIlefiN5YNNnWe+w5y
sR2bvAP5SQXYgd0FtCrWQemsAXaVCg/Y39W9Eh81LygXbNKYwagJZHduRze6zqxZ
Xmidf3LWicUGQSk+WT7dJvUkyRGnWqNMQB9GoZm1pzpRboY7nn1ypxIFeFntPlF4
FQsDj43QLwWyPntKHEtzBRL8xurgUBN8Q5N0s8p0544fAQjQMNRbcTa0B7rBMDBc
SLeCO5imfWCKoqMpgsy6vYMEG6KDA0Gh1gXxG8K28Kh8hjtGqEgqiNx2mna/H2ql
PRmP6zjzZN7IKw0KKP/32+IVQtQi0Cdd4Xn+GOdwiK1O5tmLOsbdJ1Fu/7xk9TND
TwIDAQABo4IBRjCCAUIwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYw
SwYIKwYBBQUHAQEEPzA9MDsGCCsGAQUFBzAChi9odHRwOi8vYXBwcy5pZGVudHJ1
c3QuY29tL3Jvb3RzL2RzdHJvb3RjYXgzLnA3YzAfBgNVHSMEGDAWgBTEp7Gkeyxx
+tvhS5B1/8QVYIWJEDBUBgNVHSAETTBLMAgGBmeBDAECATA/BgsrBgEEAYLfEwEB
ATAwMC4GCCsGAQUFBwIBFiJodHRwOi8vY3BzLnJvb3QteDEubGV0c2VuY3J5cHQu
b3JnMDwGA1UdHwQ1MDMwMaAvoC2GK2h0dHA6Ly9jcmwuaWRlbnRydXN0LmNvbS9E
U1RST09UQ0FYM0NSTC5jcmwwHQYDVR0OBBYEFHm0WeZ7tuXkAXOACIjIGlj26Ztu
MA0GCSqGSIb3DQEBCwUAA4IBAQAKcwBslm7/DlLQrt2M51oGrS+o44+/yQoDFVDC
5WxCu2+b9LRPwkSICHXM6webFGJueN7sJ7o5XPWioW5WlHAQU7G75K/QosMrAdSW
9MUgNTP52GE24HGNtLi1qoJFlcDyqSMo59ahy2cI2qBDLKobkx/J3vWraV0T9VuG
WCLKTVXkcGdtwlfFRjlBz4pYg1htmf5X6DYO8A4jqv2Il9DjXA6USbW1FzXSLr9O
he8Y4IWS6wY7bCkjCWDcRQJMEhg76fsO3txE+FiYruq9RUWhiF1myv4Q6W+CyBFC
Dfvp7OOGAN6dEOM4+qR9sdjoSYKEBpsr6GtPAQw4dy753ec5
-----END CERTIFICATE-----
EOF

	cat <<EOF > /etc/XrayR/key.pem
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAseL1dnnYcWIeV8ijG4v+Giqeq6VYHyqGRGW3uRZt968gJqw5
2SL0lFxiFi0Ian3L5tyndz9IPnyfTRmt9jLX+mCKg2+AAMnMMlZDMoT20Lyb9mT0
htrbeGKnPQfBkxYlc8nHXHIM6gkZ6fHMTudvdXgmFINzTq9kvT39cqoAUzH0i3mG
hKvQdwLIubwm5jijsrpsq2/ya+eeQRXBq6/YTsdfqI1ku7YzrhIrLJNvBMHDl+/e
ktIKZ/DiKZYqo1ZEst35AyJfMpEVSqiCCfbH4VltNazRImMfxhbNeY81eitq3SSr
nqiwrHgs/Krz2DR2BtLm0bW5lwLYUI6XlBtorQIDAQABAoIBAQChD4eED+pjLp2e
ibD03hniAzjK3Ngez9fl0ds5IA/NNKj9mu59pWKhecvtnDSEhwW5L4wJMijtOtTZ
cCjMQ1i9/+8p9iiFjjDuWqBY+36lnD/yJZIpD7urEletsHoZ/PFIFygEkdcTh84I
vb9oqa+HQpPn+uTKF5A0sA3sZfQJXivhSRb/tO3qbeRdiezcDGvC0H82YSPPA8Sw
nvtUls2RRmD23bEdyTXiuL0pfsUM4+FPctRZmZaSy7Vbsmfq3tCp5yHxUkmg42DH
fizFzSxuKs5SvAsgR2qcqpl+Fp7b53B+vT7HBLTnzzFZrsZPqH7ti5gEwQOffxuH
1uIVsJRBAoGBAOhaqccqiuRkkoEzHmcIrUVDZX+ERQAuEV1P30h+up4k4mUc3ep3
L5zaU/h8Ej4yoEuMfctkTdEEj7j+uGhCUBSsOK9/HBp059RbNj/dX7ndExA3Keo1
19rG7auwX53HhYNjOJnAWMp9RSeuyY1uVhAEYxQmmSCTwvGdJAb0/jkpAoGBAMP9
S4OR9J3DIDzYntxfy5VQz76tCbeKfGxb/gjIPIhhiA6VmMjeBHARasK1E/xRUeid
j4QwEeU04Q+YVDAGYNUWNCrxX3dZzHxC6iadX7XYNB7T2+FOMNjl6Im/hX6CRnQh
FXi6YGFG3fA4jw7XNvWP8UmPOnw+MlUq+udETe/lAoGAdnylT1c2dLmErDXxLwGR
ulxgCeLdfPYBDOCKMGHPsI2GlaFe2Q3mTcpYP8KlWupeK6h9DZccx5XX5LKgPypx
w9j/Hx9mqWcsQXIx++dbxWAjNIWs7i5+4KXI1WCfocn5H8MdPeqEXN38wfuz9Fdr
s8dI7yGvvJkdNDC6CoIskeECgYAAx9B2LK2htzY4p9AyJnuEE7dQFhZU0ctfDxq6
5DlBfcnx7OyX2DKCU79uGRSES7qcx4vbxek8VXKUAlJLgqr+DkGU7jMoIYZr9ERE
dRn9emfyu3tDsXEGXBwJ+GZKs7AeJEeWnH9nw8V8gG0pbPf+EF2wok5kUkcXCb3I
EACTdQKBgQC5gz/M+srXBi349YQVTMvo9yKs/TPjddTf1+8Fjf5Whq8fux0+LMe5
9gG5JGOv1FdhFKw4XwwFKNibBqi82UDghgC8GFd9J1BtglTf6ZpIc0/+taAsN8ij
tonbJpzfhS1F32L26Tya9qdDgDNUb2vYMvRgMdLhvQBHYqkcMNdUqg==
-----END RSA PRIVATE KEY-----
EOF
    
	echo -e "${plain}> ${green}开始写出配置${plain}"
	cat <<EOF > /etc/XrayR/config.yml
Log:
  Level: none # Log level: none, error, warning, info, debug 
  AccessPath: # ./access.Log
  ErrorPath: # ./error.log
DnsConfigPath: # ./dns.json Path to dns config
ConnetionConfig:
  Handshake: 4 # Handshake time limit, Second
  ConnIdle: 10 # Connection idle time limit, Second
  UplinkOnly: 2 # Time limit when the connection downstream is closed, Second
  DownlinkOnly: 4 # Time limit when the connection is closed after the uplink is closed, Second
  BufferSize: 64 # The internal cache size of each connection, kB 
Nodes:
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, PMpanel
    ApiConfig:
      ApiHost: "http://iceblue.me"
      ApiKey: "dGFvd2FuZ3BtQGdtYWlsLmNvbQ"
      NodeID: ${uid}
      NodeType: V2ray # Node type: V2ray, Shadowsocks, Trojan
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 0 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # ./rulelist Path to local rulelist file
    ControllerConfig:
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/fallback/ for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: dns # Option about how to get certificate: none, file, http, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "${domain}" # Domain to cert
        CertFile: /etc/XrayR/cert.pem # Provided if the CertMode is file
        KeyFile: /etc/XrayR/key.pem
        Provider: alidns # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          ALICLOUD_ACCESS_KEY: aaa
          ALICLOUD_SECRET_KEY: bbb
EOF
	
	echo -e "> ${green}正在重启XrayR..${plain}"
	XrayR restart
	sleep 5
	XrayR status
}

[[ $EUID -ne 0 ]] && echo -e "${red}错误：${plain} 必须使用root用户运行此脚本！\n" && exit 1
install