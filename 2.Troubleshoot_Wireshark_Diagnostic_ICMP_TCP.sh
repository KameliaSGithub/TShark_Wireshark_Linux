root@debian12:~# sudo ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:92:f1:64 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 81038sec preferred_lft 81038sec
    inet6 fe80::a00:27ff:fe92:f164/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian12:~# sudo ip addr add 192.168.1.100/24 dev enp0s3
root@debian12:~# sudo ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:92:f1:64 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 80960sec preferred_lft 80960sec
    inet 192.168.1.100/24 scope global enp0s3
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe92:f164/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian12:~# ping 192.168.1.100
PING 192.168.1.100 (192.168.1.100) 56(84) bytes of data.
64 bytes from 192.168.1.100: icmp_seq=1 ttl=64 time=0.044 ms
64 bytes from 192.168.1.100: icmp_seq=2 ttl=64 time=0.051 ms
64 bytes from 192.168.1.100: icmp_seq=3 ttl=64 time=0.090 ms
64 bytes from 192.168.1.100: icmp_seq=4 ttl=64 time=0.202 ms
64 bytes from 192.168.1.100: icmp_seq=5 ttl=64 time=0.117 ms
64 bytes from 192.168.1.100: icmp_seq=6 ttl=64 time=0.058 ms
64 bytes from 192.168.1.100: icmp_seq=7 ttl=64 time=0.129 ms
64 bytes from 192.168.1.100: icmp_seq=8 ttl=64 time=0.076 ms
64 bytes from 192.168.1.100: icmp_seq=9 ttl=64 time=0.067 ms
64 bytes from 192.168.1.100: icmp_seq=10 ttl=64 time=0.060 ms
64 bytes from 192.168.1.100: icmp_seq=11 ttl=64 time=0.052 ms
64 bytes from 192.168.1.100: icmp_seq=12 ttl=64 time=0.117 ms
64 bytes from 192.168.1.100: icmp_seq=13 ttl=64 time=0.053 ms
64 bytes from 192.168.1.100: icmp_seq=14 ttl=64 time=0.083 ms
64 bytes from 192.168.1.100: icmp_seq=15 ttl=64 time=0.064 ms
64 bytes from 192.168.1.100: icmp_seq=16 ttl=64 time=0.108 ms
64 bytes from 192.168.1.100: icmp_seq=17 ttl=64 time=0.100 ms
64 bytes from 192.168.1.100: icmp_seq=18 ttl=64 time=0.050 ms
64 bytes from 192.168.1.100: icmp_seq=19 ttl=64 time=0.363 ms
64 bytes from 192.168.1.100: icmp_seq=20 ttl=64 time=0.124 ms
64 bytes from 192.168.1.100: icmp_seq=21 ttl=64 time=0.058 ms
64 bytes from 192.168.1.100: icmp_seq=22 ttl=64 time=0.051 ms
64 bytes from 192.168.1.100: icmp_seq=23 ttl=64 time=0.116 ms
64 bytes from 192.168.1.100: icmp_seq=24 ttl=64 time=0.105 ms
64 bytes from 192.168.1.100: icmp_seq=25 ttl=64 time=0.086 ms
64 bytes from 192.168.1.100: icmp_seq=26 ttl=64 time=0.128 ms
64 bytes from 192.168.1.100: icmp_seq=27 ttl=64 time=0.108 ms
64 bytes from 192.168.1.100: icmp_seq=28 ttl=64 time=0.249 ms
64 bytes from 192.168.1.100: icmp_seq=29 ttl=64 time=0.138 ms
64 bytes from 192.168.1.100: icmp_seq=30 ttl=64 time=0.106 ms
64 bytes from 192.168.1.100: icmp_seq=31 ttl=64 time=0.104 ms
64 bytes from 192.168.1.100: icmp_seq=32 ttl=64 time=0.219 ms
64 bytes from 192.168.1.100: icmp_seq=33 ttl=64 time=0.106 ms
64 bytes from 192.168.1.100: icmp_seq=34 ttl=64 time=0.124 ms
^C
--- 192.168.1.100 ping statistics ---
34 packets transmitted, 34 received, 0% packet loss, time 33794ms
rtt min/avg/max/mdev = 0.044/0.109/0.363/0.064 ms
root@debian12:~#  traceroute 8.8.8.8
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  _gateway (10.0.2.2)  0.487 ms  0.387 ms  0.294 ms
 2  * * *
 3  * * *
 4  * * *
 5  * * *
 6  * * *
 7  * * *
 8  * * *
 9  * * *
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * * *
21  * * *
22  * * *
23  * * *
24  * * *
25  * * *
26  * * *
27  * * *
28  * * *
29  * * *
30  * * *
root@debian12:~# sudo apt install traceroute
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
traceroute is already the newest version (1:2.1.2-1).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian12:~# icmp
-bash: icmp: command not found
root@debian12:~# sudo apt install icmp
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package icmp
root@debian12:~# sudo apt install udp
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package udp
root@debian12:~# sudo apt update
sudo apt install wireshark
Hit:1 http://deb.debian.org/debian bookworm InRelease
Hit:2 http://security.debian.org/debian-security bookworm-security InRelease  
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease                 
Hit:4 https://packages.microsoft.com/repos/code stable InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
wireshark is already the newest version (4.0.11-1~deb12u1).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian12:~# wireshark
 ** (wireshark:36194) 16:01:13.473395 [GUI WARNING] -- could not connect to display 
 ** (wireshark:36194) 16:01:13.475295 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo open wireshark
