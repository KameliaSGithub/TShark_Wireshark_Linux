# TShark_Wireshark_Linux
This repository contains 6 network troubleshooting tasks. The first uses TShark to capture and analyze packets via the command line. The second employs Wireshark to diagnose connectivity issues during ping and traceroute tests, documenting potential problems.


![Screenshot from 2024-10-12 12-59-30](https://github.com/user-attachments/assets/062f7f74-758d-4ec9-b640-635449b004cd)



Wireshark capture dates 


![Screenshot from 2024-10-12 14-02-46](https://github.com/user-attachments/assets/be0668a3-9d75-4b4b-b9bb-80d196aedbd5)








Operations systems: Debian and Parrot Linux.
```bash
git clone https://github.com/KameliaSGithub/TShark_Wireshark_Linux.git


demon@am-b44bd6c58850:~$ wireshark
 ** (wireshark:3563) 05:37:35.297847 [Capture WARNING] ./ui/capture.c:1019 -- capture_interface_stat_start(): Couldn't run dumpcap in child process: Permission denied
 ** (wireshark:3563) 05:39:15.489062 [Capture MESSAGE] -- Capture Start ...
 ** (wireshark:3563) 05:39:15.571082 [Capture MESSAGE] -- Error message from child: "Couldn't run dumpcap in child process: Permission denied", "(null)"
 ** (wireshark:3563) 05:39:20.076110 [Capture MESSAGE] -- Capture stopped.
demon@am-b44bd6c58850:~$ ssh -V
OpenSSH_9.9p1 Debian-3, OpenSSL 3.3.2 3 Sep 2024
demon@am-b44bd6c58850:~$ sudo apt install nmap  # Install nmap if needed on Debian/Ubuntu
nmap -p 22 192.168.1.0/24
nmap is already the newest version (7.95+dfsg-1).
nmap set to manually installed.
Summary:
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 23
Starting Nmap 7.95 ( https://nmap.org ) at 2025-01-01 05:41 EET
Stats: 0:00:16 elapsed; 0 hosts completed (0 up), 256 undergoing Ping Scan
Ping Scan Timing: About 15.62% done; ETC: 05:42 (0:01:26 remaining)

demon@am-b44bd6c58850:~$ ipconfig
Command 'ipconfig' not found, did you mean:
  command 'iwconfig' from deb wireless-tools
  command 'iconfig' from deb ipmiutil
  command 'ifconfig' from deb net-tools
  command 'hipconfig' from deb hipcc
Try: sudo apt install <deb name>
demon@am-b44bd6c58850:~$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s31f6: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000
    link/ether d8:c4:97:26:2c:ed brd ff:ff:ff:ff:ff:ff
    altname enxd8c497262ced
3: wlp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether e4:70:b8:9d:17:c3 brd ff:ff:ff:ff:ff:ff
    altname wlxe470b89d17c3
    inet 192.168.31.96/24 brd 192.168.31.255 scope global dynamic noprefixroute wlp3s0
       valid_lft 42184sec preferred_lft 42184sec
    inet6 fe80::e246:7ac2:dea4:2b50/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
demon@am-b44bd6c58850:~$ nmap -p 22 192.168.31.0/24
Starting Nmap 7.95 ( https://nmap.org ) at 2025-01-01 05:44 EET
Nmap scan report for XiaoQiang (192.168.31.1)
Host is up (0.0039s latency).

PORT   STATE  SERVICE
22/tcp closed ssh

Nmap scan report for am-b44bd6c58850 (192.168.31.96)
Host is up (0.00018s latency).

PORT   STATE SERVICE
22/tcp open  ssh

Nmap done: 256 IP addresses (2 hosts up) scanned in 2.44 seconds
demon@am-b44bd6c58850:~$ sudo wireshark
 ** (wireshark:4596) 05:46:10.208268 [GUI WARNING] -- Session DBus not running.
 ** (wireshark:4596) 05:46:10.208317 [GUI WARNING] -- Application will not react to setting changes.
 Check your DBus installation.


