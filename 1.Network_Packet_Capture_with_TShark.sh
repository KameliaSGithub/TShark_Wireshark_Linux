debian@debian12:~/Downloads/Wireshark_Linux$ sudo apt innstall tshark
[sudo] password for debian: 
debian is not in the sudoers file.
debian@debian12:~/Downloads/Wireshark_Linux$ su -
Password: 
root@debian12:~# sudo apt install tshark
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  tshark
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 169 kB of archives.
After this operation, 412 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 tshark amd64 4.0.11-1~deb12u1 [169 kB]
Fetched 169 kB in 0s (601 kB/s)  
Selecting previously unselected package tshark.
(Reading database ... 209666 files and directories currently installed.)
Preparing to unpack .../tshark_4.0.11-1~deb12u1_amd64.deb ...
Unpacking tshark (4.0.11-1~deb12u1) ...
Setting up tshark (4.0.11-1~deb12u1) ...
Processing triggers for man-db (2.11.2-2) ...
root@debian12:~# sudo tshark -i ip a -w capture.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'ip'
tshark: There is no device named "ip".
(No such device exists)

tshark: 
0 packets captured
root@debian12:~# sudo tshark -D
Running as user "root" and group "root". This could be dangerous.
1. enp0s3
2. any
3. lo (Loopback)
4. bluetooth-monitor
5. nflog
6. nfqueue
7. dbus-system
8. dbus-session
9. ciscodump (Cisco remote capture)
10. dpauxmon (DisplayPort AUX channel monitor capture)
11. randpkt (Random packet generator)
12. sdjournal (systemd Journal Export)
13. sshdump (SSH remote capture)
14. udpdump (UDP Listener remote capture)
15. wifidump (Wi-Fi remote capture)
root@debian12:~# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:92:f1:64 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 86246sec preferred_lft 86246sec
    inet6 fe80::a00:27ff:fe92:f164/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian12:~# sudo tshark -i enp0s3 -w capture.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:29361) 13:51:23.524878 [Main MESSAGE] -- Capture started.
 ** (tshark:29361) 13:51:23.525063 [Main MESSAGE] -- File: "capture.pcap"
1070 

