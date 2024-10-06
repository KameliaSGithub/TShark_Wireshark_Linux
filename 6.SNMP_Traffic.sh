┌─[user@parrot]─[~/Downloads/TShark_Wireshark_ParrotLinux]
└──╼ $su -
Password: 
┌─[root@parrot]─[~]
└──╼ #sudo apt update
Get:1 https://deb.parrot.sh/parrot lory InRelease [29.8 kB]
Get:2 https://deb.parrot.sh/direct/parrot lory-security InRelease [29.4 kB]
Get:3 https://deb.parrot.sh/parrot lory-backports InRelease [29.7 kB]
Get:4 https://deb.parrot.sh/parrot lory/main amd64 Packages [19.2 MB]
Get:5 https://deb.parrot.sh/direct/parrot lory-security/main amd64 Packages [364 kB]
Get:6 https://deb.parrot.sh/parrot lory-backports/main amd64 Packages [590 kB]
Get:7 https://deb.parrot.sh/parrot lory-backports/contrib amd64 Packages [10.9 kB]
Fetched 20.2 MB in 8s (2461 kB/s)
Reading package lists... Done
Building dependency tree... 50Building dependency tree... 50Building dependency tree... Done
Reading state information... 0Reading state information... 0Reading state information... Done
80 packages can be upgraded. Run 'apt list --upgradable' to see them.
┌─[root@parrot]─[~]
└──╼ #apt search snmp
Sorting... Done
Full Text Search... Done
ap-utils/parrot6 1.5-5+b1 amd64
  Access Point SNMP Utils for Linux

braa/parrot6,now 0.82-7 amd64 [installed,automatic]
  Mass SNMP scanner

cacti/parrot6 1.2.24+ds1-1+deb12u4 all
  web interface for graphing of monitoring systems

centreon-plugins/parrot6 0.0~20221017-1 all
  Collection of Nagios plugins to monitor OS, services and network devices

cisco-torch/parrot6,now 0.4b-1parrot1 all [installed,automatic]
  Cisco device scanner

collectd-core/parrot6 5.12.0-14 amd64
  statistics collection and monitoring daemon (core system)

copy-router-config/parrot6,now 1.0-1parrot1 all [installed,automatic]
  Copies Cisco configs via SNMP

corosync-notifyd/parrot6 3.1.7-1 amd64
  cluster engine notification daemon

dropwatch/parrot6 1.5.4-2 amd64
  tool for detecting and diagnosing dropped network packets

erlang-common-test/parrot6 1:25.2.3+dfsg-1 amd64
  Erlang/OTP application for automated testing

erlang-snmp/parrot6 1:25.2.3+dfsg-1 amd64
  Erlang/OTP SNMP applications

fence-agents/parrot6 4.12.1-1 amd64
  Fence Agents for Red Hat Cluster

frr-snmp/parrot6,parrot6-security 8.4.4-1.1~deb12u1 amd64
  FRRouting suite - SNMP support

fusioninventory-agent/parrot6 1:2.6-3 all
  hardware and software inventory tool (client)

fusioninventory-agent-task-network/parrot6 1:2.6-3 all
  network device discovery for FusionInventory Agent

golang-github-geoffgarside-ber-dev/parrot6 1.1.0-2 all
  Fork of golang pkg `encoding/asn1` to support the Basic Encoding Rules (library)

golang-github-gosnmp-gosnmp-dev/parrot6 1.35.0-1 all
  SNMP library written in Go

golang-github-soniah-gosnmp-dev/parrot6 1.35.0-1 all
  Transitional dummy package

hydra/parrot6,now 9.4-1 amd64 [installed,automatic]
  very fast network logon cracker

hydra-gtk/parrot6 9.4-1 amd64
  very fast network logon cracker - GTK+ based GUI

ifstat/parrot6 1.1-8.2 amd64
  InterFace STATistics Monitoring

iptotal/parrot6 0.3.3-17 amd64
  monitor for IP traffic, not requiring SNMP

irssi-scripts/parrot6 20220704 all
  collection of scripts for irssi

kamailio/parrot6 5.6.3-2 amd64
  very fast, dynamic and configurable SIP server

