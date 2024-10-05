1. Network Packet Capture with TShark
- The task involves capturing network packets using TShark, a terminal-based version of Wireshark. The user is required to utilize TShark to save network traffic data to a specified file while ensuring the correct network interface is selected for capturing packets. The user must also be aware of the potential security implications of running the command with root privileges.
Conditions:

-The user must have appropriate permissions to execute TShark commands.
The correct network interface must be specified for packet capturing (retrievable with tshark -D).
The user must handle potential errors, such as capturing with an invalid interface or insufficient permissions.
The output file for the captured packets should be defined and correctly specified to avoid overwriting existing files unintentionally.


2.Wireshark to Diagnose Network Connectivity Issues

- Create Wireshark to diagnose common network connectivity problems. First, select target devices or services on the network and test connectivity using commands like ping and traceroute to analyze the route and response times. Next, launch Wireshark and start capturing network traffic while you repeat the ping and traceroute tests. After recording the traffic, filter the results to isolate ICMP or TCP packets and analyze the details for any packet issues, such as loss or high latency. Finally, document your findings in a brief report that summarizes the results and potential network connectivity problems. 