xdg-open: file 'wireshark' does not exist
root@debian12:~# 
root@debian12:~# 
root@debian12:~# 
root@debian12:~#  enp0s3 enp0s3susudpssss
-bash: enp0s3: command not found
root@debian12:~# 
root@debian12:~# 
root@debian12:~# sudo ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:92:f1:64 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 77501sec preferred_lft 77501sec
    inet 192.168.1.100/24 scope global enp0s3
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe92:f164/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian12:~# sudo wireshark
 ** (wireshark:37211) 16:17:49.363561 [GUI WARNING] -- could not connect to display 
 ** (wireshark:37211) 16:17:49.369472 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo tcpdump -i enp0s3
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on enp0s3, link-type EN10MB (Ethernet), snapshot length 262144 bytes
16:18:07.729166 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1582272893, win 63970, length 0
16:18:07.729802 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:18:07.766325 IP debian12.51844 > one.one.one.one.domain: 52132+ PTR? 75.68.39.212.in-addr.arpa. (43)
16:18:07.996319 IP one.one.one.one.domain > debian12.51844: 52132 NXDomain 0/1/0 (97)
16:18:08.000137 IP debian12.41334 > one.one.one.one.domain: 57043+ PTR? 1.1.1.1.in-addr.arpa. (38)
16:18:08.035529 IP one.one.one.one.domain > debian12.41334: 57043 1/0/0 PTR one.one.one.one. (67)
16:18:17.976210 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1, win 63970, length 0
16:18:17.977155 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:18:19.944141 IP debian12.53839 > one.one.one.one.domain: 34954+ A? deepai.org. (28)
16:18:19.944173 IP debian12.53839 > one.one.one.one.domain: 40839+ AAAA? deepai.org. (28)
16:18:20.069957 IP one.one.one.one.domain > debian12.53839: 40839 8/0/0 AAAA 2600:9000:2467:fc00:14:1028:f240:93a1, AAAA 2600:9000:2467:d000:14:1028:f240:93a1, AAAA 2600:9000:2467:bc00:14:1028:f240:93a1, AAAA 2600:9000:2467:9c00:14:1028:f240:93a1, AAAA 2600:9000:2467:6c00:14:1028:f240:93a1, AAAA 2600:9000:2467:aa00:14:1028:f240:93a1, AAAA 2600:9000:2467:3000:14:1028:f240:93a1, AAAA 2600:9000:2467:d400:14:1028:f240:93a1 (252)
16:18:20.073793 IP one.one.one.one.domain > debian12.53839: 34954 4/0/0 A 18.165.61.87, A 18.165.61.72, A 18.165.61.71, A 18.165.61.57 (92)
16:18:22.576093 IP debian12.35944 > 152.199.19.160.https: Flags [.], ack 1576903542, win 62780, length 0
16:18:22.577129 IP 152.199.19.160.https > debian12.35944: Flags [.], ack 1, win 65535, length 0
16:18:22.618358 IP debian12.51992 > one.one.one.one.domain: 1509+ PTR? 160.19.199.152.in-addr.arpa. (45)
16:18:22.680083 IP one.one.one.one.domain > debian12.51992: 1509 NXDomain 0/1/0 (116)
16:18:23.317389 IP debian12.52484 > 172.64.146.150.https: Flags [P.], seq 1583496318:1583496357, ack 1581696757, win 64028, length 39
16:18:23.318091 IP 172.64.146.150.https > debian12.52484: Flags [.], ack 39, win 65535, length 0
16:18:23.319203 IP debian12.40364 > 113.140.107.34.bc.googleusercontent.com.https: Flags [P.], seq 739289152:739289191, ack 1581312831, win 63874, length 39
16:18:23.319355 IP debian12.52492 > 172.64.146.150.https: Flags [P.], seq 1837165209:1837165248, ack 1581633940, win 64028, length 39
16:18:23.319433 IP debian12.54772 > 172.67.23.234.https: Flags [P.], seq 4093663369:4093663408, ack 1581121092, win 64028, length 39
16:18:23.319713 IP 113.140.107.34.bc.googleusercontent.com.https > debian12.40364: Flags [.], ack 39, win 65535, length 0
16:18:23.319713 IP 172.64.146.150.https > debian12.52492: Flags [.], ack 39, win 65535, length 0
16:18:23.319713 IP 172.67.23.234.https > debian12.54772: Flags [.], ack 39, win 65535, length 0
16:18:23.354009 IP debian12.34838 > one.one.one.one.domain: 29821+ PTR? 150.146.64.172.in-addr.arpa. (45)
16:18:23.395527 IP 172.64.146.150.https > debian12.52484: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:23.395658 IP debian12.52484 > 172.64.146.150.https: Flags [.], ack 40, win 64028, length 0
16:18:23.405859 IP 172.64.146.150.https > debian12.52492: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:23.405859 IP 113.140.107.34.bc.googleusercontent.com.https > debian12.40364: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:23.409267 IP one.one.one.one.domain > debian12.34838: 29821 NXDomain 0/1/0 (107)
16:18:23.410044 IP debian12.38255 > one.one.one.one.domain: 35585+ PTR? 113.140.107.34.in-addr.arpa. (45)
16:18:23.423034 IP 172.67.23.234.https > debian12.54772: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:23.449261 IP debian12.40364 > 113.140.107.34.bc.googleusercontent.com.https: Flags [.], ack 40, win 63874, length 0
16:18:23.449303 IP debian12.52492 > 172.64.146.150.https: Flags [.], ack 40, win 64028, length 0
16:18:23.467206 IP debian12.54772 > 172.67.23.234.https: Flags [.], ack 40, win 64028, length 0
16:18:23.805591 IP one.one.one.one.domain > debian12.38255: 35585 1/0/0 PTR 113.140.107.34.bc.googleusercontent.com. (98)
16:18:23.808562 IP debian12.40536 > one.one.one.one.domain: 30819+ PTR? 234.23.67.172.in-addr.arpa. (44)
16:18:23.880121 IP one.one.one.one.domain > debian12.40536: 30819 NXDomain 0/1/0 (106)
16:18:24.323053 IP debian12.35774 > 153.63.120.34.bc.googleusercontent.com.https: Flags [P.], seq 604202357:604202396, ack 1581568831, win 64028, length 39
16:18:24.323443 IP debian12.59402 > 31.152.160.34.bc.googleusercontent.com.https: Flags [P.], seq 3996662899:3996662938, ack 1582016831, win 64028, length 39
16:18:24.323537 IP debian12.48056 > 207.65.37.179.https: Flags [P.], seq 8683754:8683793, ack 1581901884, win 62780, length 39
16:18:24.323615 IP debian12.33878 > 172.64.151.101.https: Flags [P.], seq 3743652474:3743652513, ack 1581258293, win 62780, length 39
16:18:24.323770 IP 153.63.120.34.bc.googleusercontent.com.https > debian12.35774: Flags [.], ack 39, win 65535, length 0
16:18:24.323831 IP debian12.38980 > ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https: Flags [P.], seq 3564163885:3564163924, ack 1581389202, win 62780, length 39
16:18:24.324109 IP 31.152.160.34.bc.googleusercontent.com.https > debian12.59402: Flags [.], ack 39, win 65535, length 0
16:18:24.324109 IP 207.65.37.179.https > debian12.48056: Flags [.], ack 39, win 65535, length 0
16:18:24.324109 IP 172.64.151.101.https > debian12.33878: Flags [.], ack 39, win 65535, length 0
16:18:24.324933 IP ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https > debian12.38980: Flags [.], ack 39, win 65535, length 0
16:18:24.355594 IP 153.63.120.34.bc.googleusercontent.com.https > debian12.35774: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:24.355672 IP debian12.35774 > 153.63.120.34.bc.googleusercontent.com.https: Flags [.], ack 40, win 64028, length 0
16:18:24.356355 IP 31.152.160.34.bc.googleusercontent.com.https > debian12.59402: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:24.364632 IP 172.64.151.101.https > debian12.33878: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:24.397508 IP ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https > debian12.38980: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:24.397593 IP debian12.38980 > ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https: Flags [.], ack 40, win 62780, length 0
16:18:24.400265 IP debian12.59402 > 31.152.160.34.bc.googleusercontent.com.https: Flags [.], ack 40, win 64028, length 0
16:18:24.404617 IP debian12.42689 > one.one.one.one.domain: 30652+ PTR? 153.63.120.34.in-addr.arpa. (44)
16:18:24.412117 IP debian12.33878 > 172.64.151.101.https: Flags [.], ack 40, win 62780, length 0
16:18:24.475628 IP 207.65.37.179.https > debian12.48056: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:24.475685 IP debian12.48056 > 207.65.37.179.https: Flags [.], ack 40, win 62780, length 0
16:18:24.636986 IP debian12.35958 > 152.199.19.160.https: Flags [.], ack 1577202859, win 62780, length 0
16:18:24.637998 IP 152.199.19.160.https > debian12.35958: Flags [.], ack 1, win 65535, length 0
16:18:24.806398 IP one.one.one.one.domain > debian12.42689: 30652 1/0/0 PTR 153.63.120.34.bc.googleusercontent.com. (96)
16:18:24.811224 IP debian12.49543 > one.one.one.one.domain: 1894+ PTR? 31.152.160.34.in-addr.arpa. (44)
16:18:25.224733 IP one.one.one.one.domain > debian12.49543: 1894 1/0/0 PTR 31.152.160.34.bc.googleusercontent.com. (96)
16:18:25.225131 IP debian12.37417 > one.one.one.one.domain: 15306+ PTR? 179.37.65.207.in-addr.arpa. (44)
16:18:25.331660 IP debian12.53134 > sof02s17-in-f2.1e100.net.https: Flags [P.], seq 2512581632:2512581671, ack 1582145665, win 63744, length 39
16:18:25.332326 IP sof02s17-in-f2.1e100.net.https > debian12.53134: Flags [.], ack 39, win 65535, length 0
16:18:25.396251 IP sof02s17-in-f2.1e100.net.https > debian12.53134: Flags [P.], seq 1:40, ack 39, win 65535, length 39
16:18:25.440878 IP debian12.53134 > sof02s17-in-f2.1e100.net.https: Flags [.], ack 40, win 63744, length 0
16:18:27.335097 IP debian12.59898 > sof04s05-in-f14.1e100.net.https: Flags [P.], seq 25780631:25780670, ack 1582656863, win 63714, length 39
16:18:27.336497 IP sof04s05-in-f14.1e100.net.https > debian12.59898: Flags [.], ack 39, win 65535, length 0
16:18:39.244628 IP debian12.34745 > one.one.one.one.domain: 42948+ PTR? 2.212.58.216.in-addr.arpa. (43)
16:18:39.319108 IP one.one.one.one.domain > debian12.34745: 42948 3/0/0 PTR sof02s17-in-f2.1e100.net., PTR sof04s01-in-f2.1e100.net., PTR sof02s17-in-f2.1e100.net. (124)
16:18:39.319600 IP debian12.46478 > one.one.one.one.domain: 14973+ PTR? 46.140.251.142.in-addr.arpa. (45)
16:18:39.400482 IP one.one.one.one.domain > debian12.46478: 14973 1/0/0 PTR sof04s05-in-f14.1e100.net. (84)
16:18:45.106751 IP debian12.37470 > 13.89.179.11.https: Flags [.], ack 1563015485, win 62780, length 0
16:18:45.108412 IP 13.89.179.11.https > debian12.37470: Flags [.], ack 1, win 65535, length 0
16:18:45.120936 IP debian12.55128 > one.one.one.one.domain: 30562+ PTR? 11.179.89.13.in-addr.arpa. (43)
16:18:45.280997 IP one.one.one.one.domain > debian12.55128: 30562 NXDomain 0/1/0 (117)
16:18:48.708251 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1, win 63970, length 0
16:18:48.709881 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:18:58.950907 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1, win 63970, length 0
16:18:58.952155 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:19:07.632496 IP debian12.35944 > 152.199.19.160.https: Flags [.], ack 1, win 62780, length 0
16:19:07.633619 IP 152.199.19.160.https > debian12.35944: Flags [.], ack 1, win 65535, length 0
16:19:09.172261 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1, win 63970, length 0
16:19:09.173154 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:19:09.683017 IP debian12.35958 > 152.199.19.160.https: Flags [.], ack 1, win 62780, length 0
16:19:09.684253 IP 152.199.19.160.https > debian12.35958: Flags [.], ack 1, win 65535, length 0
16:19:12.762827 ARP, Request who-has _gateway tell debian12, length 28
16:19:12.764226 ARP, Reply _gateway is-at 52:54:00:12:35:02 (oui Unknown), length 46
16:19:19.408815 IP debian12.39176 > 212.39.68.75.https: Flags [.], ack 1, win 63970, length 0
16:19:19.410053 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 1, win 65535, length 0
16:19:22.377134 IP debian12.35774 > 153.63.120.34.bc.googleusercontent.com.https: Flags [P.], seq 39:78, ack 40, win 64028, length 39
16:19:22.377297 IP debian12.59402 > 31.152.160.34.bc.googleusercontent.com.https: Flags [P.], seq 39:78, ack 40, win 64028, length 39
16:19:22.377418 IP debian12.52484 > 172.64.146.150.https: Flags [P.], seq 39:78, ack 40, win 64028, length 39
16:19:22.377541 IP debian12.33878 > 172.64.151.101.https: Flags [P.], seq 39:78, ack 40, win 62780, length 39
16:19:22.377652 IP debian12.40364 > 113.140.107.34.bc.googleusercontent.com.https: Flags [P.], seq 39:78, ack 40, win 63874, length 39
16:19:22.377836 IP debian12.52492 > 172.64.146.150.https: Flags [P.], seq 39:78, ack 40, win 64028, length 39
16:19:22.377964 IP debian12.54772 > 172.67.23.234.https: Flags [P.], seq 39:78, ack 40, win 64028, length 39
16:19:22.378533 IP 153.63.120.34.bc.googleusercontent.com.https > debian12.35774: Flags [.], ack 78, win 65535, length 0
16:19:22.378534 IP 31.152.160.34.bc.googleusercontent.com.https > debian12.59402: Flags [.], ack 78, win 65535, length 0
16:19:22.379024 IP 172.64.146.150.https > debian12.52484: Flags [.], ack 78, win 65535, length 0
16:19:22.379025 IP 172.64.151.101.https > debian12.33878: Flags [.], ack 78, win 65535, length 0
16:19:22.379025 IP 113.140.107.34.bc.googleusercontent.com.https > debian12.40364: Flags [.], ack 78, win 65535, length 0
16:19:22.379025 IP 172.64.146.150.https > debian12.52492: Flags [.], ack 78, win 65535, length 0
16:19:22.379025 IP 172.67.23.234.https > debian12.54772: Flags [.], ack 78, win 65535, length 0
16:19:22.435506 IP 153.63.120.34.bc.googleusercontent.com.https > debian12.35774: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.435614 IP debian12.35774 > 153.63.120.34.bc.googleusercontent.com.https: Flags [.], ack 79, win 64028, length 0
16:19:22.443548 IP 31.152.160.34.bc.googleusercontent.com.https > debian12.59402: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.443647 IP debian12.59402 > 31.152.160.34.bc.googleusercontent.com.https: Flags [.], ack 79, win 64028, length 0
16:19:22.443549 IP 172.64.151.101.https > debian12.33878: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.443741 IP debian12.33878 > 172.64.151.101.https: Flags [.], ack 79, win 62780, length 0
16:19:22.443549 IP 113.140.107.34.bc.googleusercontent.com.https > debian12.40364: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.443820 IP debian12.40364 > 113.140.107.34.bc.googleusercontent.com.https: Flags [.], ack 79, win 63874, length 0
16:19:22.444118 IP 172.64.146.150.https > debian12.52484: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.444134 IP debian12.52484 > 172.64.146.150.https: Flags [.], ack 79, win 64028, length 0
16:19:22.445181 IP debian12.39176 > 212.39.68.75.https: Flags [P.], seq 1:25, ack 1, win 63970, length 24
16:19:22.445234 IP 172.64.146.150.https > debian12.52492: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.445332 IP debian12.52492 > 172.64.146.150.https: Flags [.], ack 79, win 64028, length 0
16:19:22.445402 IP debian12.39176 > 212.39.68.75.https: Flags [F.], seq 25, ack 1, win 63970, length 0
16:19:22.445965 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 25, win 65535, length 0
16:19:22.445965 IP 212.39.68.75.https > debian12.39176: Flags [.], ack 26, win 65535, length 0
16:19:22.461289 IP 172.67.23.234.https > debian12.54772: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:22.461389 IP debian12.54772 > 172.67.23.234.https: Flags [.], ack 79, win 64028, length 0
16:19:22.515642 IP 212.39.68.75.https > debian12.39176: Flags [P.], seq 1:25, ack 26, win 65535, length 24
16:19:22.515688 IP debian12.39176 > 212.39.68.75.https: Flags [R], seq 1602975439, win 0, length 0
16:19:22.516025 IP 212.39.68.75.https > debian12.39176: Flags [R.], seq 25, ack 26, win 65535, length 0
16:19:22.516177 IP 212.39.68.75.https > debian12.39176: Flags [R.], seq 2712694404, ack 26, win 0, length 0
16:19:23.387759 IP debian12.48056 > 207.65.37.179.https: Flags [P.], seq 39:78, ack 40, win 62780, length 39
16:19:23.388006 IP debian12.38980 > ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https: Flags [P.], seq 39:78, ack 40, win 62780, length 39
16:19:23.389163 IP 207.65.37.179.https > debian12.48056: Flags [.], ack 78, win 65535, length 0
16:19:23.389164 IP ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https > debian12.38980: Flags [.], ack 78, win 65535, length 0
16:19:23.516107 IP ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https > debian12.38980: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:23.516197 IP debian12.38980 > ec2-18-157-230-4.eu-central-1.compute.amazonaws.com.https: Flags [.], ack 79, win 62780, length 0
16:19:23.589963 IP 207.65.37.179.https > debian12.48056: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:23.590039 IP debian12.48056 > 207.65.37.179.https: Flags [.], ack 79, win 62780, length 0
16:19:24.395615 IP debian12.53134 > sof02s17-in-f2.1e100.net.https: Flags [P.], seq 39:78, ack 40, win 63744, length 39
16:19:24.396957 IP sof02s17-in-f2.1e100.net.https > debian12.53134: Flags [.], ack 78, win 65535, length 0
16:19:24.434764 IP sof02s17-in-f2.1e100.net.https > debian12.53134: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:24.434911 IP debian12.53134 > sof02s17-in-f2.1e100.net.https: Flags [.], ack 79, win 63744, length 0
16:19:25.405724 IP debian12.59898 > sof04s05-in-f14.1e100.net.https: Flags [P.], seq 39:78, ack 40, win 63714, length 39
16:19:25.407049 IP sof04s05-in-f14.1e100.net.https > debian12.59898: Flags [.], ack 78, win 65535, length 0
16:19:25.475960 IP sof04s05-in-f14.1e100.net.https > debian12.59898: Flags [P.], seq 40:79, ack 78, win 65535, length 39
16:19:25.476334 IP debian12.59898 > sof04s05-in-f14.1e100.net.https: Flags [.], ack 79, win 63714, length 0
16:19:28.411833 IP debian12.56352 > ec2-34-210-104-42.us-west-2.compute.amazonaws.com.https: Flags [P.], seq 3128192651:3128192697, ack 1580827668, win 63847, length 46
16:19:28.413114 IP ec2-34-210-104-42.us-west-2.compute.amazonaws.com.https > debian12.56352: Flags [.], ack 46, win 65535, length 0
16:19:28.505093 IP debian12.33010 > one.one.one.one.domain: 60949+ PTR? 42.104.210.34.in-addr.arpa. (44)
16:19:28.596548 IP ec2-34-210-104-42.us-west-2.compute.amazonaws.com.https > debian12.56352: Flags [P.], seq 1:47, ack 46, win 65535, length 46
16:19:28.596764 IP debian12.56352 > ec2-34-210-104-42.us-west-2.compute.amazonaws.com.https: Flags [.], ack 47, win 63847, length 0
16:19:28.760170 IP one.one.one.one.domain > debian12.33010: 60949 1/0/0 PTR ec2-34-210-104-42.us-west-2.compute.amazonaws.com. (107)
16:19:30.160869 IP debian12.37470 > 13.89.179.11.https: Flags [.], ack 1, win 62780, length 0
16:19:30.161889 IP 13.89.179.11.https > debian12.37470: Flags [.], ack 1, win 65535, length 0
16:19:52.679953 IP 152.199.19.160.https > debian12.35944: Flags [P.], seq 1:82, ack 1, win 65535, length 81
16:19:52.680234 IP 152.199.19.160.https > debian12.35944: Flags [F.], seq 82, ack 1, win 65535, length 0
16:19:52.705313 IP debian12.35944 > 152.199.19.160.https: Flags [F.], seq 1, ack 83, win 62780, length 0
16:19:52.705763 IP 152.199.19.160.https > debian12.35944: Flags [.], ack 2, win 65535, length 0
16:19:53.326662 IP 152.199.19.160.https > debian12.35958: Flags [P.], seq 1:82, ack 1, win 65535, length 81
16:19:53.327688 IP 152.199.19.160.https > debian12.35958: Flags [F.], seq 82, ack 1, win 65535, length 0
16:19:53.328046 IP debian12.35958 > 152.199.19.160.https: Flags [F.], seq 1, ack 83, win 62780, length 0
16:19:53.329493 IP 152.199.19.160.https > debian12.35958: Flags [.], ack 2, win 65535, length 0
16:19:57.819955 ARP, Request who-has _gateway tell debian12, length 28
16:19:57.821041 ARP, Reply _gateway is-at 52:54:00:12:35:02 (oui Unknown), length 46
16:20:04.441697 IP 13.89.179.11.https > debian12.37470: Flags [R.], seq 1, ack 1, win 65535, length 0
^C
164 packets captured
191 packets received by filter
27 packets dropped by kernel
root@debian12:~# ^[[200~sudo apt remove --purge wireshark
nstall wireshark-bash: $'\E[200~sudo': command not found
^[[201~root@debiasudo apt remove --purge wiresharkreshark
sudo apt install wireshark
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libminizip1 libqt5multimedia5-plugins libqt5multimediagsttools5 libqt5multimediawidgets5
  libqt5printsupport5 wireshark-qt
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  wireshark*
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 36.9 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 209674 files and directories currently installed.)
Removing wireshark (4.0.11-1~deb12u1) ...
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  wireshark
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 20.9 kB of archives.
After this operation, 36.9 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 wireshark amd64 4.0.11-1~deb12u1 [20.9 kB]
Fetched 20.9 kB in 0s (43.3 kB/s)    
Selecting previously unselected package wireshark.
(Reading database ... 209669 files and directories currently installed.)
Preparing to unpack .../wireshark_4.0.11-1~deb12u1_amd64.deb ...
Unpacking wireshark (4.0.11-1~deb12u1) ...
Setting up wireshark (4.0.11-1~deb12u1) ...
root@debian12:~# sudo wireshark
 ** (wireshark:38250) 16:21:02.158182 [GUI WARNING] -- could not connect to display 
 ** (wireshark:38250) 16:21:02.160954 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# wireshark
 ** (wireshark:38287) 16:21:12.260590 [GUI WARNING] -- could not connect to display 
 ** (wireshark:38287) 16:21:12.266508 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo open wireshark
xdg-open: file 'wireshark' does not exist
root@debian12:~# sudo apt wireshark
E: Invalid operation wireshark
root@debian12:~# sudo open Wireshark
xdg-open: file 'Wireshark' does not exist
root@debian12:~# xdg-open wireshark
xdg-open: file 'wireshark' does not exist
root@debian12:~# cd /usr/bin/wireshark
-bash: cd: /usr/bin/wireshark: Not a directory
root@debian12:~# sudo wireshark
 ** (wireshark:38806) 16:25:51.010405 [GUI WARNING] -- could not connect to display 
 ** (wireshark:38806) 16:25:51.013831 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo apt install minimal
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package minimal
root@debian12:~# sudo wireshark
 ** (wireshark:39034) 16:27:09.704361 [GUI WARNING] -- could not connect to display 
 ** (wireshark:39034) 16:27:09.709349 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo apt update
sudo apt install wireshark
Hit:1 http://security.debian.org/debian-security bookworm-security InRelease
Hit:2 http://deb.debian.org/debian bookworm InRelease                          
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease                  
Hit:4 https://packages.microsoft.com/repos/code stable InRelease              
Reading package lists... Done                           
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
wireshark is already the newest version (4.0.11-1~deb12u1).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian12:~# sudo groupadd wireshark
sudo usermod -aG wireshark $(whoami)
groupadd: group 'wireshark' already exists
root@debian12:~# ssh -X user@remote_host
ssh: Could not resolve hostname remote_host: Name or service not known
root@debian12:~# ssh -X root@debian enp0s3
ssh: Could not resolve hostname debian: Name or service not known
root@debian12:~# ssh -X user@remote_host
ssh: Could not resolve hostname remote_host: Name or service not known
root@debian12:~# sudo apt remove --purge wireshark
sudo apt install wireshark
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libminizip1 libqt5multimedia5-plugins libqt5multimediagsttools5 libqt5multimediawidgets5
  libqt5printsupport5 wireshark-qt
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  wireshark*
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 36.9 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 209674 files and directories currently installed.)
Removing wireshark (4.0.11-1~deb12u1) ...
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  wireshark
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 20.9 kB of archives.
After this operation, 36.9 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 wireshark amd64 4.0.11-1~deb12u1 [20.9 kB]
Fetched 20.9 kB in 0s (69.3 kB/s)
Selecting previously unselected package wireshark.
(Reading database ... 209669 files and directories currently installed.)
Preparing to unpack .../wireshark_4.0.11-1~deb12u1_amd64.deb ...
Unpacking wireshark (4.0.11-1~deb12u1) ...
Setting up wireshark (4.0.11-1~deb12u1) ...
root@debian12:~# sudo chmod +x /usr/bin/dumpcap
root@debian12:~# sudo chown root:root /usr/bin/dumpcap
root@debian12:~# sudo chmod u+s /usr/bin/dumpcap
root@debian12:~# sudo usermod -aG wireshark debian
root@debian12:~# ls -l /usr/bin/dumpcap
-rwsr-xr-x 1 root root 129632 Nov 17  2023 /usr/bin/dumpcap
root@debian12:~# wireshark
 ** (wireshark:41878) 17:01:55.698701 [GUI WARNING] -- could not connect to display 
 ** (wireshark:41878) 17:01:55.711316 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo DISPLAY=$DISPLAY wireshark
 ** (wireshark:41920) 17:02:07.190423 [GUI WARNING] -- could not connect to display 
 ** (wireshark:41920) 17:02:07.194492 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# ssh -X user@hostname