kamailio-snmpstats-modules/parrot6 5.6.3-2 amd64
  SNMP AgentX subagent module for the Kamailio SIP server

liblldpctl-dev/parrot6,parrot6-security 1.0.16-1+deb12u1 amd64
  implementation of IEEE 802.1ab (LLDP) - development files

libnet-snmp-perl/parrot6,now 6.0.1-7 all [installed,automatic]
  Script SNMP connections

libnet-telnet-cisco-perl/parrot6 1.10-5.4 all
  Additional functionality to automate Cisco management

libnetsnmptrapd40/parrot6,now 5.9.3+dfsg-2 amd64 [installed,automatic]
  SNMP (Simple Network Management Protocol) trap library

libosmoctrl0/parrot6 1.7.0-3 amd64
  Osmo control library

libsmi2-common/parrot6 0.4.8+dfsg2-16 all
  library to access SMI MIB information - MIB module files

libsnmp-base/parrot6,now 5.9.3+dfsg-2 all [installed,automatic]
  SNMP configuration script, MIBs and documentation

libsnmp-dev/parrot6 5.9.3+dfsg-2 amd64
  SNMP (Simple Network Management Protocol) development files

libsnmp-extension-passpersist-perl/parrot6 0.07-3 all
  Generic pass/pass_persist extension framework for Net-SNMP

libsnmp-info-perl/parrot6 3.92-1 all
  Object Oriented Perl5 Interface to Network devices and MIBs through SNMP

libsnmp-mib-compiler-perl/parrot6 0.06-4 all
  MIB Compiler supporting SMIv1 and SMIv2

libsnmp-perl/parrot6,now 5.9.3+dfsg-2 amd64 [installed,automatic]
  SNMP (Simple Network Management Protocol) Perl5 support

libsnmp-session-perl/parrot6 1.14~git20221124T101957-1 all
  Perl support for accessing SNMP-aware devices

libsnmp40/parrot6,now 5.9.3+dfsg-2 amd64 [installed,automatic]
  SNMP (Simple Network Management Protocol) library

lldpd/parrot6,parrot6-security 1.0.16-1+deb12u1 amd64
  implementation of IEEE 802.1ab (LLDP)

monitoring-plugins-contrib/parrot6 42.20230308+deb12u1+b1 amd64
  Plugins for nagios compatible monitoring systems

monitoring-plugins-standard/parrot6 2.3.3-5+deb12u2 amd64
  Plugins for nagios compatible monitoring systems (standard)

mrtg/parrot6 2.17.10-5+deb12u2 amd64
  Multi Router Traffic Grapher

munin-plugins-core/parrot6 2.0.73-1 all
  network-wide graphing framework (plugins for node)

nagios-snmp-plugins/parrot6 2.1.0-3 all
  SNMP Plugins for nagios

netwox/parrot6 5.39.0-1.5 amd64
  networking utilities

netwox-doc/parrot6 5.39.0-1.5 all
  documentation for netwox toolbox

nfs-ganesha/parrot6 4.3-2 amd64
  NFS server in User Space

nfs-ganesha-ceph/parrot6 4.3-2 amd64
  nfs-ganesha fsal ceph libraries

nfs-ganesha-doc/parrot6 4.3-2 all
  Documentation for nfs-ganesha

nfs-ganesha-gluster/parrot6 4.3-2 amd64
  nfs-ganesha fsal gluster libraries

nfs-ganesha-gpfs/parrot6 4.3-2 amd64
  nfs-ganesha fsal gpfs libraries

nfs-ganesha-mem/parrot6 4.3-2 amd64
  nfs-ganesha fsal mem libraries

nfs-ganesha-mount-9p/parrot6 4.3-2 all
  nfs-ganesha mount.9P

nfs-ganesha-nullfs/parrot6 4.3-2 amd64
  nfs-ganesha fsal nullfs libraries

nfs-ganesha-proxy-v4/parrot6 4.3-2 amd64
  nfs-ganesha fsal proxy v4 libraries

nfs-ganesha-rados-grace/parrot6 4.3-2 amd64
  nfs-ganesha ganesha-rados-grace program

