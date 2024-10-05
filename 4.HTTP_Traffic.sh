debian@debian12:~/Downloads/Wireshark_Linux$ su -
Password: 
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
root@debian12:~# sudo tshark -i enp0s3 -f "tcp port 80" -w ~/http_traffic.pcap
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:13051) 22:46:03.609748 [Main MESSAGE] -- Capture started.
 ** (tshark:13051) 22:46:03.618697 [Main MESSAGE] -- File: "/root/http_traffic.pcap"
^C
tshark: 
root@debian12:~# tshark -r ~/http_traffic.pcap -Y "http" -T fields -e http.request.method -e http.host -e http.request.uri -e http.response.code -e frame.time
Running as user "root" and group "root". This could be dangerous.
root@debian12:~# tshark -r ~/http_traffic.pcap -Y "http.request.method == 'POST'" -T fields -e http.file_data -e http.request.uri
Running as user "root" and group "root". This could be dangerous.
tshark: 'POST' is too long to be a valid character constant.
    http.request.method == 'POST'
                           ^~~~~~
root@debian12:~# 