ssh: Could not resolve hostname hostname: Name or service not known
root@debian12:~# ssh -X debian@hostname
ssh: Could not resolve hostname hostname: Name or service not known
root@debian12:~# ssh -X root@hostname
ssh: Could not resolve hostname hostname: Name or service not known
root@debian12:~# ssh -X deb12u1@hostname
ssh: Could not resolve hostname hostname: Name or service not known
root@debian12:~# whoami
root
root@debian12:~# sudo usermod -aG wireshark root
root@debian12:~# ping -c 4 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=57 time=46.4 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=57 time=25.1 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=57 time=26.5 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=57 time=28.8 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3040ms
rtt min/avg/max/mdev = 25.115/31.705/46.381/8.574 ms
root@debian12:~# ^C
root@debian12:~# traceroute -n 8.8.8.8
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  10.0.2.2  0.735 ms  0.642 ms  0.528 ms
 2  * * *
 3  * * *
 4  * * *
 5  * * *
 6  * * *
 7  *
 * *
 8  * * *
 9  * * *
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * * *
21  * * *
22  * * *
23  * * *
24  * * *
25  * * *
26  * * *
27  * * *
28  * * *
29  * * *
30  * * *
root@debian12:~# 
root@debian12:~# sudo apt install mtr
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  mtr
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 88.2 kB of archives.
After this operation, 219 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 mtr amd64 0.95-1 [88.2 kB]
Fetched 88.2 kB in 0s (328 kB/s)
Selecting previously unselected package mtr.
(Reading database ... 209674 files and directories currently installed.)
Preparing to unpack .../archives/mtr_0.95-1_amd64.deb ...
Unpacking mtr (0.95-1) ...
Setting up mtr (0.95-1) ...
Processing triggers for menu (2.1.49) ...
Processing triggers for man-db (2.11.2-2) ...
root@debian12:~# mtr 8.8.8.8
root@debian12:~# sudo apt install qt5-default qttools5-dev-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package qt5-default is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'qt5-default' has no installation candidate
root@debian12:~# sudo chmod +x /usr/bin/dumpcap
sudo chown root:wireshark /usr/bin/dumpcap
sudo chmod u+s /usr/bin/dumpcap
root@debian12:~# adduser debianroot
Adding user `debianroot' ...
Adding new group `debianroot' (1001) ...
Adding new user `debianroot' (1001) with group `debianroot (1001)' ...
Creating home directory `/home/debianroot' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for debianroot
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] y
Adding new user `debianroot' to supplemental / extra groups `users' ...
Adding user `debianroot' to group `users' ...
root@debian12:~# su - debianroot
debianroot@debian12:~$ wireshark
 ** (wireshark:44322) 17:17:34.664210 [GUI WARNING] -- could not connect to display 
 ** (wireshark:44322) 17:17:34.665816 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