nfs-ganesha-rgw/parrot6 4.3-2 amd64
  nfs-ganesha fsal rgw libraries

nfs-ganesha-vfs/parrot6 4.3-2 amd64
  nfs-ganesha fsal vfs libraries

nut-snmp/parrot6 2.8.0-7 amd64
  network UPS tools - SNMP driver

onesixtyone/parrot6,now 0.3.4-1 amd64 [installed,automatic]
  fast and simple SNMP scanner

openhpi-plugin-snmp-bc/parrot6 3.8.0-2.1+b1 amd64
  OpenHPI plugin module for IBM's BladeCenter or RSA over SNMP

patator/parrot6 0.9-3 all
  Multi-purpose brute-forcer

pcs-snmp/parrot6 0.11.5-1+deb12u1 all
  Pacemaker Configuration System SNMP agent

perl-cisco-copyconfig/parrot6,now 1.4-1parrot1 amd64 [installed,automatic]
  Provides methods for manipulating Cisco devices

php-snmp/parrot6 2:8.2+93 all
  SNMP module for PHP [default]

php8.2-snmp/parrot6,parrot6-security 8.2.24-1~deb12u1 amd64
  SNMP module for PHP

proftpd-mod-snmp/parrot6 1.3.8+dfsg-4+deb12u3 amd64
  Versatile, virtual-hosting FTP daemon - SNMP module

prometheus-snmp-exporter/parrot6 0.21.0-1+b5 amd64
  Prometheus exporter for SNMP-enabled devices

python-pyasn1-doc/parrot6 0.4.8-3 all
  ASN.1 library for Python (documentation)

python-pysmi-doc/parrot6 0.3.2-3 all
  SNMP SMI/MIB Parser (documentation)

python-pysnmp4-doc/parrot6 4.4.12-2 all
  Python SNMP library for agents and managers (unstable branch)

python-snimpy-doc/parrot6 1.0.0-1 all
  interactive SNMP tool with Python (documentation)

python3-easysnmp/parrot6 0.2.6-1+b2 amd64
  Pythonic SNMP library based on Net-SNMP (Python 3)

python3-nfs-ganesha/parrot6 4.3-2 all
  Python bindings for nfs-ganesha

python3-pyagentx/parrot6 0.4.1-8 all
  AgentX package to extend SNMP with pure Python

python3-pyasn1/parrot6,now 0.4.8-3 all [installed,automatic]
  ASN.1 library for Python (Python 3 module)

python3-pysmi/parrot6,now 0.3.2-3 all [installed,automatic]
  SNMP SMI/MIB Parser

python3-pysnmp4/parrot6,now 4.4.12-2 all [installed,automatic]
  Python SNMP library for agents and managers (Python 3 module)

python3-pysnmp4-apps/parrot6 0.3.2-3 all
  Applications for the Python SNMP library

python3-pysnmp4-mibs/parrot6 0.1.3-4 all
  MIBs for the Python SNMP library

python3-snimpy/parrot6 1.0.0-1+b2 amd64
  high-level SNMP bindings for Python 3

rsyslog-snmp/parrot6 8.2302.0-1 amd64
  SNMP protocol support for rsyslog

ruby-snmp/parrot6,now 1.3.2-1 all [installed,automatic]
  simple network management protocol bindings for ruby

sblim-wbemcli/parrot6 1.6.3-3 amd64
  WBEM Command Line Interface for CIMOM access

snimpy/parrot6 1.0.0-1 all
  interactive SNMP tool with Python

snmp/parrot6 5.9.3+dfsg-2 amd64
  SNMP (Simple Network Management Protocol) applications

snmp-mibs-downloader/parrot6 1.5 all
  install and manage Management Information Base (MIB) files

snmpcheck/parrot6,now 1.9-0parrot1 all [installed,automatic]
  SNMP service enumeration tool

snmpd/parrot6 5.9.3+dfsg-2 amd64
  SNMP (Simple Network Management Protocol) agents

snmpenum/parrot6 0-0parrot1 all
  SNMP tabledump