107       
1074 -q  
^Z
[1]+  Stopped                 sudo tshark -i enp0s3 -w capture.pcap
root@debian12:~# ping google.com
PING google.com (142.250.187.142) 56(84) bytes of data.
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=1 ttl=58 time=7.41 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=2 ttl=58 time=6.32 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=3 ttl=58 time=6.36 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=4 ttl=58 time=6.64 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=5 ttl=58 time=7.38 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=6 ttl=58 time=25.1 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=7 ttl=58 time=21.0 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=8 ttl=58 time=8.25 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=9 ttl=58 time=6.76 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=10 ttl=58 time=7.02 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=11 ttl=58 time=8.52 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=12 ttl=58 time=7.66 ms
64 bytes from sof02s45-in-f14.1e100.net (142.250.187.142): icmp_seq=13 ttl=58 time=8.26 ms
^C
--- google.com ping statistics ---
13 packets transmitted, 13 received, 0% packet loss, time 12162ms
rtt min/avg/max/mdev = 6.318/9.742/25.123/5.768 ms
root@debian12:~# tshark -r capture.pcap
Running as user "root" and group "root". This could be dangerous.
    1 0.000000000    10.0.2.15 → 52.85.5.92   TLSv1.2 93 Application Data
    2 0.000420228   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [ACK] Seq=1 Ack=40 Win=65535 Len=0
    3 0.006050883   52.85.5.92 → 10.0.2.15    TLSv1.2 93 Application Data
    4 0.006109533    10.0.2.15 → 52.85.5.92   TCP 54 33346 → 443 [ACK] Seq=40 Ack=40 Win=64006 Len=0
    5 5.205908201 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
    6 5.206235120 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
    7 10.729569515 fe80::a00:27ff:fe92:f164 → ff02::2      ICMPv6 62 Router Solicitation
    8 24.843974839 fe80::a00:27ff:fe92:f164 → ff02::fb     MDNS 220 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
    9 24.844198239    10.0.2.15 → 224.0.0.251  MDNS 200 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
   10 32.783931333    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0x8cec A www.youtube.com
   11 32.783970173    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0x79eb AAAA www.youtube.com
   12 32.848886511      1.1.1.1 → 10.0.2.15    DNS 221 Standard query response 0x79eb AAAA www.youtube.com CNAME youtube-ui.l.google.com AAAA 2a00:1450:4017:811::200e AAAA 2a00:1450:4017:812::200e AAAA 2a00:1450:4017:800::200e AAAA 2a00:1450:4017:804::200e
   13 32.856399642      1.1.1.1 → 10.0.2.15    DNS 365 Standard query response 0x8cec A www.youtube.com CNAME youtube-ui.l.google.com A 142.250.184.142 A 142.250.187.110 A 142.250.187.142 A 142.250.187.174 A 172.217.17.110 A 172.217.17.142 A 172.217.20.78 A 216.58.212.14 A 216.58.212.46 A 216.58.213.110 A 142.251.140.14 A 142.251.140.46 A 142.251.140.78 A 142.251.141.46 A 172.217.169.174 A 172.217.169.206
   14 32.859220521    10.0.2.15 → 142.250.184.142 QUIC 1399 0-RTT, DCID=a3f989c63766fca5ae2b8d22cc, SCID=c0c312
   15 32.895205030    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0x589f A www.youtube.com
   16 32.941296331 142.250.184.142 → 10.0.2.15    QUIC 1399 Protected Payload (KP0), DCID=c0c312
   17 32.941296672 142.250.184.142 → 10.0.2.15    QUIC 657 Protected Payload (KP0), DCID=c0c312
   18 32.941296740 142.250.184.142 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=c0c312
   19 32.943553921    10.0.2.15 → 142.250.184.142 QUIC 155 Protected Payload (KP0), DCID=e3f989c63766fca5
   20 32.944096040    10.0.2.15 → 142.250.184.142 QUIC 1399 Protected Payload (KP0), DCID=e3f989c63766fca5
   21 32.944514322    10.0.2.15 → 142.250.184.142 QUIC 1308 Protected Payload (KP0), DCID=e3f989c63766fca5
   22 32.947176212 142.250.184.142 → 10.0.2.15    QUIC 165 Protected Payload (KP0), DCID=c0c312
   23 32.957384605 142.250.184.142 → 10.0.2.15    QUIC 72 Protected Payload (KP0), DCID=c0c312
   24 32.957694990    10.0.2.15 → 142.250.184.142 QUIC 73 Protected Payload (KP0), DCID=e3f989c63766fca5
   25 32.964675545      1.1.1.1 → 10.0.2.15    DNS 365 Standard query response 0x589f A www.youtube.com CNAME youtube-ui.l.google.com A 142.250.184.142 A 142.250.187.110 A 142.250.187.142 A 142.250.187.174 A 172.217.17.110 A 172.217.17.142 A 172.217.20.78 A 216.58.212.14 A 216.58.212.46 A 216.58.213.110 A 142.251.140.14 A 142.251.140.46 A 142.251.140.78 A 142.251.141.46 A 172.217.169.174 A 172.217.169.206
   26 32.965509791    10.0.2.15 → 142.250.184.142 TCP 74 52004 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=1284960800 TSecr=0 WS=128
   27 32.968451277 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
   28 32.968516106    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
   29 32.976293709    10.0.2.15 → 142.250.184.142 TLSv1 714 Client Hello
   30 32.976594985    10.0.2.15 → 142.250.184.142 TLSv1.3 60 Change Cipher Spec
   31 32.976637891    10.0.2.15 → 142.250.184.142 TLSv1.3 224 Application Data
   32 32.976958128 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=1 Ack=661 Win=65535 Len=0
   33 32.976958422 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=1 Ack=667 Win=65535 Len=0
   34 32.976958466 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=1 Ack=837 Win=65535 Len=0
   35 33.003862211 142.250.184.142 → 10.0.2.15    QUIC 277 Protected Payload (KP0), DCID=c0c312
   36 33.004265484 142.250.184.142 → 10.0.2.15    QUIC 92 Protected Payload (KP0), DCID=c0c312
   37 33.004501212    10.0.2.15 → 142.250.184.142 QUIC 78 Protected Payload (KP0), DCID=e3f989c63766fca5
   38 33.004654972    10.0.2.15 → 142.250.184.142 QUIC 73 Protected Payload (KP0), DCID=e3f989c63766fca5
   39 33.019810350 142.250.184.142 → 10.0.2.15    TLSv1.3 915 Server Hello, Change Cipher Spec, Application Data, Application Data, Application Data, Application Data
   40 33.019870426    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [ACK] Seq=837 Ack=862 Win=63714 Len=0
   41 33.021447861    10.0.2.15 → 142.250.184.142 TLSv1.3 138 Application Data, Application Data
   42 33.021825562 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=862 Ack=921 Win=65535 Len=0
   43 33.022946635    10.0.2.15 → 142.250.184.142 TLSv1.3 85 Application Data
   44 33.023330152 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=862 Ack=952 Win=65535 Len=0
   45 33.032399844 142.250.184.142 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=c0c312
   46 58.873042599    10.0.2.15 → 52.85.5.92   TLSv1.2 93 Application Data
   47 58.873490752   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [ACK] Seq=40 Ack=79 Win=65535 Len=0
   48 58.879359793   52.85.5.92 → 10.0.2.15    TLSv1.2 93 Application Data
   49 58.879448273    10.0.2.15 → 52.85.5.92   TCP 54 33346 → 443 [ACK] Seq=79 Ack=79 Win=64006 Len=0
   50 64.056787523 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
   51 64.057012008 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
   52 88.830417614    10.0.2.15 → 152.199.19.160 TCP 74 55694 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=162775131 TSecr=0 WS=128
   53 88.837548643 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
   54 88.837631082    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
   55 88.838557662    10.0.2.15 → 152.199.19.160 TLSv1 2121 Client Hello
   56 88.838853052 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
   57 88.838853394 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=1 Ack=2068 Win=65535 Len=0
   58 88.842914803 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
   59 88.843015518    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=2068 Ack=100 Win=64141 Len=0
   60 88.843505619    10.0.2.15 → 152.199.19.160 TLSv1.3 935 Change Cipher Spec, Client Hello
   61 88.843805916 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=100 Ack=2949 Win=65535 Len=0
   62 88.858045580 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
   63 88.858196306    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=2949 Ack=4196 Win=62780 Len=0
   64 88.859149385 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
   65 88.859205398    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=2949 Ack=6549 Win=62780 Len=0
   66 88.870783504    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
   67 88.871088325 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=6549 Ack=3023 Win=65535 Len=0
   68 88.871110854    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
   69 88.871341556 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=6549 Ack=3115 Win=65535 Len=0
   70 88.871585357    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
   71 88.871856032 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=6549 Ack=3377 Win=65535 Len=0
   72 88.873383042 152.199.19.160 → 10.0.2.15    TLSv1.3 309 Application Data
   73 88.874149897 152.199.19.160 → 10.0.2.15    TLSv1.3 417 Application Data, Application Data, Application Data
   74 88.874556536    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3377 Ack=7167 Win=62780 Len=0
   75 88.874599566 152.199.19.160 → 10.0.2.15    TLSv1.3 85 Application Data
   76 88.874734566    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
   77 88.874995285 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=7198 Ack=3408 Win=65535 Len=0
   78 88.879363951 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
   79 88.879497162    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=10670 Win=62780 Len=0
   80 88.881291023 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 55694 [PSH, ACK] Seq=10670 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
   81 88.881454042    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=14142 Win=62780 Len=0
   82 88.886247140 152.199.19.160 → 10.0.2.15    TCP 5818 443 → 55694 [PSH, ACK] Seq=14142 Ack=3408 Win=65535 Len=5764 [TCP segment of a reassembled PDU]
   83 88.886453854    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=19906 Win=62780 Len=0
   84 88.889212577 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 55694 [PSH, ACK] Seq=19906 Ack=3408 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
   85 88.889261456    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=22730 Win=62780 Len=0
   86 88.893115813 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
   87 88.893250966    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=26202 Win=62780 Len=0
   88 88.894825541 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 55694 [PSH, ACK] Seq=26202 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
   89 88.895023886    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=29674 Win=62780 Len=0
   90 88.896134578 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 55694 [PSH, ACK] Seq=29674 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
   91 88.896303042    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=33146 Win=62780 Len=0
   92 88.899021751 152.199.19.160 → 10.0.2.15    TCP 2346 443 → 55694 [PSH, ACK] Seq=33146 Ack=3408 Win=65535 Len=2292 [TCP segment of a reassembled PDU]
   93 88.899073085    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=35438 Win=62780 Len=0
   94 88.901406325 152.199.19.160 → 10.0.2.15    TCP 4290 443 → 55694 [PSH, ACK] Seq=35438 Ack=3408 Win=65535 Len=4236 [TCP segment of a reassembled PDU]
   95 88.901561540    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=39674 Win=62780 Len=0
   96 88.904142263 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
   97 88.904268208    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=43146 Win=62780 Len=0
   98 88.907761373 152.199.19.160 → 10.0.2.15    TCP 6466 443 → 55694 [PSH, ACK] Seq=43146 Ack=3408 Win=65535 Len=6412 [TCP segment of a reassembled PDU]
   99 88.907956588    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=49558 Win=62780 Len=0
  100 88.907970055 152.199.19.160 → 10.0.2.15    TLSv1.3 1390 Application Data
  101 89.050215201    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=50894 Win=62780 Len=0
  102 91.883233993    10.0.2.15 → 142.250.184.142 TLSv1.3 93 Application Data
  103 91.883564838 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=862 Ack=991 Win=65535 Len=0
  104 91.887367027 142.250.184.142 → 10.0.2.15    TLSv1.3 93 Application Data
  105 91.938171313    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [ACK] Seq=991 Ack=901 Win=63714 Len=0
  106 112.062887652    10.0.2.15 → 52.85.5.92   TLSv1.2 93 Application Data
  107 112.063698524   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [ACK] Seq=79 Ack=118 Win=65535 Len=0
  108 112.063790494    10.0.2.15 → 52.85.5.92   TLSv1.2 78 Application Data
  109 112.063869001    10.0.2.15 → 52.85.5.92   TCP 54 33346 → 443 [FIN, ACK] Seq=142 Ack=79 Win=64006 Len=0
  110 112.064272376   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [ACK] Seq=79 Ack=142 Win=65535 Len=0
  111 112.064513182   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [ACK] Seq=79 Ack=143 Win=65535 Len=0
  112 112.067447102   52.85.5.92 → 10.0.2.15    TCP 60 443 → 33346 [FIN, ACK] Seq=79 Ack=143 Win=65535 Len=0
  113 112.067543493    10.0.2.15 → 52.85.5.92   TCP 54 33346 → 443 [ACK] Seq=143 Ack=80 Win=64006 Len=0
  114 117.326632670 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  115 117.327762516 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  116 134.962672127    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 55694 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  117 134.962971824 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 55694 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  118 143.466690427 34.107.243.93 → 10.0.2.15    TLSv1.2 78 Application Data
  119 143.467160943    10.0.2.15 → 34.107.243.93 TLSv1.2 82 Application Data
  120 143.467988511 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=25 Ack=29 Win=65535 Len=0
  121 148.530341524 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  122 148.531040835 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  123 149.915084399    10.0.2.15 → 142.250.184.142 TLSv1.3 93 Application Data
  124 149.915420340 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=901 Ack=1030 Win=65535 Len=0
  125 149.921938815 142.250.184.142 → 10.0.2.15    TLSv1.3 93 Application Data
  126 149.921994950    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [ACK] Seq=1030 Ack=940 Win=63714 Len=0
  127 180.021325665    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 55694 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  128 180.021565444 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 55694 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  129 185.149335175 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  130 185.149774221 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  131 203.066944944    10.0.2.15 → 142.250.184.142 TLSv1.3 93 Application Data
  132 203.067216851    10.0.2.15 → 142.250.184.142 TLSv1.3 78 Application Data
  133 203.067252110    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [FIN, ACK] Seq=1093 Ack=940 Win=63714 Len=0
  134 203.067313276 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=940 Ack=1069 Win=65535 Len=0
  135 203.067457059 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=940 Ack=1093 Win=65535 Len=0
  136 203.067457196 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [ACK] Seq=940 Ack=1094 Win=65535 Len=0
  137 203.072918924 142.250.184.142 → 10.0.2.15    TCP 60 443 → 52004 [FIN, ACK] Seq=940 Ack=1094 Win=65535 Len=0
  138 203.072973468    10.0.2.15 → 142.250.184.142 TCP 54 52004 → 443 [ACK] Seq=1094 Ack=941 Win=63714 Len=0
  139 225.074987967    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 55694 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  140 225.075208899 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 55694 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  141 230.216744910 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  142 230.217480799 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  143 242.087507976 fe80::a00:27ff:fe92:f164 → ff02::2      ICMPv6 62 Router Solicitation
  144 269.331034628 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  145 269.331253324    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [ACK] Seq=3408 Ack=50975 Win=62780 Len=0
  146 269.331036349 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [FIN, ACK] Seq=50975 Ack=3408 Win=65535 Len=0
  147 269.331902051    10.0.2.15 → 152.199.19.160 TCP 54 55694 → 443 [FIN, ACK] Seq=3408 Ack=50976 Win=62780 Len=0
  148 269.332630229 152.199.19.160 → 10.0.2.15    TCP 60 443 → 55694 [ACK] Seq=50976 Ack=3409 Win=65535 Len=0
  149 274.496926821 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  150 274.497252558 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  151 280.944899111 fe80::a00:27ff:fe92:f164 → ff02::fb     MDNS 220 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  152 280.945522113    10.0.2.15 → 224.0.0.251  MDNS 200 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  153 388.924722434    10.0.2.15 → 152.199.19.160 TCP 74 54734 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163075225 TSecr=0 WS=128
  154 388.928086167 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  155 388.928143340    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  156 388.928788891    10.0.2.15 → 152.199.19.160 TLSv1 2057 Client Hello
  157 388.929156939 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  158 388.929157155 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=1 Ack=2004 Win=65535 Len=0
  159 388.936203147 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  160 388.936250083    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=2004 Ack=100 Win=64141 Len=0
  161 388.936650154    10.0.2.15 → 152.199.19.160 TLSv1.3 871 Change Cipher Spec, Client Hello
  162 388.937009523 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=100 Ack=2821 Win=65535 Len=0
  163 388.952135161 152.199.19.160 → 10.0.2.15    TLSv1.3 4434 Server Hello, Application Data
  164 388.952249621    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=2821 Ack=4480 Win=62780 Len=0
  165 388.952391071 152.199.19.160 → 10.0.2.15    TLSv1.3 2123 Application Data, Application Data, Application Data
  166 388.952408241    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=2821 Ack=6549 Win=62780 Len=0
  167 388.952842806    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  168 388.953165694    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  169 388.953269821 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=6549 Ack=2895 Win=65535 Len=0
  170 388.953417961 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=6549 Ack=2987 Win=65535 Len=0
  171 388.953565452    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  172 388.953798868 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=6549 Ack=3249 Win=65535 Len=0
  173 388.959478299 152.199.19.160 → 10.0.2.15    TLSv1.3 309 Application Data
  174 388.959854438 152.199.19.160 → 10.0.2.15    TLSv1.3 448 Application Data, Application Data, Application Data, Application Data
  175 388.960019290    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3249 Ack=7198 Win=62780 Len=0
  176 388.960146518    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  177 388.960393017 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=7198 Ack=3280 Win=65535 Len=0
  178 388.965875742 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
  179 388.966026415    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=10670 Win=62780 Len=0
  180 388.968136019 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 54734 [PSH, ACK] Seq=10670 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  181 388.968285465    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=14142 Win=62780 Len=0
  182 388.972642070 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 54734 [PSH, ACK] Seq=14142 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  183 388.972768457    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=17614 Win=62780 Len=0
  184 388.975355591 152.199.19.160 → 10.0.2.15    TCP 5170 443 → 54734 [PSH, ACK] Seq=17614 Ack=3280 Win=65535 Len=5116 [TCP segment of a reassembled PDU]
  185 388.975523739    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=22730 Win=62780 Len=0
  186 388.977111424 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  187 388.977275300    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=26202 Win=62780 Len=0
  188 389.008111033 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 54734 [PSH, ACK] Seq=26202 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  189 389.008403265    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=29674 Win=62780 Len=0
  190 389.024049832 152.199.19.160 → 10.0.2.15    TCP 6998 443 → 54734 [PSH, ACK] Seq=29674 Ack=3280 Win=65535 Len=6944 [TCP segment of a reassembled PDU]
  191 389.024240965    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=36618 Win=62780 Len=0
  192 389.028774424 152.199.19.160 → 10.0.2.15    TCP 3110 443 → 54734 [PSH, ACK] Seq=36618 Ack=3280 Win=65535 Len=3056 [TCP segment of a reassembled PDU]
  193 389.028816816    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=39674 Win=62780 Len=0
  194 389.033951453 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  195 389.034123989    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=43146 Win=62780 Len=0
  196 389.056791214 152.199.19.160 → 10.0.2.15    TLSv1.3 7802 Application Data
  197 389.057008149    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [ACK] Seq=3280 Ack=50894 Win=62780 Len=0
  198 394.045910574 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  199 394.046466114 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  200 434.065679378    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 54734 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  201 434.065833099 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 54734 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  202 439.093829354 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  203 439.094019742 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  204 443.774392706 34.107.243.93 → 10.0.2.15    TLSv1.2 78 Application Data
  205 443.775020674    10.0.2.15 → 34.107.243.93 TLSv1.2 82 Application Data
  206 443.775765754 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=49 Ack=57 Win=65535 Len=0
  207 481.075873608    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 54734 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  208 481.086022346 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 54734 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  209 486.198623141 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  210 486.199435852 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  211 526.152633256    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 54734 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  212 526.152959059 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 54734 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  213 564.843851654    10.0.2.15 → 1.1.1.1      DNS 88 Standard query 0xe3ff A contile.services.mozilla.com
  214 564.843890086    10.0.2.15 → 1.1.1.1      DNS 88 Standard query 0x35f1 AAAA contile.services.mozilla.com
  215 564.850459606      1.1.1.1 → 10.0.2.15    DNS 104 Standard query response 0xe3ff A contile.services.mozilla.com A 34.117.188.166
  216 564.850460010      1.1.1.1 → 10.0.2.15    DNS 169 Standard query response 0x35f1 AAAA contile.services.mozilla.com SOA ns-679.awsdns-20.net
  217 564.853905207    10.0.2.15 → 34.117.188.166 QUIC 1399 Initial, DCID=ce407e07f9dce623, SCID=eec157, PKN: 0, CRYPTO
  218 564.884900143 34.117.188.166 → 10.0.2.15    QUIC 1399 Initial, DCID=eec157, SCID=ee407e07f9dce623, PKN: 1, ACK, PADDING
  219 564.896060475 34.117.188.166 → 10.0.2.15    QUIC 1399 Protected Payload (KP0), DCID=eec157
  220 564.898919907    10.0.2.15 → 34.117.188.166 QUIC 196 Protected Payload (KP0), DCID=ee407e07f9dce623
  221 564.902903239    10.0.2.15 → 34.117.188.166 QUIC 198 Protected Payload (KP0), DCID=ee407e07f9dce623
  222 564.904159530 34.117.188.166 → 10.0.2.15    QUIC 613 Protected Payload (KP0), DCID=eec157
  223 564.904160167 34.117.188.166 → 10.0.2.15    QUIC 165 Protected Payload (KP0), DCID=eec157
  224 564.905416193    10.0.2.15 → 34.117.188.166 QUIC 73 Protected Payload (KP0), DCID=ee407e07f9dce623
  225 564.906058604 34.117.188.166 → 10.0.2.15    QUIC 72 Protected Payload (KP0), DCID=eec157
  226 564.930468432    10.0.2.15 → 34.117.188.166 QUIC 74 Protected Payload (KP0), DCID=ee407e07f9dce623
  227 565.155971847 34.117.188.166 → 10.0.2.15    QUIC 158 Protected Payload (KP0), DCID=eec157
  228 565.155972694 34.117.188.166 → 10.0.2.15    QUIC 158 Protected Payload (KP0), DCID=eec157
  229 565.157009990    10.0.2.15 → 34.117.188.166 QUIC 80 Protected Payload (KP0), DCID=ee407e07f9dce623
  230 565.186276555 34.117.188.166 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=eec157
  231 569.839148998 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  232 569.839149475 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [FIN, ACK] Seq=50975 Ack=3280 Win=65535 Len=0
  233 569.839723807    10.0.2.15 → 152.199.19.160 TCP 54 54734 → 443 [FIN, ACK] Seq=3280 Ack=50976 Win=62780 Len=0
  234 569.840339275 152.199.19.160 → 10.0.2.15    TCP 60 443 → 54734 [ACK] Seq=50976 Ack=3281 Win=65535 Len=0
  235 569.909877156 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  236 569.910040523 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  237 627.865194190    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0x72da A play.google.com
  238 627.865233524    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0xc8d8 AAAA play.google.com
  239 627.871807240      1.1.1.1 → 10.0.2.15    DNS 103 Standard query response 0xc8d8 AAAA play.google.com AAAA 2a00:1450:4017:816::200e
  240 627.900756563      1.1.1.1 → 10.0.2.15    DNS 91 Standard query response 0x72da A play.google.com A 142.251.141.46
  241 627.903114024    10.0.2.15 → 142.251.141.46 QUIC 1399 0-RTT, DCID=41eef8e386246a07, SCID=c7d153
  242 627.934246027 142.251.141.46 → 10.0.2.15    QUIC 1399 Initial, DCID=c7d153, SCID=e1eef8e386246a07, PKN: 1, ACK, PADDING
  243 627.947168408 142.251.141.46 → 10.0.2.15    QUIC 1399 Protected Payload (KP0), DCID=c7d153
  244 627.954023137 142.251.141.46 → 10.0.2.15    QUIC 657 Protected Payload (KP0), DCID=c7d153
  245 627.954023405 142.251.141.46 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=c7d153
  246 627.955557455    10.0.2.15 → 142.251.141.46 QUIC 155 Protected Payload (KP0), DCID=e1eef8e386246a07
  247 627.956009519    10.0.2.15 → 142.251.141.46 QUIC 1221 Protected Payload (KP0), DCID=e1eef8e386246a07
  248 627.958668285 142.251.141.46 → 10.0.2.15    QUIC 165 Protected Payload (KP0), DCID=c7d153
  249 627.981297604    10.0.2.15 → 142.251.141.46 QUIC 74 Protected Payload (KP0), DCID=e1eef8e386246a07
  250 627.984565626 142.251.141.46 → 10.0.2.15    QUIC 72 Protected Payload (KP0), DCID=c7d153
  251 628.010108831    10.0.2.15 → 142.251.141.46 QUIC 74 Protected Payload (KP0), DCID=e1eef8e386246a07
  252 628.014200131 142.251.141.46 → 10.0.2.15    QUIC 413 Protected Payload (KP0), DCID=c7d153
  253 628.014731203    10.0.2.15 → 142.251.141.46 QUIC 78 Protected Payload (KP0), DCID=e1eef8e386246a07
  254 628.015207194 142.251.141.46 → 10.0.2.15    QUIC 268 Protected Payload (KP0), DCID=c7d153
  255 628.015419228    10.0.2.15 → 142.251.141.46 QUIC 73 Protected Payload (KP0), DCID=e1eef8e386246a07
  256 628.043621088 142.251.141.46 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=c7d153
  257 632.884862516 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  258 632.885619226 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  259 689.089083653    10.0.2.15 → 152.199.19.160 TCP 74 41082 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163375390 TSecr=0 WS=128
  260 689.339739211    10.0.2.15 → 152.199.19.160 TCP 74 41096 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163375640 TSecr=0 WS=128
  261 690.133847914    10.0.2.15 → 152.199.19.160 TCP 74 [TCP Retransmission] 41082 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163376434 TSecr=0 WS=128
  262 690.379321568    10.0.2.15 → 152.199.19.160 TCP 74 [TCP Retransmission] 41096 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163376680 TSecr=0 WS=128
  263 690.427974493 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  264 690.428059300    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  265 690.427974872 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  266 690.428184579    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  267 690.428980022    10.0.2.15 → 152.199.19.160 TLSv1 2153 Client Hello
  268 690.429392695 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  269 690.429393021 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [ACK] Seq=1 Ack=2100 Win=65535 Len=0
  270 690.430179561    10.0.2.15 → 152.199.19.160 TLSv1 2089 Client Hello
  271 690.430547688 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  272 690.430547941 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=1 Ack=2036 Win=65535 Len=0
  273 690.674920925 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  274 690.674974119    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=2036 Ack=100 Win=64141 Len=0
  275 690.674921308 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  276 690.675026876    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=2100 Ack=100 Win=64141 Len=0
  277 690.675355750    10.0.2.15 → 152.199.19.160 TLSv1.3 903 Change Cipher Spec, Client Hello
  278 690.675642043 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=100 Ack=2885 Win=65535 Len=0
  279 690.675668341    10.0.2.15 → 152.199.19.160 TLSv1.3 967 Change Cipher Spec, Client Hello
  280 690.675962932 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [ACK] Seq=100 Ack=3013 Win=65535 Len=0
  281 690.823660376 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  282 690.823794966    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=2885 Ack=4196 Win=62780 Len=0
  283 691.032423200 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  284 691.032654766    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=2885 Ack=6549 Win=62780 Len=0
  285 691.033349304    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  286 691.034032040 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=6549 Ack=2959 Win=65535 Len=0
  287 691.034165453    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  288 691.034608222    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  289 691.034619974 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=6549 Ack=3051 Win=65535 Len=0
  290 691.035081310 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=6549 Ack=3313 Win=65535 Len=0
  291 691.036067277 152.199.19.160 → 10.0.2.15    TLSv1.3 2878 Server Hello, Application Data
  292 691.036292477    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=3013 Ack=2924 Win=62780 Len=0
  293 691.040745608 152.199.19.160 → 10.0.2.15    TCP 1326 443 → 41082 [PSH, ACK] Seq=2924 Ack=3013 Win=65535 Len=1272 [TCP segment of a reassembled PDU]
  294 691.050715097 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  295 691.050876312    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=3013 Ack=6549 Win=62780 Len=0
  296 691.051436860    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  297 691.052003421 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [ACK] Seq=6549 Ack=3087 Win=65535 Len=0
  298 691.330362090 152.199.19.160 → 10.0.2.15    TLSv1.3 703 Application Data, Application Data, Application Data, Application Data, Application Data
  299 691.330362582 152.199.19.160 → 10.0.2.15    TLSv1.3 309 Application Data
  300 691.330865277    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  301 691.331053192 152.199.19.160 → 10.0.2.15    TLSv1.3 417 Application Data, Application Data, Application Data
  302 691.331221042    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=3087 Ack=7167 Win=62780 Len=0
  303 691.331403664 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=7198 Ack=3344 Win=65535 Len=0
  304 691.349433008 152.199.19.160 → 10.0.2.15    TLSv1.3 2878 Application Data, Application Data
  305 691.349506191    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=10022 Win=62780 Len=0
  306 691.349728129 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=10022 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  307 691.349754764    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=12846 Win=62780 Len=0
  308 691.359477010 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=12846 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  309 691.359519387    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=15670 Win=62780 Len=0
  310 691.359477302 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=15670 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  311 691.359663557    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=18494 Win=62780 Len=0
  312 691.362339099 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=18494 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  313 691.362481702    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=21318 Win=62780 Len=0
  314 691.384126933 152.199.19.160 → 10.0.2.15    TLSv1.3 4290 Application Data, Application Data, Application Data
  315 691.384321126    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=25554 Win=62780 Len=0
  316 691.386908918 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=25554 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  317 691.386947306    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=28378 Win=62780 Len=0
  318 691.386909272 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=28378 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  319 691.387062920    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=31202 Win=62780 Len=0
  320 691.390034978 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=31202 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  321 691.390081024    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=34026 Win=62780 Len=0
  322 691.400454039 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=34026 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  323 691.400500491    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=36850 Win=62780 Len=0
  324 691.405877856 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=36850 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  325 691.405927506    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=39674 Win=62780 Len=0
  326 691.419979425 152.199.19.160 → 10.0.2.15    TLSv1.3 2878 Application Data, Application Data, Application Data
  327 691.420027134    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=42498 Win=62780 Len=0
  328 691.419979719 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=42498 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  329 691.420232785    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=45322 Win=62780 Len=0
  330 691.425451769 152.199.19.160 → 10.0.2.15    TCP 2878 443 → 41096 [PSH, ACK] Seq=45322 Ack=3344 Win=65535 Len=2824 [TCP segment of a reassembled PDU]
  331 691.425499135    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=48146 Win=62780 Len=0
  332 691.425452075 152.199.19.160 → 10.0.2.15    TLSv1.3 2802 Application Data
  333 691.425669514    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [ACK] Seq=3344 Ack=50894 Win=62780 Len=0
  334 712.275034136 fe80::a00:27ff:fe92:f164 → ff02::2      ICMPv6 62 Router Solicitation
  335 737.075067134    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41096 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  336 737.075421344 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41096 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  337 737.075674959    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7167 Win=62780 Len=0
  338 737.076056093 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7167 Ack=3087 Win=65535 Len=0
  339 742.202280683 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  340 742.203237532 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  341 743.973321532 34.107.243.93 → 10.0.2.15    TLSv1.2 78 Application Data
  342 743.973693214    10.0.2.15 → 34.107.243.93 TLSv1.2 82 Application Data
  343 743.974682216 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=73 Ack=85 Win=65535 Len=0
  344 750.833887161 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  345 750.833887898 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41082 [FIN, ACK] Seq=7248 Ack=3087 Win=65535 Len=0
  346 750.882251614    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [ACK] Seq=3087 Ack=7249 Win=62780 Len=0
  347 782.142343362    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41096 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  348 782.142772258 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41096 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  349 793.060055746 fe80::a00:27ff:fe92:f164 → ff02::fb     MDNS 220 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  350 793.060645411    10.0.2.15 → 224.0.0.251  MDNS 200 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  351 795.954212597    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7249 Win=62780 Len=0
  352 795.954459172 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7249 Ack=3087 Win=65535 Len=0
  353 801.074524878 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  354 801.075098744 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  355 827.187008153    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41096 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  356 827.188068178 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41096 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  357 841.552041201    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7249 Win=62780 Len=0
  358 841.552476818 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7249 Ack=3087 Win=65535 Len=0
  359 849.634720581    10.0.2.15 → 77.236.182.128 NTP 90 NTP Version 4, client
  360 849.644489769 77.236.182.128 → 10.0.2.15    NTP 90 NTP Version 4, server
  361 854.835054364 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  362 854.835903383 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  363 872.266929476    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41096 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  364 872.267134511 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41096 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  365 872.578154837 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  366 872.578155550 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [FIN, ACK] Seq=50975 Ack=3344 Win=65535 Len=0
  367 872.578935501    10.0.2.15 → 152.199.19.160 TCP 54 41096 → 443 [FIN, ACK] Seq=3344 Ack=50976 Win=62780 Len=0
  368 872.579751504 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41096 [ACK] Seq=50976 Ack=3345 Win=65535 Len=0
  369 886.585486109    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7249 Win=62780 Len=0
  370 886.585978617 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7249 Ack=3087 Win=65535 Len=0
  371 931.650276495    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7249 Win=62780 Len=0
  372 931.650768704 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7249 Ack=3087 Win=65535 Len=0
  373 936.762805193 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  374 936.763345131 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  375 976.690448399    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41082 → 443 [ACK] Seq=3086 Ack=7249 Win=62780 Len=0
  376 976.690856535 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41082 [ACK] Seq=7249 Ack=3087 Win=65535 Len=0
  377 981.810896837 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  378 981.811757795 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  379 991.459852178    10.0.2.15 → 152.199.19.160 TCP 54 41082 → 443 [RST, ACK] Seq=3087 Ack=7249 Win=62780 Len=0
  380 991.460075526    10.0.2.15 → 152.199.19.160 TCP 74 39098 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163677761 TSecr=0 WS=128
  381 991.468721160 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  382 991.468779946    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  383 991.469401945    10.0.2.15 → 152.199.19.160 TLSv1 2057 Client Hello
  384 991.469793275 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  385 991.469793448 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=1 Ack=2004 Win=65535 Len=0
  386 991.475153058 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  387 991.475198200    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=2004 Ack=100 Win=64141 Len=0
  388 991.475606426    10.0.2.15 → 152.199.19.160 TLSv1.3 871 Change Cipher Spec, Client Hello
  389 991.475955156 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=100 Ack=2821 Win=65535 Len=0
  390 991.482763300 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  391 991.482882564    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=2821 Ack=4196 Win=62780 Len=0
  392 991.483765580 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  393 991.483805013    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=2821 Ack=6549 Win=62780 Len=0
  394 991.484124236    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  395 991.484306868    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  396 991.484376886 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=6549 Ack=2895 Win=65535 Len=0
  397 991.484487947 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=6549 Ack=2987 Win=65535 Len=0
  398 991.484524015    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  399 991.484883126 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=6549 Ack=3249 Win=65535 Len=0
  400 991.486714590 152.199.19.160 → 10.0.2.15    TLSv1.3 309 Application Data
  401 991.487391692 152.199.19.160 → 10.0.2.15    TLSv1.3 417 Application Data, Application Data, Application Data
  402 991.487547137    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3249 Ack=7167 Win=62780 Len=0
  403 991.487669921    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  404 991.487934131 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=7167 Ack=3280 Win=65535 Len=0
  405 991.488420100 152.199.19.160 → 10.0.2.15    TLSv1.3 85 Application Data
  406 991.494179116 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
  407 991.494305150    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=10670 Win=62780 Len=0
  408 991.495834369 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=10670 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  409 991.495994759    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=14142 Win=62780 Len=0
  410 991.499005565 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=14142 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  411 991.499161678    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=17614 Win=62780 Len=0
  412 991.502119677 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=17614 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  413 991.502292727    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=21086 Win=62780 Len=0
  414 991.504218587 152.199.19.160 → 10.0.2.15    TCP 1698 443 → 39098 [PSH, ACK] Seq=21086 Ack=3280 Win=65535 Len=1644 [TCP segment of a reassembled PDU]
  415 991.504290890    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=22730 Win=62780 Len=0
  416 991.504219335 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  417 991.504427918    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=26202 Win=62780 Len=0
  418 991.519608664 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=26202 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  419 991.519869871    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=29674 Win=62780 Len=0
  420 991.529528193 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=29674 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  421 991.529719498    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=33146 Win=62780 Len=0
  422 991.532320908 152.199.19.160 → 10.0.2.15    TCP 5170 443 → 39098 [PSH, ACK] Seq=33146 Ack=3280 Win=65535 Len=5116 [TCP segment of a reassembled PDU]
  423 991.532499332    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=38262 Win=62780 Len=0
  424 991.535345237 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  425 991.535469136    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=41734 Win=62780 Len=0
  426 991.546015820 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=41734 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  427 991.546191053    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=45206 Win=62780 Len=0
  428 991.549760787 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 39098 [PSH, ACK] Seq=45206 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  429 991.549761111 152.199.19.160 → 10.0.2.15    TLSv1.3 2270 Application Data
  430 991.550012118    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [ACK] Seq=3280 Ack=50894 Win=62780 Len=0
  431 1038.146090487    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 39098 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  432 1038.146422553 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 39098 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  433 1043.267800628 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  434 1043.268469611 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  435 1044.208425232 34.107.243.93 → 10.0.2.15    TLSv1.2 78 Application Data
  436 1044.208984463    10.0.2.15 → 34.107.243.93 TLSv1.2 82 Application Data
  437 1044.209921659 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=97 Ack=113 Win=65535 Len=0
  438 1083.187625985    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 39098 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  439 1083.188184418 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 39098 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  440 1088.308236357 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  441 1088.308546782 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  442 1128.260506700    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 39098 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  443 1128.260998929 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 39098 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  444 1133.410205698 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  445 1133.410808449 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  446 1172.208683762 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  447 1172.208684558 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [FIN, ACK] Seq=50975 Ack=3280 Win=65535 Len=0
  448 1172.209793685    10.0.2.15 → 152.199.19.160 TCP 54 39098 → 443 [FIN, ACK] Seq=3280 Ack=50976 Win=62780 Len=0
  449 1172.210749134 152.199.19.160 → 10.0.2.15    TCP 60 443 → 39098 [ACK] Seq=50976 Ack=3281 Win=65535 Len=0
  450 1177.420674369 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  451 1177.421179631 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  452 1291.574282132    10.0.2.15 → 152.199.19.160 TCP 74 34234 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=163977875 TSecr=0 WS=128
  453 1291.581453616 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  454 1291.581509968    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  455 1291.582199720    10.0.2.15 → 152.199.19.160 TLSv1 2089 Client Hello
  456 1291.582488090 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  457 1291.582577794 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=1 Ack=2036 Win=65535 Len=0
  458 1291.586010542 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  459 1291.586054724    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=2036 Ack=100 Win=64141 Len=0
  460 1291.586368999    10.0.2.15 → 152.199.19.160 TLSv1.3 903 Change Cipher Spec, Client Hello
  461 1291.586609957 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=100 Ack=2885 Win=65535 Len=0
  462 1291.592976158 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  463 1291.593135654    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=2885 Ack=4196 Win=62780 Len=0
  464 1291.595003918 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  465 1291.595047220    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=2885 Ack=6549 Win=62780 Len=0
  466 1291.595394815    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  467 1291.595574667    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  468 1291.595727767 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=6549 Ack=2959 Win=65535 Len=0
  469 1291.595735240    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  470 1291.595871609 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=6549 Ack=3051 Win=65535 Len=0
  471 1291.598157452 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=6549 Ack=3313 Win=65535 Len=0
  472 1291.610165792 152.199.19.160 → 10.0.2.15    TLSv1.3 703 Application Data, Application Data, Application Data, Application Data, Application Data
  473 1291.610166083 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
  474 1291.610166120 152.199.19.160 → 10.0.2.15    TCP 2974 443 → 34234 [ACK] Seq=10670 Ack=3313 Win=65535 Len=2920 [TCP segment of a reassembled PDU]
  475 1291.610308347    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3313 Ack=13590 Win=62780 Len=0
  476 1291.610465887 152.199.19.160 → 10.0.2.15    TCP 606 443 → 34234 [PSH, ACK] Seq=13590 Ack=3313 Win=65535 Len=552 [TCP segment of a reassembled PDU]
  477 1291.614010475 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 34234 [PSH, ACK] Seq=14142 Ack=3313 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  478 1291.614921607    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  479 1291.615433236 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=17614 Ack=3344 Win=65535 Len=0
  480 1291.629084036 152.199.19.160 → 10.0.2.15    TLSv1.3 6526 Application Data, Application Data
  481 1291.629084375 152.199.19.160 → 10.0.2.15    TLSv1.3 2974 Application Data
  482 1291.630617392    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3344 Ack=27006 Win=62780 Len=0
  483 1291.631658746 152.199.19.160 → 10.0.2.15    TCP 11734 443 → 34234 [ACK] Seq=27006 Ack=3344 Win=65535 Len=11680 [TCP segment of a reassembled PDU]
  484 1291.631818256    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3344 Ack=38686 Win=62780 Len=0
  485 1291.632859925 152.199.19.160 → 10.0.2.15    TLSv1.3 4458 Application Data, Application Data, Application Data
  486 1291.632993016    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3344 Ack=43090 Win=62780 Len=0
  487 1291.633243964 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 34234 [PSH, ACK] Seq=43090 Ack=3344 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  488 1291.633359325    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3344 Ack=46562 Win=62780 Len=0
  489 1291.635991278 152.199.19.160 → 10.0.2.15    TLSv1.3 4386 Application Data
  490 1291.636148220    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [ACK] Seq=3344 Ack=50894 Win=62780 Len=0
  491 1296.733028390 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  492 1296.734301008 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  493 1337.140211183    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 34234 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  494 1337.140487194 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 34234 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  495 1342.272639231 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  496 1342.272899530 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  497 1344.445293639 34.107.243.93 → 10.0.2.15    TLSv1.2 78 Application Data
  498 1344.446041617    10.0.2.15 → 34.107.243.93 TLSv1.2 82 Application Data
  499 1344.446986168 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=121 Ack=141 Win=65535 Len=0
  500 1382.199624635    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 34234 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  501 1382.200241073 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 34234 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  502 1387.337205116 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  503 1387.337647317 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  504 1427.250208819    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 34234 → 443 [ACK] Seq=3343 Ack=50894 Win=62780 Len=0
  505 1427.250615594 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 34234 [ACK] Seq=50894 Ack=3344 Win=65535 Len=0
  506 1432.383701943 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  507 1432.384500490 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  508 1472.036131781 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  509 1472.036132460 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [FIN, ACK] Seq=50975 Ack=3344 Win=65535 Len=0
  510 1472.037154759    10.0.2.15 → 152.199.19.160 TCP 54 34234 → 443 [FIN, ACK] Seq=3344 Ack=50976 Win=62780 Len=0
  511 1472.037944276 152.199.19.160 → 10.0.2.15    TCP 60 443 → 34234 [ACK] Seq=50976 Ack=3345 Win=65535 Len=0
  512 1477.185652906 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  513 1477.186205658 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  514 1529.667100466    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0xa178 A play.google.com
  515 1529.667146613    10.0.2.15 → 1.1.1.1      DNS 75 Standard query 0xf67c AAAA play.google.com
  516 1529.710182611      1.1.1.1 → 10.0.2.15    DNS 91 Standard query response 0xa178 A play.google.com A 142.251.140.46
  517 1529.710182923      1.1.1.1 → 10.0.2.15    DNS 103 Standard query response 0xf67c AAAA play.google.com AAAA 2a00:1450:4017:814::200e
  518 1529.712051897    10.0.2.15 → 142.251.140.46 QUIC 1399 0-RTT, DCID=ef7309edc6d2b7ba45f12d6d, SCID=a61f46
  519 1529.742743992 142.251.140.46 → 10.0.2.15    QUIC 1399 Initial, DCID=a61f46, SCID=ef7309edc6d2b7ba, PKN: 1, ACK, PADDING
  520 1529.753409863 142.251.140.46 → 10.0.2.15    QUIC 1399 Protected Payload (KP0), DCID=a61f46
  521 1529.753786089 142.251.140.46 → 10.0.2.15    QUIC 657 Protected Payload (KP0), DCID=a61f46
  522 1529.753786347 142.251.140.46 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=a61f46
  523 1529.755594991    10.0.2.15 → 142.251.140.46 QUIC 155 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  524 1529.755966343    10.0.2.15 → 142.251.140.46 QUIC 1209 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  525 1529.759148665 142.251.140.46 → 10.0.2.15    QUIC 165 Protected Payload (KP0), DCID=a61f46
  526 1529.783979040    10.0.2.15 → 142.251.140.46 QUIC 74 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  527 1529.784223496 142.251.140.46 → 10.0.2.15    QUIC 73 Protected Payload (KP0), DCID=a61f46
  528 1529.805858200    10.0.2.15 → 142.251.140.46 QUIC 74 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  529 1529.813784840 142.251.140.46 → 10.0.2.15    QUIC 413 Protected Payload (KP0), DCID=a61f46
  530 1529.814350454    10.0.2.15 → 142.251.140.46 QUIC 78 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  531 1529.815111007 142.251.140.46 → 10.0.2.15    QUIC 268 Protected Payload (KP0), DCID=a61f46
  532 1529.815334961    10.0.2.15 → 142.251.140.46 QUIC 73 Protected Payload (KP0), DCID=ef7309edc6d2b7ba
  533 1529.842985882 142.251.140.46 → 10.0.2.15    QUIC 69 Protected Payload (KP0), DCID=a61f46
  534 1534.780344437 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  535 1534.780967064 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  536 1587.025255091    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0x812a A chrome.cloudflare-dns.com
  537 1587.025552715    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0xd285 HTTPS chrome.cloudflare-dns.com
  538 1587.141684751      1.1.1.1 → 10.0.2.15    DNS 158 Standard query response 0xd285 HTTPS chrome.cloudflare-dns.com HTTPS
  539 1587.141685299      1.1.1.1 → 10.0.2.15    DNS 117 Standard query response 0x812a A chrome.cloudflare-dns.com A 162.159.61.3 A 172.64.41.3
  540 1587.147597980    10.0.2.15 → 162.159.61.3 QUIC 1292 Initial, DCID=4adf625c39b9a187, PKN: 1, CRYPTO
  541 1587.147660691    10.0.2.15 → 162.159.61.3 QUIC 1292 Initial, DCID=4adf625c39b9a187, PKN: 2, PADDING, PING, PING, PADDING, CRYPTO, CRYPTO, CRYPTO, CRYPTO, PING, PADDING, CRYPTO, PING, CRYPTO, PADDING, CRYPTO, CRYPTO, PADDING, CRYPTO, CRYPTO
  542 1587.152089098 162.159.61.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  543 1587.153069657    10.0.2.15 → 162.159.61.3 QUIC 131 0-RTT, DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  544 1587.153389118    10.0.2.15 → 162.159.61.3 QUIC 314 0-RTT, DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  545 1587.153587371    10.0.2.15 → 162.159.61.3 QUIC 314 0-RTT, DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  546 1587.153689346 162.159.61.3 → 10.0.2.15    QUIC 1242 Initial, SCID=01ff32584b973e7e30fdb15840973c0ff69d53c5, PKN: 1, ACK, CRYPTO
  547 1587.155005122 162.159.61.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  548 1587.155005471 162.159.61.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  549 1587.155005539 162.159.61.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  550 1587.155005597 162.159.61.3 → 10.0.2.15    QUIC 91 Protected Payload (KP0)
  551 1587.155783124    10.0.2.15 → 162.159.61.3 QUIC 1292 Handshake, DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  552 1587.155877176    10.0.2.15 → 162.159.61.3 QUIC 85 Protected Payload (KP0), DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  553 1587.155975626    10.0.2.15 → 162.159.61.3 QUIC 89 Protected Payload (KP0), DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  554 1587.161632217 162.159.61.3 → 10.0.2.15    QUIC 65 Protected Payload (KP0)
  555 1587.161632542 162.159.61.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  556 1587.161632618 162.159.61.3 → 10.0.2.15    QUIC 73 Protected Payload (KP0)
  557 1587.161632689 162.159.61.3 → 10.0.2.15    QUIC 662 Protected Payload (KP0)
  558 1587.161632751 162.159.61.3 → 10.0.2.15    QUIC 626 Protected Payload (KP0)
  559 1587.162297198    10.0.2.15 → 162.159.61.3 QUIC 85 Protected Payload (KP0), DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  560 1587.163276678    10.0.2.15 → 152.199.19.160 TCP 74 60182 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=164273464 TSecr=0 WS=128
  561 1587.201996258    10.0.2.15 → 162.159.61.3 QUIC 86 Protected Payload (KP0), DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  562 1587.221823846 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  563 1587.221882551    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  564 1587.221824164 162.159.61.3 → 10.0.2.15    QUIC 670 Protected Payload (KP0)
  565 1587.222619178    10.0.2.15 → 152.199.19.160 TLSv1 2153 Client Hello
  566 1587.222987498 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  567 1587.222987844 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=1 Ack=2100 Win=65535 Len=0
  568 1587.229516155 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  569 1587.229564831    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [ACK] Seq=2100 Ack=100 Win=64141 Len=0
  570 1587.229974913    10.0.2.15 → 152.199.19.160 TLSv1.3 967 Change Cipher Spec, Client Hello
  571 1587.230390579 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=100 Ack=3013 Win=65535 Len=0
  572 1587.249966980    10.0.2.15 → 162.159.61.3 QUIC 86 Protected Payload (KP0), DCID=01ff32584b973e7e30fdb15840973c0ff69d53c5
  573 1587.292340082 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  574 1587.292704224    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [ACK] Seq=3013 Ack=4196 Win=62780 Len=0
  575 1587.294711053 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  576 1587.294777385    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [ACK] Seq=3013 Ack=6549 Win=62780 Len=0
  577 1587.299556532    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  578 1587.299896375    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  579 1587.299995709 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=6549 Ack=3087 Win=65535 Len=0
  580 1587.300214088 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=6549 Ack=3179 Win=65535 Len=0
  581 1587.302801827 152.199.19.160 → 10.0.2.15    TLSv1.3 309 Application Data
  582 1587.303460288 152.199.19.160 → 10.0.2.15    TLSv1.3 417 Application Data, Application Data, Application Data
  583 1587.303714474    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [ACK] Seq=3179 Ack=7167 Win=62780 Len=0
  584 1587.303909955    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  585 1587.304054135 152.199.19.160 → 10.0.2.15    TLSv1.3 85 Application Data
  586 1587.304161667    10.0.2.15 → 152.199.19.160 TLSv1.3 476 Application Data
  587 1587.304180326 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=7198 Ack=3210 Win=65535 Len=0
  588 1587.304406428 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=7198 Ack=3632 Win=65535 Len=0
  589 1587.429160824 152.199.19.160 → 10.0.2.15    TLSv1.3 398 Application Data
  590 1587.429998348    10.0.2.15 → 152.199.19.160 TLSv1.3 89 Application Data
  591 1587.430573021 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=7542 Ack=3667 Win=65535 Len=0
  592 1591.649906190    10.0.2.15 → 152.199.19.160 TCP 74 44060 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=164277951 TSecr=0 WS=128
  593 1591.656290443 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  594 1591.656346450    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  595 1591.656985176    10.0.2.15 → 152.199.19.160 TLSv1 2121 Client Hello
  596 1591.661200617 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  597 1591.661200902 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=1 Ack=2068 Win=65535 Len=0
  598 1591.662526602 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  599 1591.662647767    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=2068 Ack=100 Win=64141 Len=0
  600 1591.663190666    10.0.2.15 → 152.199.19.160 TLSv1.3 935 Change Cipher Spec, Client Hello
  601 1591.663592736 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=100 Ack=2949 Win=65535 Len=0
  602 1591.679897507 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  603 1591.680076066    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=2949 Ack=4196 Win=62780 Len=0
  604 1591.680716279 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  605 1591.680750298    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=2949 Ack=6549 Win=62780 Len=0
  606 1591.681088069    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  607 1591.681297933    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  608 1591.681362300 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=6549 Ack=3023 Win=65535 Len=0
  609 1591.681485712    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  610 1591.683895275 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=6549 Ack=3115 Win=65535 Len=0
  611 1591.683896355 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=6549 Ack=3377 Win=65535 Len=0
  612 1591.689091185 152.199.19.160 → 10.0.2.15    TLSv1.3 703 Application Data, Application Data, Application Data, Application Data, Application Data
  613 1591.689436366    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  614 1591.689810456 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=7198 Ack=3408 Win=65535 Len=0
  615 1591.692633631 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
  616 1591.692775865    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=10670 Win=62780 Len=0
  617 1591.695526237 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 44060 [PSH, ACK] Seq=10670 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  618 1591.703540096 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 44060 [PSH, ACK] Seq=14142 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  619 1591.703540396 152.199.19.160 → 10.0.2.15    TCP 2974 443 → 44060 [ACK] Seq=17614 Ack=3408 Win=65535 Len=2920 [TCP segment of a reassembled PDU]
  620 1591.703638897    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=20534 Win=62780 Len=0
  621 1591.703790938 152.199.19.160 → 10.0.2.15    TCP 2250 443 → 44060 [PSH, ACK] Seq=20534 Ack=3408 Win=65535 Len=2196 [TCP segment of a reassembled PDU]
  622 1591.703820428    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=22730 Win=62780 Len=0
  623 1591.704593516 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  624 1591.704778600    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=26202 Win=62780 Len=0
  625 1591.707585231 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 44060 [PSH, ACK] Seq=26202 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  626 1591.707730728    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=29674 Win=62780 Len=0
  627 1591.710831581 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 44060 [PSH, ACK] Seq=29674 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  628 1591.710972343    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=33146 Win=62780 Len=0
  629 1591.714085130 152.199.19.160 → 10.0.2.15    TCP 5170 443 → 44060 [PSH, ACK] Seq=33146 Ack=3408 Win=65535 Len=5116 [TCP segment of a reassembled PDU]
  630 1591.714086905 152.199.19.160 → 10.0.2.15    TCP 1514 443 → 44060 [ACK] Seq=38262 Ack=3408 Win=65535 Len=1460 [TCP segment of a reassembled PDU]
  631 1591.714238347 152.199.19.160 → 10.0.2.15    TLSv1.3 2066 Application Data, Application Data, Application Data
  632 1591.714275450    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=41734 Win=62780 Len=0
  633 1591.719944137 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 44060 [PSH, ACK] Seq=41734 Ack=3408 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  634 1591.719944675 152.199.19.160 → 10.0.2.15    TCP 4406 443 → 44060 [PSH, ACK] Seq=45206 Ack=3408 Win=65535 Len=4352 [TCP segment of a reassembled PDU]
  635 1591.720106932 152.199.19.160 → 10.0.2.15    TLSv1.3 1390 Application Data
  636 1591.720111817    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=49558 Win=62780 Len=0
  637 1591.798728836    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=50894 Win=62780 Len=0
  638 1634.107178465    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 60182 → 443 [ACK] Seq=3666 Ack=7542 Win=62780 Len=0
  639 1634.107430650 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 60182 [ACK] Seq=7542 Ack=3667 Win=65535 Len=0
  640 1638.196218769    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 44060 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  641 1638.196691154 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 44060 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  642 1639.224807696 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  643 1639.225127181 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  644 1642.317111795 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [FIN, ACK] Seq=121 Ack=141 Win=65535 Len=0
  645 1642.317403242    10.0.2.15 → 34.107.243.93 TLSv1.2 78 Application Data
  646 1642.317452104    10.0.2.15 → 34.107.243.93 TCP 54 42044 → 443 [FIN, ACK] Seq=165 Ack=122 Win=64022 Len=0
  647 1642.318118620 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=122 Ack=165 Win=65535 Len=0
  648 1642.318119111 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42044 [ACK] Seq=122 Ack=166 Win=65535 Len=0
  649 1647.332275229    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0x823b A push.services.mozilla.com
  650 1647.332331891    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0xd230 AAAA push.services.mozilla.com
  651 1647.558425194      1.1.1.1 → 10.0.2.15    DNS 101 Standard query response 0x823b A push.services.mozilla.com A 34.107.243.93
  652 1647.558426003      1.1.1.1 → 10.0.2.15    DNS 166 Standard query response 0xd230 AAAA push.services.mozilla.com SOA ns-679.awsdns-20.net
  653 1647.561439108    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0xf8da A push.services.mozilla.com
  654 1647.561550835    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0xe1c0 AAAA push.services.mozilla.com
  655 1647.564328035    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0x5b65 A push.services.mozilla.com
  656 1647.672234302      1.1.1.1 → 10.0.2.15    DNS 101 Standard query response 0x5b65 A push.services.mozilla.com A 34.107.243.93
  657 1647.672235052      1.1.1.1 → 10.0.2.15    DNS 101 Standard query response 0xf8da A push.services.mozilla.com A 34.107.243.93
  658 1647.672235193      1.1.1.1 → 10.0.2.15    DNS 166 Standard query response 0xe1c0 AAAA push.services.mozilla.com SOA ns-679.awsdns-20.net
  659 1647.674969034    10.0.2.15 → 34.107.243.93 TCP 74 42606 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=809437593 TSecr=0 WS=128
  660 1647.747833215 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  661 1647.747934943    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  662 1647.751025686    10.0.2.15 → 34.107.243.93 TLSv1 720 Client Hello
  663 1647.751377174 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=1 Ack=667 Win=65535 Len=0
  664 1647.952406714 34.107.243.93 → 10.0.2.15    TLSv1.3 266 Server Hello, Change Cipher Spec, Application Data
  665 1647.952465968    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [ACK] Seq=667 Ack=213 Win=64028 Len=0
  666 1647.954165284    10.0.2.15 → 34.107.243.93 TLSv1.3 118 Change Cipher Spec, Application Data
  667 1647.954888611    10.0.2.15 → 34.107.243.93 TLSv1.3 224 Application Data
  668 1647.955099683 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=213 Ack=731 Win=65535 Len=0
  669 1647.955259907 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=213 Ack=901 Win=65535 Len=0
  670 1648.038449734 34.107.243.93 → 10.0.2.15    TLSv1.3 671 Application Data, Application Data, Application Data
  671 1648.040308487    10.0.2.15 → 34.107.243.93 TLSv1.3 85 Application Data
  672 1648.040969928 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=830 Ack=932 Win=65535 Len=0
  673 1648.042052956    10.0.2.15 → 34.107.243.93 TCP 74 42616 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=809437960 TSecr=0 WS=128
  674 1648.088543457 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  675 1648.088618737    10.0.2.15 → 34.107.243.93 TCP 54 42616 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  676 1648.092296674    10.0.2.15 → 34.107.243.93 TLSv1 711 Client Hello
  677 1648.092699891 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=1 Ack=658 Win=65535 Len=0
  678 1648.159259007 34.107.243.93 → 10.0.2.15    TLSv1.3 272 Server Hello, Change Cipher Spec, Application Data
  679 1648.159364198    10.0.2.15 → 34.107.243.93 TCP 54 42616 → 443 [ACK] Seq=658 Ack=219 Win=64022 Len=0
  680 1648.162070544    10.0.2.15 → 34.107.243.93 TLSv1.3 118 Change Cipher Spec, Application Data
  681 1648.162866466 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=219 Ack=722 Win=65535 Len=0
  682 1648.163251689    10.0.2.15 → 34.107.243.93 TLSv1.3 674 Application Data
  683 1648.163990310 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=219 Ack=1342 Win=65535 Len=0
  684 1648.707292069 34.107.243.93 → 10.0.2.15    TLSv1.3 852 Application Data, Application Data
  685 1648.713469632    10.0.2.15 → 34.107.243.93 TLSv1.3 193 Application Data
  686 1648.713882230 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=1017 Ack=1481 Win=65535 Len=0
  687 1649.107015808 34.107.243.93 → 10.0.2.15    TLSv1.3 246 Application Data
  688 1649.119030444    10.0.2.15 → 1.1.1.1      DNS 97 Standard query 0xd5ba A firefox.settings.services.mozilla.com
  689 1649.119075989    10.0.2.15 → 1.1.1.1      DNS 97 Standard query 0x45bd AAAA firefox.settings.services.mozilla.com
  690 1649.120372311    10.0.2.15 → 1.1.1.1      DNS 97 Standard query 0x65f7 A firefox.settings.services.mozilla.com
  691 1649.149985966    10.0.2.15 → 34.107.243.93 TCP 54 42616 → 443 [ACK] Seq=1481 Ack=1209 Win=64022 Len=0
  692 1649.235668470      1.1.1.1 → 10.0.2.15    DNS 175 Standard query response 0x65f7 A firefox.settings.services.mozilla.com CNAME prod.remote-settings.prod.webservices.mozgcp.net A 34.149.100.209
  693 1649.235669142      1.1.1.1 → 10.0.2.15    DNS 249 Standard query response 0x45bd AAAA firefox.settings.services.mozilla.com CNAME prod.remote-settings.prod.webservices.mozgcp.net SOA ns-cloud-a1.googledomains.com
  694 1649.235669299      1.1.1.1 → 10.0.2.15    DNS 175 Standard query response 0xd5ba A firefox.settings.services.mozilla.com CNAME prod.remote-settings.prod.webservices.mozgcp.net A 34.149.100.209
  695 1649.236984859    10.0.2.15 → 34.149.100.209 TCP 74 58704 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=2452887145 TSecr=0 WS=128
  696 1649.485913375 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  697 1649.486218407    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  698 1649.486836286    10.0.2.15 → 34.149.100.209 TLSv1 272 Client Hello
  699 1649.487894003 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=1 Ack=219 Win=65535 Len=0
  700 1649.829869387 34.149.100.209 → 10.0.2.15    TLSv1.2 2974 Server Hello, Certificate
  701 1649.830015145    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=219 Ack=2921 Win=62780 Len=0
  702 1649.830848426 34.149.100.209 → 10.0.2.15    TLSv1.2 211 Server Key Exchange, Server Hello Done
  703 1649.830938889    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=219 Ack=3078 Win=62780 Len=0
  704 1649.843117760    10.0.2.15 → 34.149.100.209 TLSv1.2 147 Client Key Exchange, Change Cipher Spec, Encrypted Handshake Message
  705 1649.844186329 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3078 Ack=312 Win=65535 Len=0
  706 1650.361478337 34.149.100.209 → 10.0.2.15    TLSv1.2 418 New Session Ticket, Change Cipher Spec, Encrypted Handshake Message, Application Data
  707 1650.362544646    10.0.2.15 → 34.149.100.209 TLSv1.2 231 Application Data
  708 1650.362606926    10.0.2.15 → 34.149.100.209 TLSv1.2 339 Application Data
  709 1650.362949605 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3442 Ack=489 Win=65535 Len=0
  710 1650.362950105 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3442 Ack=774 Win=65535 Len=0
  711 1650.365845607    10.0.2.15 → 34.149.100.209 TLSv1.2 92 Application Data
  712 1650.366180625 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3442 Ack=812 Win=65535 Len=0
  713 1650.537031178 34.149.100.209 → 10.0.2.15    TLSv1.2 92 Application Data
  714 1650.537032246 34.149.100.209 → 10.0.2.15    TLSv1.2 195 Application Data
  715 1650.537854841    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=812 Ack=3621 Win=62780 Len=0
  716 1650.545807231    10.0.2.15 → 34.149.100.209 TLSv1.2 100 Application Data
  717 1650.546545155 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3621 Ack=858 Win=65535 Len=0
  718 1677.837520610 fe80::a00:27ff:fe92:f164 → ff02::2      ICMPv6 62 Router Solicitation
  719 1679.162048110    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 60182 → 443 [ACK] Seq=3666 Ack=7542 Win=62780 Len=0
  720 1679.162542384 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 60182 [ACK] Seq=7542 Ack=3667 Win=65535 Len=0
  721 1683.253534939    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 44060 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  722 1683.254014132 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 44060 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  723 1694.408843617    10.0.2.15 → 1.1.1.1      DNS 87 Standard query 0xd1de A safebrowsing.googleapis.com
  724 1694.408897409    10.0.2.15 → 1.1.1.1      DNS 87 Standard query 0x7ad7 AAAA safebrowsing.googleapis.com
  725 1694.410414300    10.0.2.15 → 1.1.1.1      DNS 87 Standard query 0x5f08 A safebrowsing.googleapis.com
  726 1694.416881800      1.1.1.1 → 10.0.2.15    DNS 103 Standard query response 0xd1de A safebrowsing.googleapis.com A 216.58.212.42
  727 1694.416882270      1.1.1.1 → 10.0.2.15    DNS 115 Standard query response 0x7ad7 AAAA safebrowsing.googleapis.com AAAA 2a00:1450:4017:80a::200a
  728 1694.445494705      1.1.1.1 → 10.0.2.15    DNS 103 Standard query response 0x5f08 A safebrowsing.googleapis.com A 172.217.169.170
  729 1694.446629657    10.0.2.15 → 172.217.169.170 TCP 74 33998 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=3105231881 TSecr=0 WS=128
  730 1694.450554157 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  731 1694.450611782    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  732 1694.453661159    10.0.2.15 → 172.217.169.170 TLSv1 726 Client Hello
  733 1694.454057475 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=1 Ack=673 Win=65535 Len=0
  734 1694.454260700    10.0.2.15 → 172.217.169.170 TLSv1.3 60 Change Cipher Spec
  735 1694.454294458    10.0.2.15 → 172.217.169.170 TLSv1.3 813 Application Data
  736 1694.454555434 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=1 Ack=679 Win=65535 Len=0
  737 1694.454555767 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=1 Ack=1438 Win=65535 Len=0
  738 1694.493786831 172.217.169.170 → 10.0.2.15    TLSv1.3 822 Server Hello, Change Cipher Spec, Application Data, Application Data
  739 1694.493889465    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [ACK] Seq=1438 Ack=769 Win=63744 Len=0
  740 1694.493787584 172.217.169.170 → 10.0.2.15    TLSv1.3 147 Application Data, Application Data
  741 1694.493944616    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [ACK] Seq=1438 Ack=862 Win=63744 Len=0
  742 1694.494524351 172.217.169.170 → 10.0.2.15    TLSv1.3 293 Application Data
  743 1694.494553329    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [ACK] Seq=1438 Ack=1101 Win=63744 Len=0
  744 1694.494882189    10.0.2.15 → 172.217.169.170 TLSv1.3 138 Application Data, Application Data
  745 1694.495212810 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=1101 Ack=1522 Win=65535 Len=0
  746 1694.495720025 172.217.169.170 → 10.0.2.15    TLSv1.3 1501 Application Data, Application Data
  747 1694.496008710    10.0.2.15 → 172.217.169.170 TLSv1.3 85 Application Data
  748 1694.496322867 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=2548 Ack=1553 Win=65535 Len=0
  749 1694.496368145    10.0.2.15 → 172.217.169.170 TLSv1.3 93 Application Data
  750 1694.496707843 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=2548 Ack=1592 Win=65535 Len=0
  751 1694.502872130    10.0.2.15 → 172.217.169.170 TLSv1.3 78 Application Data
  752 1694.503302455 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=2548 Ack=1616 Win=65535 Len=0
  753 1694.503616439    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [FIN, ACK] Seq=1616 Ack=2548 Win=63744 Len=0
  754 1694.504367733 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [ACK] Seq=2548 Ack=1617 Win=65535 Len=0
  755 1694.508740348 172.217.169.170 → 10.0.2.15    TCP 60 443 → 33998 [FIN, ACK] Seq=2548 Ack=1617 Win=65535 Len=0
  756 1694.508778398    10.0.2.15 → 172.217.169.170 TCP 54 33998 → 443 [ACK] Seq=1617 Ack=2549 Win=63744 Len=0
  757 1694.986489628    10.0.2.15 → 162.159.61.3 QUIC 1292 Initial, DCID=bfb2b192c61f32ef, PKN: 1, CRYPTO
  758 1694.986555207    10.0.2.15 → 162.159.61.3 QUIC 1292 Initial, DCID=bfb2b192c61f32ef, PKN: 2, PADDING, PING, CRYPTO, CRYPTO, PING, PING, PADDING, CRYPTO, PING, PADDING, PING, CRYPTO, PADDING, PING, PADDING, PING, CRYPTO, CRYPTO, PING
  759 1694.986749296    10.0.2.15 → 162.159.61.3 QUIC 122 0-RTT, DCID=bfb2b192c61f32ef
  760 1694.987247933    10.0.2.15 → 162.159.61.3 QUIC 302 0-RTT, DCID=bfb2b192c61f32ef
  761 1694.987397929    10.0.2.15 → 162.159.61.3 QUIC 302 0-RTT, DCID=bfb2b192c61f32ef
  762 1694.995898645 162.159.61.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  763 1694.995898952 162.159.61.3 → 10.0.2.15    QUIC 1242 Initial, SCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868, PKN: 1, ACK, CRYPTO
  764 1694.995899010 162.159.61.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  765 1694.996082375 162.159.61.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  766 1694.996082569 162.159.61.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  767 1694.996712262 162.159.61.3 → 10.0.2.15    QUIC 91 Protected Payload (KP0)
  768 1694.997001132    10.0.2.15 → 162.159.61.3 QUIC 1292 Handshake, DCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868
  769 1694.997098974    10.0.2.15 → 162.159.61.3 QUIC 85 Protected Payload (KP0), DCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868
  770 1694.997178710    10.0.2.15 → 162.159.61.3 QUIC 89 Protected Payload (KP0), DCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868
  771 1695.002572379 162.159.61.3 → 10.0.2.15    QUIC 662 Protected Payload (KP0)
  772 1695.002572672 162.159.61.3 → 10.0.2.15    QUIC 626 Protected Payload (KP0)
  773 1695.002738668 162.159.61.3 → 10.0.2.15    QUIC 64 Protected Payload (KP0)
  774 1695.002818080 162.159.61.3 → 10.0.2.15    QUIC 70 Protected Payload (KP0)
  775 1695.003119587    10.0.2.15 → 162.159.61.3 QUIC 85 Protected Payload (KP0), DCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868
  776 1695.003332470    10.0.2.15 → 162.159.61.3 QUIC 85 Protected Payload (KP0), DCID=01bc14ea8a4c8befabbe97ea884ca013c51b1868
  777 1695.004412990    10.0.2.15 → 13.107.246.45 TCP 74 50396 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=4269187724 TSecr=0 WS=128
  778 1695.008659728 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  779 1695.008721620    10.0.2.15 → 13.107.246.45 TCP 54 50396 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  780 1695.009430979    10.0.2.15 → 13.107.246.45 TLSv1 2207 Client Hello
  781 1695.009715156 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  782 1695.009715347 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=1 Ack=2154 Win=65535 Len=0
  783 1695.013926468 13.107.246.45 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  784 1695.013976572    10.0.2.15 → 13.107.246.45 TCP 54 50396 → 443 [ACK] Seq=2154 Ack=100 Win=64141 Len=0
  785 1695.014311827    10.0.2.15 → 13.107.246.45 TLSv1.3 1021 Change Cipher Spec, Client Hello
  786 1695.014594314 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=100 Ack=3121 Win=65535 Len=0
  787 1695.018413075 13.107.246.45 → 10.0.2.15    TLSv1.3 335 Server Hello, Application Data, Application Data
  788 1695.022679400    10.0.2.15 → 13.107.246.45 TLSv1.3 128 Application Data
  789 1695.022920711    10.0.2.15 → 13.107.246.45 TLSv1.3 146 Application Data
  790 1695.023303674    10.0.2.15 → 13.107.246.45 TLSv1.3 356 Application Data
  791 1695.023435117 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=381 Ack=3195 Win=65535 Len=0
  792 1695.023435409 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=381 Ack=3287 Win=65535 Len=0
  793 1695.023618110 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=381 Ack=3589 Win=65535 Len=0
  794 1695.040807460 13.107.246.45 → 10.0.2.15    TLSv1.3 428 Application Data, Application Data
  795 1695.042085249    10.0.2.15 → 13.107.246.45 TLSv1.3 85 Application Data
  796 1695.042366322 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=755 Ack=3620 Win=65535 Len=0
  797 1695.066521351 13.107.246.45 → 10.0.2.15    TLSv1.3 391 Application Data
  798 1695.113911585    10.0.2.15 → 13.107.246.45 TCP 54 50396 → 443 [ACK] Seq=3620 Ack=1092 Win=63860 Len=0
  799 1697.087490666    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0x2d21 A chrome.cloudflare-dns.com
  800 1697.087600914    10.0.2.15 → 1.1.1.1      DNS 85 Standard query 0xc3e5 HTTPS chrome.cloudflare-dns.com
  801 1697.093678686      1.1.1.1 → 10.0.2.15    DNS 158 Standard query response 0xc3e5 HTTPS chrome.cloudflare-dns.com HTTPS
  802 1697.093678998      1.1.1.1 → 10.0.2.15    DNS 117 Standard query response 0x2d21 A chrome.cloudflare-dns.com A 172.64.41.3 A 162.159.61.3
  803 1697.094865396    10.0.2.15 → 172.64.41.3  QUIC 1292 Initial, DCID=5651215bbbb7b02d, PKN: 1, CRYPTO
  804 1697.094913975    10.0.2.15 → 172.64.41.3  QUIC 1292 Initial, DCID=5651215bbbb7b02d, PKN: 2, CRYPTO, PADDING, PING, PING, CRYPTO, PING, PADDING, PING, PADDING, PING, PING, PING
  805 1697.098081297    10.0.2.15 → 172.64.41.3  QUIC 122 0-RTT, DCID=5651215bbbb7b02d
  806 1697.098435451    10.0.2.15 → 172.64.41.3  QUIC 302 0-RTT, DCID=5651215bbbb7b02d
  807 1697.098681620    10.0.2.15 → 172.64.41.3  QUIC 302 0-RTT, DCID=5651215bbbb7b02d
  808 1697.099294795  172.64.41.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  809 1697.105404445    10.0.2.15 → 172.64.41.3  QUIC 1292 Initial, DCID=018a35681efec19a0888b6681bfef4a71f82b4fa, PKN: 7, PADDING, CRYPTO, PADDING, CRYPTO, PING, PING, CRYPTO, PING, PADDING, CRYPTO, PADDING, CRYPTO, PADDING, PING, CRYPTO, PADDING, CRYPTO, CRYPTO, PING, CRYPTO
  810 1697.105602308  172.64.41.3 → 10.0.2.15    QUIC 1242 Initial, SCID=018a35681efec19a0888b6681bfef4a71f82b4fa, PKN: 1, ACK, CRYPTO
  811 1697.106011806  172.64.41.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  812 1697.106012295  172.64.41.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  813 1697.106241879  172.64.41.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  814 1697.106581081  172.64.41.3 → 10.0.2.15    QUIC 91 Protected Payload (KP0)
  815 1697.106581329  172.64.41.3 → 10.0.2.15    QUIC 65 Protected Payload (KP0)
  816 1697.106581376  172.64.41.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  817 1697.107068867  172.64.41.3 → 10.0.2.15    QUIC 66 Protected Payload (KP0)
  818 1697.107069135  172.64.41.3 → 10.0.2.15    QUIC 662 Protected Payload (KP0)
  819 1697.107069180  172.64.41.3 → 10.0.2.15    QUIC 626 Protected Payload (KP0)
  820 1697.107630287    10.0.2.15 → 172.64.41.3  QUIC 1292 Handshake, DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  821 1697.107685890    10.0.2.15 → 172.64.41.3  QUIC 127 Handshake, DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  822 1697.107820353    10.0.2.15 → 172.64.41.3  QUIC 85 Protected Payload (KP0), DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  823 1697.108039764    10.0.2.15 → 172.64.41.3  QUIC 89 Protected Payload (KP0), DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  824 1697.108333295    10.0.2.15 → 172.64.41.3  QUIC 85 Protected Payload (KP0), DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  825 1697.109039942    10.0.2.15 → 40.79.189.59 TCP 74 36888 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=2993026347 TSecr=0 WS=128
  826 1697.111702342  172.64.41.3 → 10.0.2.15    QUIC 1242 Protected Payload (KP0)
  827 1697.114164944  172.64.41.3 → 10.0.2.15    QUIC 64 Protected Payload (KP0)
  828 1697.114493264  172.64.41.3 → 10.0.2.15    QUIC 72 Protected Payload (KP0)
  829 1697.114651896    10.0.2.15 → 172.64.41.3  QUIC 85 Protected Payload (KP0), DCID=018a35681efec19a0888b6681bfef4a71f82b4fa
  830 1697.369318200    10.0.2.15 → 40.79.189.59 TCP 74 36902 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=2993026607 TSecr=0 WS=128
  831 1697.376338250 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  832 1697.376548600    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  833 1697.378747809    10.0.2.15 → 40.79.189.59 TLSv1 1987 Client Hello
  834 1697.379623824 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  835 1697.379624364 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=1 Ack=1934 Win=65535 Len=0
  836 1697.726194551 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  837 1697.726347678    10.0.2.15 → 40.79.189.59 TCP 54 36902 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  838 1697.726195660 40.79.189.59 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  839 1697.726443704    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=1934 Ack=100 Win=64141 Len=0
  840 1697.728135230    10.0.2.15 → 40.79.189.59 TLSv1 1923 Client Hello
  841 1697.728937697 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  842 1697.728938230 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [ACK] Seq=1 Ack=1870 Win=65535 Len=0
  843 1697.731390885    10.0.2.15 → 40.79.189.59 TLSv1.3 833 Change Cipher Spec, Client Hello
  844 1697.732288498 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=100 Ack=2713 Win=65535 Len=0
  845 1698.033248528 40.79.189.59 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  846 1698.033337765    10.0.2.15 → 40.79.189.59 TCP 54 36902 → 443 [ACK] Seq=1870 Ack=100 Win=64141 Len=0
  847 1698.040976867 40.79.189.59 → 10.0.2.15    TLSv1.3 4434 Server Hello
  848 1698.043442735    10.0.2.15 → 40.79.189.59 TLSv1.3 769 Change Cipher Spec, Client Hello
  849 1698.043914840    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=2713 Ack=4480 Win=62780 Len=0
  850 1698.044190279 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [ACK] Seq=100 Ack=2585 Win=65535 Len=0
  851 1698.044497834 40.79.189.59 → 10.0.2.15    TLSv1.3 2024 Application Data
  852 1698.046987619    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=2713 Ack=6450 Win=62780 Len=0
  853 1698.053413715    10.0.2.15 → 40.79.189.59 TLSv1.3 128 Application Data
  854 1698.053915434 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=6450 Ack=2787 Win=65535 Len=0
  855 1698.054138036    10.0.2.15 → 40.79.189.59 TLSv1.3 146 Application Data
  856 1698.054633142    10.0.2.15 → 40.79.189.59 TLSv1.3 531 Application Data
  857 1698.054858745    10.0.2.15 → 40.79.189.59 TLSv1.3 1121 Application Data
  858 1698.054981379 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=6450 Ack=2879 Win=65535 Len=0
  859 1698.054981705 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=6450 Ack=3356 Win=65535 Len=0
  860 1698.055580738 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=6450 Ack=4423 Win=65535 Len=0
  861 1698.342273888 40.79.189.59 → 10.0.2.15    TLSv1.3 157 Application Data
  862 1698.342274707 40.79.189.59 → 10.0.2.15    TLSv1.3 4434 Server Hello
  863 1698.342839265    10.0.2.15 → 40.79.189.59 TCP 54 36902 → 443 [ACK] Seq=2585 Ack=4480 Win=62780 Len=0
  864 1698.343295271 40.79.189.59 → 10.0.2.15    TLSv1.3 2024 Application Data
  865 1698.343335348    10.0.2.15 → 40.79.189.59 TCP 54 36902 → 443 [ACK] Seq=2585 Ack=6450 Win=62780 Len=0
  866 1698.346973524    10.0.2.15 → 40.79.189.59 TLSv1.3 128 Application Data
  867 1698.347579670 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [ACK] Seq=6450 Ack=2659 Win=65535 Len=0
  868 1698.374407786 40.79.189.59 → 10.0.2.15    TLSv1.3 116 Application Data
  869 1698.374503524    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=4423 Ack=6615 Win=62780 Len=0
  870 1698.374988693    10.0.2.15 → 40.79.189.59 TLSv1.3 85 Application Data
  871 1698.375381643 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [ACK] Seq=6615 Ack=4454 Win=65535 Len=0
  872 1698.647207831 40.79.189.59 → 10.0.2.15    TLSv1.3 219 Application Data, Application Data
  873 1698.647208661 40.79.189.59 → 10.0.2.15    TLSv1.3 85 Application Data
  874 1698.702459004    10.0.2.15 → 40.79.189.59 TCP 54 36902 → 443 [ACK] Seq=2659 Ack=6615 Win=62780 Len=0
  875 1698.702497729    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=4454 Ack=6646 Win=62780 Len=0
  876 1699.773317639 40.79.189.59 → 10.0.2.15    TLSv1.3 335 Application Data
  877 1699.773468884    10.0.2.15 → 40.79.189.59 TCP 54 36888 → 443 [ACK] Seq=4454 Ack=6927 Win=62780 Len=0
  878 1706.447840507    10.0.2.15 → 34.107.243.93 TLSv1.3 93 Application Data
  879 1706.448666227 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=830 Ack=971 Win=65535 Len=0
  880 1706.454821665 34.107.243.93 → 10.0.2.15    TLSv1.3 93 Application Data
  881 1706.507886175    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [ACK] Seq=971 Ack=869 Win=64028 Len=0
  882 1709.507864986    10.0.2.15 → 34.149.100.209 TLSv1.2 100 Application Data
  883 1709.508439619 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3621 Ack=904 Win=65535 Len=0
  884 1709.514858265 34.149.100.209 → 10.0.2.15    TLSv1.2 100 Application Data
  885 1709.562226749    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=904 Ack=3667 Win=62780 Len=0
  886 1724.217564253    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 60182 → 443 [ACK] Seq=3666 Ack=7542 Win=62780 Len=0
  887 1724.217781334 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 60182 [ACK] Seq=7542 Ack=3667 Win=65535 Len=0
  888 1728.315827766    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 44060 → 443 [ACK] Seq=3407 Ack=50894 Win=62780 Len=0
  889 1728.316180492 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 44060 [ACK] Seq=50894 Ack=3408 Win=65535 Len=0
  890 1740.617508651    10.0.2.15 → 13.107.246.45 TCP 54 [TCP Keep-Alive] 50396 → 443 [ACK] Seq=3619 Ack=1092 Win=63860 Len=0
  891 1740.618404894 13.107.246.45 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 50396 [ACK] Seq=1092 Ack=3620 Win=65535 Len=0
  892 1744.699084727    10.0.2.15 → 40.79.189.59 TCP 54 [TCP Keep-Alive] 36902 → 443 [ACK] Seq=2658 Ack=6615 Win=62780 Len=0
  893 1744.699362664 40.79.189.59 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 36902 [ACK] Seq=6615 Ack=2659 Win=65535 Len=0
  894 1744.986915640    10.0.2.15 → 40.79.189.59 TCP 54 [TCP Keep-Alive] 36888 → 443 [ACK] Seq=4453 Ack=6927 Win=62780 Len=0
  895 1744.987712946 40.79.189.59 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 36888 [ACK] Seq=6927 Ack=4454 Win=65535 Len=0
  896 1764.526311233    10.0.2.15 → 34.107.243.93 TLSv1.3 93 Application Data
  897 1764.527366836 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=869 Ack=1010 Win=65535 Len=0
  898 1764.530782595 34.107.243.93 → 10.0.2.15    TLSv1.3 93 Application Data
  899 1764.530916676    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [ACK] Seq=1010 Ack=908 Win=64028 Len=0
  900 1767.546409230    10.0.2.15 → 34.149.100.209 TLSv1.2 100 Application Data
  901 1767.547157892 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3667 Ack=950 Win=65535 Len=0
  902 1767.556202703 34.149.100.209 → 10.0.2.15    TLSv1.2 100 Application Data
  903 1767.556401308    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=950 Ack=3713 Win=62780 Len=0
  904 1767.971280564 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  905 1767.971281118 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [FIN, ACK] Seq=7623 Ack=3667 Win=65535 Len=0
  906 1767.971860710    10.0.2.15 → 152.199.19.160 TCP 54 60182 → 443 [FIN, ACK] Seq=3667 Ack=7624 Win=62780 Len=0
  907 1767.972374566 152.199.19.160 → 10.0.2.15    TCP 60 443 → 60182 [ACK] Seq=7624 Ack=3668 Win=65535 Len=0
  908 1772.171428224 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
  909 1772.171510646    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [ACK] Seq=3408 Ack=50975 Win=62780 Len=0
  910 1772.171428842 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [FIN, ACK] Seq=50975 Ack=3408 Win=65535 Len=0
  911 1772.171947295    10.0.2.15 → 152.199.19.160 TCP 54 44060 → 443 [FIN, ACK] Seq=3408 Ack=50976 Win=62780 Len=0
  912 1772.172424349 152.199.19.160 → 10.0.2.15    TCP 60 443 → 44060 [ACK] Seq=50976 Ack=3409 Win=65535 Len=0
  913 1785.174676778 13.107.246.45 → 10.0.2.15    TLSv1.3 117 Application Data, Application Data
  914 1785.174752487    10.0.2.15 → 13.107.246.45 TCP 54 50396 → 443 [ACK] Seq=3620 Ack=1155 Win=63860 Len=0
  915 1785.174677264 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [FIN, ACK] Seq=1155 Ack=3620 Win=65535 Len=0
  916 1785.175253616    10.0.2.15 → 13.107.246.45 TCP 54 50396 → 443 [FIN, ACK] Seq=3620 Ack=1156 Win=63860 Len=0
  917 1785.175694154 13.107.246.45 → 10.0.2.15    TCP 60 443 → 50396 [ACK] Seq=1156 Ack=3621 Win=65535 Len=0
  918 1789.769384520    10.0.2.15 → 40.79.189.59 TCP 54 [TCP Keep-Alive] 36902 → 443 [ACK] Seq=2658 Ack=6615 Win=62780 Len=0
  919 1789.769844579 40.79.189.59 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 36902 [ACK] Seq=6615 Ack=2659 Win=65535 Len=0
  920 1791.806980201    10.0.2.15 → 40.79.189.59 TCP 54 [TCP Keep-Alive] 36888 → 443 [ACK] Seq=4453 Ack=6927 Win=62780 Len=0
  921 1791.807324922 40.79.189.59 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 36888 [ACK] Seq=6927 Ack=4454 Win=65535 Len=0
  922 1817.130656079 fe80::a00:27ff:fe92:f164 → ff02::fb     MDNS 220 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  923 1817.130938460    10.0.2.15 → 224.0.0.251  MDNS 200 Standard query 0x0000 PTR _ipps._tcp.local, "QM" question PTR _nmea-0183._tcp.local, "QM" question PTR _ftp._tcp.local, "QM" question PTR _webdav._tcp.local, "QM" question PTR _webdavs._tcp.local, "QM" question PTR _sftp-ssh._tcp.local, "QM" question PTR _smb._tcp.local, "QM" question PTR _afpovertcp._tcp.local, "QM" question PTR _nfs._tcp.local, "QM" question PTR _ipp._tcp.local, "QM" question
  924 1818.547662532    10.0.2.15 → 34.107.243.93 TLSv1.3 93 Application Data
  925 1818.548163475 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=908 Ack=1049 Win=65535 Len=0
  926 1818.548423732    10.0.2.15 → 34.107.243.93 TLSv1.3 78 Application Data
  927 1818.548478566    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [FIN, ACK] Seq=1073 Ack=908 Win=64028 Len=0
  928 1818.548828733 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=908 Ack=1073 Win=65535 Len=0
  929 1818.549131959 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [ACK] Seq=908 Ack=1074 Win=65535 Len=0
  930 1818.584075180 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42606 [FIN, ACK] Seq=908 Ack=1074 Win=65535 Len=0
  931 1818.584115036    10.0.2.15 → 34.107.243.93 TCP 54 42606 → 443 [ACK] Seq=1074 Ack=909 Win=64028 Len=0
  932 1820.641680777    10.0.2.15 → 34.149.100.209 TLSv1.2 100 Application Data
  933 1820.642723816 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3713 Ack=996 Win=65535 Len=0
  934 1820.642831574    10.0.2.15 → 34.149.100.209 TLSv1.2 85 Encrypted Alert
  935 1820.642947854    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [FIN, ACK] Seq=1027 Ack=3713 Win=62780 Len=0
  936 1820.643762193 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3713 Ack=1027 Win=65535 Len=0
  937 1820.643762873 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [ACK] Seq=3713 Ack=1028 Win=65535 Len=0
  938 1821.517856105 34.149.100.209 → 10.0.2.15    TCP 60 443 → 58704 [FIN, ACK] Seq=3713 Ack=1028 Win=65535 Len=0
  939 1821.517936494    10.0.2.15 → 34.149.100.209 TCP 54 58704 → 443 [ACK] Seq=1028 Ack=3714 Win=62780 Len=0
  940 1825.950187475 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36902 [RST, ACK] Seq=6615 Ack=2659 Win=65535 Len=0
  941 1826.535111407 40.79.189.59 → 10.0.2.15    TCP 60 443 → 36888 [RST, ACK] Seq=6927 Ack=4454 Win=65535 Len=0
  942 1891.739931771    10.0.2.15 → 152.199.19.160 TCP 74 47590 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=164578041 TSecr=0 WS=128
  943 1891.742895519 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
  944 1891.742951961    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
  945 1891.744690843    10.0.2.15 → 152.199.19.160 TLSv1 2057 Client Hello
  946 1891.745034885 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
  947 1891.745035771 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=1 Ack=2004 Win=65535 Len=0
  948 1891.750065841 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
  949 1891.750119353    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=2004 Ack=100 Win=64141 Len=0
  950 1891.750450901    10.0.2.15 → 152.199.19.160 TLSv1.3 871 Change Cipher Spec, Client Hello
  951 1891.750782428 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=100 Ack=2821 Win=65535 Len=0
  952 1891.755619253 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
  953 1891.755793603    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=2821 Ack=4196 Win=62780 Len=0
  954 1891.756987927 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
  955 1891.757030881    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=2821 Ack=6549 Win=62780 Len=0
  956 1891.766335518    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
  957 1891.766558284    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
  958 1891.766633655 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=6549 Ack=2895 Win=65535 Len=0
  959 1891.766755835    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
  960 1891.769433497 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=6549 Ack=2987 Win=65535 Len=0
  961 1891.769433820 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=6549 Ack=3249 Win=65535 Len=0
  962 1891.769433862 152.199.19.160 → 10.0.2.15    TLSv1.3 564 Application Data, Application Data
  963 1891.769946583 152.199.19.160 → 10.0.2.15    TLSv1.3 162 Application Data, Application Data
  964 1891.770039099    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3249 Ack=7167 Win=62780 Len=0
  965 1891.770147024    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
  966 1891.770410320 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=7167 Ack=3280 Win=65535 Len=0
  967 1891.772519335 152.199.19.160 → 10.0.2.15    TLSv1.3 85 Application Data
  968 1891.775986314 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
  969 1891.776138821    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=10670 Win=62780 Len=0
  970 1891.777653626 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 47590 [PSH, ACK] Seq=10670 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  971 1891.777784201    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=14142 Win=62780 Len=0
  972 1891.779732390 152.199.19.160 → 10.0.2.15    TCP 6998 443 → 47590 [PSH, ACK] Seq=14142 Ack=3280 Win=65535 Len=6944 [TCP segment of a reassembled PDU]
  973 1891.779732717 152.199.19.160 → 10.0.2.15    TCP 1698 443 → 47590 [PSH, ACK] Seq=21086 Ack=3280 Win=65535 Len=1644 [TCP segment of a reassembled PDU]
  974 1891.779980135    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=22730 Win=62780 Len=0
  975 1891.782072567 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  976 1891.782247492    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=26202 Win=62780 Len=0
  977 1891.784413962 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 47590 [PSH, ACK] Seq=26202 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  978 1891.784414275 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 47590 [PSH, ACK] Seq=29674 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  979 1891.784557561    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=33146 Win=62780 Len=0
  980 1891.786507326 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 47590 [PSH, ACK] Seq=33146 Ack=3280 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
  981 1891.786736417    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=36618 Win=62780 Len=0
  982 1891.788210867 152.199.19.160 → 10.0.2.15    TCP 3110 443 → 47590 [PSH, ACK] Seq=36618 Ack=3280 Win=65535 Len=3056 [TCP segment of a reassembled PDU]
  983 1891.788261562    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=39674 Win=62780 Len=0
  984 1891.788211224 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
  985 1891.788434963    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=43146 Win=62780 Len=0
  986 1891.790409748 152.199.19.160 → 10.0.2.15    TLSv1.3 7802 Application Data
  987 1891.790708109    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [ACK] Seq=3280 Ack=50894 Win=62780 Len=0
  988 1937.222711571    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 47590 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  989 1937.223057750 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 47590 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  990 1942.339456044 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  991 1942.340056252 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
  992 1948.912628164 34.107.243.93 → 10.0.2.15    TLSv1.3 78 Application Data
  993 1948.912727572    10.0.2.15 → 34.107.243.93 TCP 54 42616 → 443 [ACK] Seq=1481 Ack=1233 Win=64022 Len=0
  994 1948.913101452    10.0.2.15 → 34.107.243.93 TLSv1.3 82 Application Data
  995 1948.914093185 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=1233 Ack=1509 Win=65535 Len=0
  996 1982.273531415    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 47590 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
  997 1982.274098735 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 47590 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
  998 1987.389862087 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
  999 1987.390388629 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
 1000 2027.316453625    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 47590 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
 1001 2027.316995119 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 47590 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
 1002 2032.438546967 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
 1003 2032.438979227 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
 1004 2072.388634597    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 47590 → 443 [ACK] Seq=3279 Ack=50894 Win=62780 Len=0
 1005 2072.389123092 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 47590 [ACK] Seq=50894 Ack=3280 Win=65535 Len=0
 1006 2073.083941388 152.199.19.160 → 10.0.2.15    TLSv1.3 135 Application Data, Application Data
 1007 2073.083941742 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [FIN, ACK] Seq=50975 Ack=3280 Win=65535 Len=0
 1008 2073.084683468    10.0.2.15 → 152.199.19.160 TCP 54 47590 → 443 [FIN, ACK] Seq=3280 Ack=50976 Win=62780 Len=0
 1009 2073.085400266 152.199.19.160 → 10.0.2.15    TCP 60 443 → 47590 [ACK] Seq=50976 Ack=3281 Win=65535 Len=0
 1010 2077.506915023 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
 1011 2077.507465813 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
 1012 2191.807967240    10.0.2.15 → 152.199.19.160 TCP 74 41834 → 443 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM TSval=164878109 TSecr=0 WS=128
 1013 2191.814912876 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [SYN, ACK] Seq=0 Ack=1 Win=65535 Len=0 MSS=1460
 1014 2191.815040502    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=1 Ack=1 Win=64240 Len=0
 1015 2191.816034361    10.0.2.15 → 152.199.19.160 TLSv1 2153 Client Hello
 1016 2191.816557107 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=1 Ack=1461 Win=65535 Len=0
 1017 2191.816557378 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=1 Ack=2100 Win=65535 Len=0
 1018 2191.822596209 152.199.19.160 → 10.0.2.15    TLSv1.3 153 Hello Retry Request, Change Cipher Spec
 1019 2191.822667618    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=2100 Ack=100 Win=64141 Len=0
 1020 2191.823257968    10.0.2.15 → 152.199.19.160 TLSv1.3 967 Change Cipher Spec, Client Hello
 1021 2191.823734004 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=100 Ack=3013 Win=65535 Len=0
 1022 2191.829586487 152.199.19.160 → 10.0.2.15    TLSv1.3 4150 Server Hello, Application Data
 1023 2191.830007131    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3013 Ack=4196 Win=62780 Len=0
 1024 2191.830358457 152.199.19.160 → 10.0.2.15    TLSv1.3 2407 Application Data, Application Data, Application Data
 1025 2191.830402774    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3013 Ack=6549 Win=62780 Len=0
 1026 2191.831229901    10.0.2.15 → 152.199.19.160 TLSv1.3 128 Application Data
 1027 2191.831541064    10.0.2.15 → 152.199.19.160 TLSv1.3 146 Application Data
 1028 2191.831654712 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=6549 Ack=3087 Win=65535 Len=0
 1029 2191.831979489    10.0.2.15 → 152.199.19.160 TLSv1.3 316 Application Data
 1030 2191.832135129 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=6549 Ack=3179 Win=65535 Len=0
 1031 2191.832282553 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=6549 Ack=3441 Win=65535 Len=0
 1032 2191.836575407 152.199.19.160 → 10.0.2.15    TLSv1.3 564 Application Data, Application Data
 1033 2191.838177491 152.199.19.160 → 10.0.2.15    TLSv1.3 193 Application Data, Application Data, Application Data
 1034 2191.838364476    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3441 Ack=7198 Win=62780 Len=0
 1035 2191.838571512    10.0.2.15 → 152.199.19.160 TLSv1.3 85 Application Data
 1036 2191.839075415 152.199.19.160 → 10.0.2.15    TCP 60 443 → 41834 [ACK] Seq=7198 Ack=3472 Win=65535 Len=0
 1037 2191.843361545 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data
 1038 2191.843553086    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=10670 Win=62780 Len=0
 1039 2191.845923539 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 41834 [PSH, ACK] Seq=10670 Ack=3472 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
 1040 2191.846917275    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=14142 Win=62780 Len=0
 1041 2191.847178086 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 41834 [PSH, ACK] Seq=14142 Ack=3472 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
 1042 2191.847276592    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=17614 Win=62780 Len=0
 1043 2191.847450853 152.199.19.160 → 10.0.2.15    TCP 1514 443 → 41834 [ACK] Seq=17614 Ack=3472 Win=65535 Len=1460 [TCP segment of a reassembled PDU]
 1044 2191.847638118 152.199.19.160 → 10.0.2.15    TCP 2066 443 → 41834 [PSH, ACK] Seq=19074 Ack=3472 Win=65535 Len=2012 [TCP segment of a reassembled PDU]
 1045 2191.847638335 152.199.19.160 → 10.0.2.15    TCP 1698 443 → 41834 [PSH, ACK] Seq=21086 Ack=3472 Win=65535 Len=1644 [TCP segment of a reassembled PDU]
 1046 2191.847733527    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=22730 Win=62780 Len=0
 1047 2191.849849830 152.199.19.160 → 10.0.2.15    TLSv1.3 3526 Application Data, Application Data, Application Data
 1048 2191.850189186    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=26202 Win=62780 Len=0
 1049 2191.851760912 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 41834 [PSH, ACK] Seq=26202 Ack=3472 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
 1050 2191.852172137    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=29674 Win=62780 Len=0
 1051 2191.852184609 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 41834 [PSH, ACK] Seq=29674 Ack=3472 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
 1052 2191.852259405    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=33146 Win=62780 Len=0
 1053 2191.854365800 152.199.19.160 → 10.0.2.15    TCP 3526 443 → 41834 [PSH, ACK] Seq=33146 Ack=3472 Win=65535 Len=3472 [TCP segment of a reassembled PDU]
 1054 2191.854665771    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=36618 Win=62780 Len=0
 1055 2191.858103847 152.199.19.160 → 10.0.2.15    TLSv1.3 6582 Application Data, Application Data, Application Data
 1056 2191.858392170    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=43146 Win=62780 Len=0
 1057 2191.858737881 152.199.19.160 → 10.0.2.15    TCP 6466 443 → 41834 [PSH, ACK] Seq=43146 Ack=3472 Win=65535 Len=6412 [TCP segment of a reassembled PDU]
 1058 2191.858738298 152.199.19.160 → 10.0.2.15    TLSv1.3 1390 Application Data
 1059 2191.858838458    10.0.2.15 → 152.199.19.160 TCP 54 41834 → 443 [ACK] Seq=3472 Ack=50894 Win=62780 Len=0
 1060 2197.042237710 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
 1061 2197.042580958 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
 1062 2238.268496138    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41834 → 443 [ACK] Seq=3471 Ack=50894 Win=62780 Len=0
 1063 2238.269118990 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41834 [ACK] Seq=50894 Ack=3472 Win=65535 Len=0
 1064 2243.377968422 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
 1065 2243.380239579 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
 1066 2249.150144369 34.107.243.93 → 10.0.2.15    TLSv1.3 78 Application Data
 1067 2249.150746785    10.0.2.15 → 34.107.243.93 TLSv1.3 82 Application Data
 1068 2249.151366322 34.107.243.93 → 10.0.2.15    TCP 60 443 → 42616 [ACK] Seq=1257 Ack=1537 Win=65535 Len=0
 1069 2283.354631777    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41834 → 443 [ACK] Seq=3471 Ack=50894 Win=62780 Len=0
 1070 2283.355154447 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41834 [ACK] Seq=50894 Ack=3472 Win=65535 Len=0
 1071 2328.389415238    10.0.2.15 → 152.199.19.160 TCP 54 [TCP Keep-Alive] 41834 → 443 [ACK] Seq=3471 Ack=50894 Win=62780 Len=0
 1072 2328.389804630 152.199.19.160 → 10.0.2.15    TCP 60 [TCP Keep-Alive ACK] 443 → 41834 [ACK] Seq=50894 Ack=3472 Win=65535 Len=0
 1073 2333.499969019 PcsCompu_92:f1:64 → RealtekU_12:35:02 ARP 42 Who has 10.0.2.2? Tell 10.0.2.15
 1074 2333.500304024 RealtekU_12:35:02 → PcsCompu_92:f1:64 ARP 60 10.0.2.2 is at 52:54:00:12:35:02
