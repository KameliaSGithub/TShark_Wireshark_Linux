┌─[user@parrot]─[~/Downloads/TShark_Wireshark_ParrotLinux]
└──╼ $sudo tshark -i enp0s3 -f "icmp" -w ~/icmp_traffic.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
tshark: The file to which the capture would be saved ("/home/user/icmp_traffic.pcap") could not be opened: Permission denied.

tshark: 
┌─[✗]─[user@parrot]─[~/Downloads/TShark_Wireshark_ParrotLinux]
└──╼ $su -
Password: 
┌─[root@parrot]─[~]
└──╼ #sudo tshark -i enp0s3 -f "icmp" -w ~/icmp_traffic.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:3512) 06:53:09.963504 [Main MESSAGE] -- Capture started.
 ** (tshark:3512) 06:53:09.963664 [Main MESSAGE] -- File: "/root/icmp_traffic.pcap"
^C
tshark: 
┌─[root@parrot]─[~]
└──╼ #ping -c 4 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=57 time=1007 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=57 time=78.5 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=57 time=22.2 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=57 time=21.2 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3015ms
rtt min/avg/max/mdev = 21.235/282.184/1006.822/419.010 ms, pipe 2
┌─[root@parrot]─[~]
└──╼ #^C
└──╼ #tshark -r ~/icmp_traffic.pcap -Y "icmp"Y "icmp"ark -r ~/icmp_traffic.pcap -
Running as user "root" and group "root". This could be dangerous.
┌─[root@parrot]─[~]
└──╼ #ping -c 4 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=57 time=70.2 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=57 time=29.7 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=57 time=28.7 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=57 time=23.8 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3012ms
rtt min/avg/max/mdev = 23.798/38.092/70.162/18.649 ms
┌─[root@parrot]─[~]
└──╼ #^C
└──╼ #tshark -r ~/icmp_traffic.pcap -Y "icmp"Y "icmp"ark -r ~/icmp_traffic.pcap -
Running as user "root" and group "root". This could be dangerous.