snmpsim/parrot6 0.4.5-1 all
  SNMP agent simulator

snmptrapd/parrot6 5.9.3+dfsg-2 amd64
  Net-SNMP notification receiver

snmptrapfmt/parrot6 1.18 amd64
  configurable snmp trap handler daemon for snmpd

snmptt/parrot6 1.5-1 all
  SNMP trap handler for use with snmptrapd

syslog-ng-mod-snmp/parrot6 3.38.1-5 amd64
  Enhanced system logging daemon (SNMP plugin)

tcpdump/parrot6,now 4.99.3-1 amd64 [installed,automatic]
  command-line network traffic analyzer

tkmib/parrot6 5.9.3+dfsg-2 all
  SNMP (Simple Network Management Protocol) MIB browser

torrus-common/parrot6 3.00-2 all
  Universal front-end for Round-Robin Databases (common files)

vitrage-snmp-parsing/parrot6 9.0.0-3.1 all
  OpenStack RCA as a Service - SNMP Parsing Service

wmnd-snmp/parrot6 0.4.18-1+b1 amd64
  Dockapp monitoring network interfaces with SNMP support

yasat/parrot6 848-1.2 all
  simple stupid audit tool

zabbix-agent/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - agent

zabbix-agent2/parrot6 1:6.0.14+dfsg-1+b1 amd64
  Zabbix network monitoring solution - agent2

zabbix-frontend-php/parrot6 1:6.0.14+dfsg-1 all
  network monitoring solution - PHP front-end

zabbix-java-gateway/parrot6 1:6.0.14+dfsg-1 all
  network monitoring solution - Java gateway

zabbix-proxy-mysql/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - proxy (using MySQL)

zabbix-proxy-pgsql/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - proxy (using PostgreSQL)

zabbix-proxy-sqlite3/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - proxy (using SQLite3)

zabbix-sender/parrot6-backports 1:7.0.2+dfsg-1~bpo12+1 amd64
  Zabbix network monitoring solution - sender

zabbix-server-mysql/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - server (using MySQL)

zabbix-server-pgsql/parrot6 1:6.0.14+dfsg-1+b1 amd64
  network monitoring solution - server (using PostgreSQL)

zabbix-web-service/parrot6 1:6.0.14+dfsg-1+b1 amd64
  Zabbix network monitoring solution - web-service

└──╼ #sudo apt install snmp snmpdmp snmpdapt install 
E: dpkg was interrupted, you must manually run 'sudo dpkg --configure -a' to correct the problem. 
└──╼ #sudo apt install snmp snmpdmp snmpdapt install 
E: dpkg was interrupted, you must manually run 'sudo dpkg --configure -a' to correct the problem. 
└──╼ #sudo dpkg snmp snmpd
dpkg: error: need an action option

Type dpkg --help for help about installing and deinstalling packages [*];
Use 'apt' or 'aptitude' for user-friendly package management;
Type dpkg -Dhelp for a list of dpkg debug flag values;
Type dpkg --force-help for a list of forcing options;
Type dpkg-deb --help for help about manipulating *.deb files;

Options marked [*] produce a lot of output - pipe it through 'less' or 'more' !
└──╼ #sudo dpkg --configure -a
Setting up graphviz (2.42.2-7+deb12u1) ...
Setting up node-v8-compile-cache (2.3.0-3+deb12u1) ...
Setting up libqt5sql5-sqlite:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up libnode-dev (18.19.0+dfsg-6~deb12u2) ...
Setting up libgail-common:amd64 (2.24.33-2+deb12u1) ...
Setting up golang-go:amd64 (2:1.22~3~bpo12+1) ...
Setting up libqt5gui5:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up vlc-bin (3.0.21-0+deb12u1) ...
Setting up libqt5widgets5:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up rizin-cutter (2.3.4-1parrot2) ...
Setting up parrot-interface-home (6.2.2) ...
Setting up qt5-gtk-platformtheme:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up libqt5printsupport5:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up parrot-desktop-mate (6.2.2) ...
Setting up parrot-interface (6.2.2) ...
Setting up libqt5opengl5:amd64 (5.15.8+dfsg-11+deb12u2) ...
Setting up vlc-plugin-qt:amd64 (3.0.21-0+deb12u1) ...
Setting up vlc (3.0.21-0+deb12u1) ...
Setting up linux-image-6.9.7-amd64 (6.9.7-1parrot1) ...