debianroot@debian12:~$ ssh -X debianroot@hostname
ssh: Could not resolve hostname hostname: Name or service not known
debianroot@debian12:~$ sudo systemctl restart ssh
[sudo] password for debianroot: 
debianroot is not in the sudoers file.
debianroot@debian12:~$ su -
Password: 
root@debian12:~# sudo systemctl restart ssh
Failed to restart ssh.service: Unit ssh.service not found.
root@debian12:~# ssh -X debianroot@localhost
ssh: connect to host localhost port 22: Connection refused
root@debian12:~# sudo ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:92:f1:64 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 73810sec preferred_lft 73810sec
    inet 192.168.1.100/24 scope global enp0s3
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe92:f164/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian12:~# systemctl status ssh
Unit ssh.service could not be found.
root@debian12:~# apt update
apt install openssh-server
Hit:1 http://security.debian.org/debian-security bookworm-security InRelease
Hit:2 http://deb.debian.org/debian bookworm InRelease          
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease  
Hit:4 https://packages.microsoft.com/repos/code stable InRelease
Reading package lists... Done                           
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  openssh-sftp-server runit-helper
Suggested packages:
  molly-guard monkeysphere ssh-askpass
The following NEW packages will be installed:
  openssh-server openssh-sftp-server runit-helper
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 528 kB of archives.
After this operation, 2,214 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://deb.debian.org/debian bookworm/main amd64 openssh-sftp-server amd64 1:9.2p1-2+deb12u3 [65.8 kB]
Get:2 http://deb.debian.org/debian bookworm/main amd64 runit-helper all 2.15.2 [6,520 B]
Get:3 http://deb.debian.org/debian bookworm/main amd64 openssh-server amd64 1:9.2p1-2+deb12u3 [456 kB]
Fetched 528 kB in 0s (1,312 kB/s)       
Preconfiguring packages ...
Selecting previously unselected package openssh-sftp-server.
(Reading database ... 209689 files and directories currently installed.)
Preparing to unpack .../openssh-sftp-server_1%3a9.2p1-2+deb12u3_amd64.deb ...
Unpacking openssh-sftp-server (1:9.2p1-2+deb12u3) ...
Selecting previously unselected package runit-helper.
Preparing to unpack .../runit-helper_2.15.2_all.deb ...
Unpacking runit-helper (2.15.2) ...
Selecting previously unselected package openssh-server.
Preparing to unpack .../openssh-server_1%3a9.2p1-2+deb12u3_amd64.deb ...
Unpacking openssh-server (1:9.2p1-2+deb12u3) ...
Setting up runit-helper (2.15.2) ...
Setting up openssh-sftp-server (1:9.2p1-2+deb12u3) ...
Setting up openssh-server (1:9.2p1-2+deb12u3) ...