root@debian12:~# python3 -m http.server 8080
Serving HTTP on 0.0.0.0 port 8080 (http://0.0.0.0:8080/) ...
^C
Keyboard interrupt received, exiting.
root@debian12:~# sudo tshark -i enp0s3 -f "arp" -w arp_capture.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:29474) 14:36:36.657122 [Main MESSAGE] -- Capture started.
 ** (tshark:29474) 14:36:36.657331 [Main MESSAGE] -- File: "arp_capture.pcap"
^C
tshark: 
debianroot@debian12:~$ sudo wireshark
[sudo] password for debianroot: 
Sorry, try again.
[sudo] password for debianroot: 
debianroot is not in the sudoers file.
debianroot@debian12:~$ su -
Password: 
root@debian12:~# sudo wireshark
 ** (wireshark:48321) 17:37:49.023889 [GUI WARNING] -- could not connect to display 
 ** (wireshark:48321) 17:37:49.029390 [GUI ERROR] -- This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.

Aborted
root@debian12:~# sudo tcpdump -i enp0s3
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on enp0s3, link-type EN10MB (Ethernet), snapshot length 262144 bytes
17:38:06.193481 IP debian12.8888 > 192.168.1.1.domain: 35748+ A? mobile.events.data.microsoft.com. (50)
17:38:06.193646 IP debian12.12260 > 192.168.1.1.domain: 37015+ Type65? mobile.events.data.microsoft.com. (50)
17:38:06.212434 IP debian12.55107 > 192.168.1.1.domain: 12225+ PTR? 1.1.168.192.in-addr.arpa. (42)
17:38:06.214042 IP debian12.43888 > 20.189.173.5.https: Flags [P.], seq 1062353362:1062353474, ack 5576785, win 62780, length 112
17:38:06.216167 IP debian12.43888 > 20.189.173.5.https: Flags [P.], seq 112:151, ack 1, win 62780, length 39
17:38:06.216248 IP debian12.43888 > 20.189.173.5.https: Flags [P.], seq 151:2427, ack 1, win 62780, length 2276
17:38:06.216345 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 112, win 65535, length 0
17:38:06.216621 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 151, win 65535, length 0
17:38:06.216621 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 1611, win 65535, length 0
17:38:06.216621 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 2427, win 65535, length 0
17:38:06.239616 IP 192.168.1.1.domain > debian12.8888: 35748 3/0/0 CNAME mobile.events.data.trafficmanager.net., CNAME onedscolprdcus01.centralus.cloudapp.azure.com., A 52.182.141.63 (173)
17:38:06.244513 IP 192.168.1.1.domain > debian12.12260: 37015 2/1/0 CNAME mobile.events.data.trafficmanager.net., CNAME onedscolprdcus09.centralus.cloudapp.azure.com. (218)
17:38:06.245009 IP 192.168.1.1.domain > debian12.55107: 12225 NXDomain* 0/1/0 (101)
17:38:06.313149 IP debian12.40405 > 192.168.1.1.domain: 27541+ PTR? 5.173.189.20.in-addr.arpa. (43)
17:38:06.365748 IP 192.168.1.1.domain > debian12.40405: 27541 NXDomain 0/1/0 (129)
17:38:06.441765 IP 20.189.173.5.https > debian12.43888: Flags [P.], seq 1:40, ack 2427, win 65535, length 39
17:38:06.484023 IP debian12.43888 > 20.189.173.5.https: Flags [.], ack 40, win 62780, length 0
17:38:06.709959 IP 20.189.173.5.https > debian12.43888: Flags [P.], seq 40:141, ack 2427, win 65535, length 101
17:38:06.710136 IP debian12.43888 > 20.189.173.5.https: Flags [.], ack 141, win 62780, length 0
17:38:06.758543 IP debian12.43888 > 20.189.173.5.https: Flags [P.], seq 2427:2462, ack 141, win 62780, length 35
17:38:06.759712 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 2462, win 65535, length 0
17:38:23.155018 IP debian12.56788 > ams15s30-in-f142.1e100.net.https: Flags [P.], seq 1527739326:1527739365, ack 36416937, win 64028, length 39
17:38:23.156173 IP ams15s30-in-f142.1e100.net.https > debian12.56788: Flags [.], ack 39, win 65535, length 0
17:38:23.165452 IP debian12.56788 > ams15s30-in-f142.1e100.net.https: Flags [P.], seq 39:63, ack 1, win 64028, length 24
17:38:23.166001 IP debian12.56788 > ams15s30-in-f142.1e100.net.https: Flags [F.], seq 63, ack 1, win 64028, length 0
17:38:23.167377 IP ams15s30-in-f142.1e100.net.https > debian12.56788: Flags [.], ack 63, win 65535, length 0
17:38:23.167378 IP ams15s30-in-f142.1e100.net.https > debian12.56788: Flags [.], ack 64, win 65535, length 0
17:38:23.192912 IP debian12.49117 > 192.168.1.1.domain: 44063+ PTR? 142.17.217.172.in-addr.arpa. (45)
17:38:23.195875 IP ams15s30-in-f142.1e100.net.https > debian12.56788: Flags [F.], seq 1, ack 64, win 65535, length 0
17:38:23.195920 IP debian12.56788 > ams15s30-in-f142.1e100.net.https: Flags [.], ack 2, win 64028, length 0
17:38:23.223243 IP 192.168.1.1.domain > debian12.49117: 44063 3/0/0 PTR ams15s30-in-f142.1e100.net., PTR sof02s48-in-f14.1e100.net., PTR ams15s30-in-f14.1e100.net. (145)
17:38:46.810713 IP debian12.51580 > 152.199.19.160.https: Flags [.], ack 43506859, win 62780, length 0
17:38:46.811541 IP 152.199.19.160.https > debian12.51580: Flags [.], ack 1, win 65535, length 0
17:38:46.903472 IP debian12.57157 > 192.168.1.1.domain: 4585+ PTR? 160.19.199.152.in-addr.arpa. (45)
17:38:47.030826 IP 192.168.1.1.domain > debian12.57157: 4585 NXDomain 0/1/0 (116)
17:38:51.931555 ARP, Request who-has _gateway tell debian12, length 28
17:38:51.932407 ARP, Reply _gateway is-at 52:54:00:12:35:02 (oui Unknown), length 46
17:38:52.963277 IP debian12.43888 > 20.189.173.5.https: Flags [.], ack 141, win 62780, length 0
17:38:52.964078 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 2462, win 65535, length 0
17:39:00.611563 IP6 debian12 > ip6-allrouters: ICMP6, router solicitation, length 8
17:39:16.042115 IP debian12.mdns > mdns.mcast.net.mdns: 0 [10q] PTR (QM)? _ipps._tcp.local. PTR (QM)? _nmea-0183._tcp.local. PTR (QM)? _ftp._tcp.local. PTR (QM)? _webdav._tcp.local. PTR (QM)? _webdavs._tcp.local. PTR (QM)? _sftp-ssh._tcp.local. PTR (QM)? _smb._tcp.local. PTR (QM)? _afpovertcp._tcp.local. PTR (QM)? _nfs._tcp.local. PTR (QM)? _ipp._tcp.local. (158)
17:39:16.042870 IP6 debian12.mdns > ff02::fb.mdns: 0 [10q] PTR (QM)? _ipps._tcp.local. PTR (QM)? _nmea-0183._tcp.local. PTR (QM)? _ftp._tcp.local. PTR (QM)? _webdav._tcp.local. PTR (QM)? _webdavs._tcp.local. PTR (QM)? _sftp-ssh._tcp.local. PTR (QM)? _smb._tcp.local. PTR (QM)? _afpovertcp._tcp.local. PTR (QM)? _nfs._tcp.local. PTR (QM)? _ipp._tcp.local. (158)
17:39:16.145798 IP debian12.34488 > 192.168.1.1.domain: 47483+ PTR? 251.0.0.224.in-addr.arpa. (42)
17:39:16.198824 IP 192.168.1.1.domain > debian12.34488: 47483 1/0/0 PTR mdns.mcast.net. (70)
17:39:16.201370 IP debian12.52666 > 192.168.1.1.domain: 53369+ PTR? b.f.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.2.0.f.f.ip6.arpa. (90)
17:39:16.408478 IP 192.168.1.1.domain > debian12.52666: 53369 NXDomain 0/1/0 (154)
17:39:31.180983 IP 152.199.19.160.https > debian12.51580: Flags [P.], seq 1:58, ack 1, win 65535, length 57
17:39:31.180984 IP 152.199.19.160.https > debian12.51580: Flags [P.], seq 58:82, ack 1, win 65535, length 24
17:39:31.180984 IP 152.199.19.160.https > debian12.51580: Flags [F.], seq 82, ack 1, win 65535, length 0
17:39:31.192629 IP debian12.51580 > 152.199.19.160.https: Flags [.], ack 83, win 62780, length 0
17:39:31.218421 IP debian12.51580 > 152.199.19.160.https: Flags [F.], seq 1, ack 83, win 62780, length 0
17:39:31.219008 IP 152.199.19.160.https > debian12.51580: Flags [.], ack 2, win 65535, length 0
17:39:36.215500 ARP, Request who-has _gateway tell debian12, length 28
17:39:36.215748 ARP, Reply _gateway is-at 52:54:00:12:35:02 (oui Unknown), length 46
17:39:38.010766 IP debian12.43888 > 20.189.173.5.https: Flags [.], ack 141, win 62780, length 0
17:39:38.011108 IP 20.189.173.5.https > debian12.43888: Flags [.], ack 2462, win 65535, length 0
17:39:57.465815 IP debian12.35117 > 192.168.1.1.domain: 10633+ A? contile.services.mozilla.com. (46)
17:39:57.465844 IP debian12.35117 > 192.168.1.1.domain: 4239+ AAAA? contile.services.mozilla.com. (46)
17:39:57.589677 IP 192.168.1.1.domain > debian12.35117: 10633 1/4/0 A 34.117.188.166 (199)
17:39:57.589878 IP 192.168.1.1.domain > debian12.35117: 4239 0/1/0 (127)
17:39:57.627528 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 1357
17:39:57.629446 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [S], seq 2202802105, win 64240, options [mss 1460,sackOK,TS val 2209788937 ecr 0,nop,wscale 7], length 0
17:39:57.635543 IP debian12.45123 > 192.168.1.1.domain: 14084+ PTR? 166.188.117.34.in-addr.arpa. (45)
17:39:57.650881 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [S.], seq 68992001, ack 2202802106, win 65535, options [mss 1460], length 0
17:39:57.650945 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [.], ack 1, win 64240, length 0
17:39:57.653856 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [P.], seq 1:680, ack 1, win 64240, length 679
17:39:57.655083 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [.], ack 680, win 65535, length 0
17:39:57.684076 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 1357
17:39:57.695746 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 1357
17:39:57.700173 IP 192.168.1.1.domain > debian12.45123: 14084 1/0/0 PTR 166.188.117.34.bc.googleusercontent.com. (98)
17:39:57.700408 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 156
17:39:57.711400 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 156
17:39:57.719769 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [P.], seq 1:213, ack 680, win 65535, length 212
17:39:57.719822 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [.], ack 213, win 64028, length 0
17:39:57.720806 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [P.], seq 680:744, ack 213, win 64028, length 64
17:39:57.721147 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [.], ack 744, win 65535, length 0
17:39:57.722195 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [P.], seq 744:914, ack 213, win 64028, length 170
17:39:57.722569 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [.], ack 914, win 65535, length 0
17:39:57.723521 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 571
17:39:57.723840 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 123
17:39:57.728010 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 31
17:39:57.740394 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 30
17:39:57.743791 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [P.], seq 213:831, ack 914, win 65535, length 618
17:39:57.744772 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [P.], seq 914:945, ack 831, win 64028, length 31
17:39:57.745127 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [.], ack 945, win 65535, length 0
17:39:57.749624 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.43998: Flags [P.], seq 831:862, ack 945, win 65535, length 31
17:39:57.762411 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 32
17:39:57.791388 IP debian12.43998 > 166.188.117.34.bc.googleusercontent.com.https: Flags [.], ack 862, win 64028, length 0
17:39:57.910125 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 116
17:39:57.915041 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 31
17:39:57.931351 IP debian12.35558 > 166.188.117.34.bc.googleusercontent.com.https: UDP, length 32
17:39:57.968549 IP 166.188.117.34.bc.googleusercontent.com.https > debian12.35558: UDP, length 27
17:40:11.856124 IP 20.189.173.5.https > debian12.43888: Flags [R.], seq 141, ack 2462, win 65535, length 0
^C
93 packets captured
93 packets received by filter
0 packets dropped by kernal