/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-6.9.7-amd64

^Cdpkg: error processing package linux-image-6.9.7-amd64 (--configure):
 installed linux-image-6.9.7-amd64 package post-installation script subprocess was interrupted
Setting up python3-samba (2:4.20.4+dfsg-1~bpo12+1) ...
Setting up vlc-plugin-samba:amd64 (3.0.21-0+deb12u1) ...
dpkg: dependency problems prevent configuration of linux-headers-6.9.7-amd64:
 linux-headers-6.9.7-amd64 depends on linux-image-6.9.7-amd64 (= 6.9.7-1parrot1) | linux-image-6.9.7-amd64-unsigned (= 6.9.7-1parrot1); however:
  Package linux-image-6.9.7-amd64 is not configured yet.
  Package linux-image-6.9.7-amd64-unsigned is not installed.

dpkg: error processing package linux-headers-6.9.7-amd64 (--configure):
 dependency problems - leaving unconfigured
Setting up vlc-plugin-skins2:amd64 (3.0.21-0+deb12u1) ...
dpkg: dependency problems prevent configuration of linux-headers-amd64:
 linux-headers-amd64 depends on linux-headers-6.9.7-amd64 (= 6.9.7-1parrot1); however:
  Package linux-headers-6.9.7-amd64 is not configured yet.

dpkg: error processing package linux-headers-amd64 (--configure):
 dependency problems - leaving unconfigured
dpkg: dependency problems prevent configuration of linux-image-amd64:
 linux-image-amd64 depends on linux-image-6.9.7-amd64 (= 6.9.7-1parrot1); however:
  Package linux-image-6.9.7-amd64 is not configured yet.

dpkg: error processing package linux-image-amd64 (--configure):
 dependency problems - leaving unconfigured
Processing triggers for dbus (1.14.10-1~deb12u1) ...
Processing triggers for postgresql-common (248) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend requires a screen at least 13 lines tall and 31 columns wide.)
debconf: falling back to frontend: Readline
Building PostgreSQL dictionaries from installed myspell/hunspell packages...
  en_us
Removing obsolete dictionary files:
Processing triggers for libapache2-mod-php8.2 (8.2.20-1~deb12u1) ...
Processing triggers for libvlc-bin:amd64 (3.0.21-0+deb12u1) ...
Processing triggers for ca-certificates-java (20230710~deb12u1) ...
done.
Processing triggers for menu (2.1.49) ...
Processing triggers for php8.2-cli (8.2.20-1~deb12u1) ...
Processing triggers for mailcap (3.70+nmu1) ...
Processing triggers for bamfdaemon (0.5.6+repack-1) ...
Rebuilding /usr/share/applications/bamf-2.index...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for initramfs-tools (0.142+deb12u1) ...
update-initramfs: Generating /boot/initrd.img-6.5.0-13parrot1-amd64
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for mate-menus (1.26.0-3) ...
Setting up openjdk-17-jre:amd64 (17.0.12+7-2~deb12u1) ...
Processing triggers for libc-bin (2.36-9+deb12u8) ...
Processing triggers for systemd (254.16-1~bpo12+1) ...
Processing triggers for man-db (2.11.2-2) ...
Setting up openjdk-17-jdk-headless:amd64 (17.0.12+7-2~deb12u1) ...
Setting up maltego (4.7.0+parrot2) ...
Setting up openjdk-17-jdk:amd64 (17.0.12+7-2~deb12u1) ...
Errors were encountered while processing:
 linux-image-6.9.7-amd64
 linux-headers-6.9.7-amd64
 linux-headers-amd64
 linux-image-amd64