Creating config file /etc/ssh/sshd_config with new version
Creating SSH2 RSA key; this may take some time ...
3072 SHA256:QxLaVuO97bF2LHLfCigq+PjyEVCszG1bt2ELuR8NT/o root@debian12 (RSA)
Creating SSH2 ECDSA key; this may take some time ...
256 SHA256:s3dJm3k3eseCO9wiiSdnRgjGDysxcyaz8+ormX7XKqE root@debian12 (ECDSA)
Creating SSH2 ED25519 key; this may take some time ...
256 SHA256:vHNDQPyOA12jmf/ybcUjFKZpqTmoFeW+aCdBtwQBSZw root@debian12 (ED25519)
Created symlink /etc/systemd/system/sshd.service → /lib/systemd/system/ssh.service.
Created symlink /etc/systemd/system/multi-user.target.wants/ssh.service → /lib/systemd/system/ssh.service.
rescue-ssh.target is a disabled or a static unit, not starting it.
ssh.socket is a disabled or a static unit, not starting it.
Processing triggers for man-db (2.11.2-2) ...
Processing triggers for ufw (0.36.2-1) ...
root@debian12:~# systemctl start ssh
systemctl enable ssh
Synchronizing state of ssh.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable ssh
root@debian12:~# nano /etc/ssh/sshd_config
root@debian12:~# systemctl restart ssh
root@debian12:~# ssh -X debianroot@localhost
The authenticity of host 'localhost (127.0.0.1)' can't be established.
ED25519 key fingerprint is SHA256:vHNDQPyOA12jmf/ybcUjFKZpqTmoFeW+aCdBtwQBSZw.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'localhost' (ED25519) to the list of known hosts.
debianroot@localhost's password: 
Linux debian12 6.1.0-25-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.106-3 (2024-08-26) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
debianroot@debian12:~$ 