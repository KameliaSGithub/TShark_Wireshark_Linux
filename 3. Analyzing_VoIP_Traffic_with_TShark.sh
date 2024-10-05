debian@debian12:~/Downloads/Wireshark_Linux$ su -
Password: 
root@debian12:~# tshark -D
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
root@debian12:~# sudo tshark -i enp0s3 -f "port 5060 or udp and (portrange 10000-20000)" -w ~/Downloads/Wireshark_Linux/voip_traffic.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
tshark: The file to which the capture would be saved ("/root/Downloads/Wireshark_Linux/voip_traffic.pcap") could not be opened: No such file or directory.

tshark: 
root@debian12:~# mkdir -p /root/Downloads/Wireshark_Linux/
root@debian12:~# sudo tshark -i enp0s3 -f "port 5060 or udp and (portrange 10000-20000)" -w /root/Downloads/Wireshark_Linux/voip_traffic.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:12149) 22:41:31.411787 [Main MESSAGE] -- Capture started.
 ** (tshark:12149) 22:41:31.411923 [Main MESSAGE] -- File: "/root/Downloads/Wireshark_Linux/voip_traffic.pcap"
sudo tshark -i enp0s3 -f "port 5060 or udp and (portrange 10000-20000)" -w ~/voip_traffic.pcap

^C
tshark: 
root@debian12:~# 