┌─[✗]─[root@parrot]─[~]
└──╼ #sudo apt --fix-broken install
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  golang-1.21-go golang-1.21-src samba-dsdb-modules
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 80 not upgraded.
4 not fully installed or removed.
After this operation, 0 B of additional disk space will be used.
Setting up linux-image-6.9.7-amd64 (6.9.7-1parrot1) ...
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-6.9.7-amd64
/etc/kernel/postinst.d/zz-update-grub:
Generating grub configuration file ...
Found background image: /usr/share/images/desktop-base/desktop-grub.png
Found linux image: /boot/vmlinuz-6.9.7-amd64
Found initrd image: /boot/initrd.img-6.9.7-amd64
Found linux image: /boot/vmlinuz-6.5.0-13parrot1-amd64
Found initrd image: /boot/initrd.img-6.5.0-13parrot1-amd64
Warning: os-prober will be executed to detect other bootable partitions.
Its output will be used to detect bootable binaries on them and create new boot entries.
Adding boot menu entry for UEFI Firmware Settings ...
done
Setting up linux-headers-6.9.7-amd64 (6.9.7-1parrot1) ...
Setting up linux-headers-amd64 (6.9.7-1parrot1) ...
Setting up linux-image-amd64 (6.9.7-1parrot1) ...
Scanning application launchers
Removing duplicate launchers or broken launchers
Launchers are updated
┌─[root@parrot]─[~]
└──╼ #sudo apt updatet update
&& sudo apt install snmp snmpd
Hit:1 https://deb.parrot.sh/parrot lory InRelease
Hit:2 https://deb.parrot.sh/direct/parrot lory-security InRelease
Hit:3 https://deb.parrot.sh/parrot lory-backports InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
80 packages can be upgraded. Run 'apt list --upgradable' to see them.
-bash: syntax error near unexpected token `&&'
┌─[✗]─[root@parrot]─[~]
└──╼ #sudo rm /var/lib/dpkg/lock
┌─[root@parrot]─[~]
└──╼ #sudo rm /var/lib/apt/lists/lock
┌─[root@parrot]─[~]
└──╼ #sudo rm /var/cache/apt/archives/lock
┌─[root@parrot]─[~]
└──╼ #snmpget --version
-bash: snmpget: command not found
┌─[✗]─[root@parrot]─[~]
└──╼ #sudo dpkg --configure -a
┌─[root@parrot]─[~]
└──╼ #sudo apt --fix-broken install
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  golang-1.21-go golang-1.21-src samba-dsdb-modules
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 80 not upgraded.
┌─[root@parrot]─[~]
└──╼ #ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=57 time=112 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=57 time=29.2 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=57 time=29.3 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=57 time=28.8 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=57 time=28.8 ms
64 bytes from 8.8.8.8: icmp_seq=6 ttl=57 time=27.7 ms
64 bytes from 8.8.8.8: icmp_seq=7 ttl=57 time=86.1 ms
64 bytes from 8.8.8.8: icmp_seq=8 ttl=57 time=76.8 ms
64 bytes from 8.8.8.8: icmp_seq=9 ttl=57 time=40.9 ms
64 bytes from 8.8.8.8: icmp_seq=10 ttl=57 time=46.5 ms
64 bytes from 8.8.8.8: icmp_seq=11 ttl=57 time=21.7 ms
64 bytes from 8.8.8.8: icmp_seq=12 ttl=57 time=21.8 ms
^C
--- 8.8.8.8 ping statistics ---
12 packets transmitted, 12 received, 0% packet loss, time 11034ms
rtt min/avg/max/mdev = 21.743/45.830/112.333/28.341 ms
└──╼ #sudo tshark -i enp0s3 -f "icmp" -w ~/latency_traffic.pcapfic.pcaptshark -i enp0s3 -f "icmp" -w ~/latency_tr
Running as user "root" and group "root". This could be dangerous.
Capturing on 'enp0s3'
 ** (tshark:41839) 07:09:07.523720 [Main MESSAGE] -- Capture started.
 ** (tshark:41839) 07:09:07.523810 [Main MESSAGE] -- File: "/root/latency_traffic.pcap"
tshark -r ~/latency_traffic.pcap -Y "icmp" -T fields -e icmp.seq -e icmp.resp_time
^C
tshark: 
┌─[root@parrot]─[~]
└──╼ #