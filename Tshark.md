3. Analyzing VoIP Traffic with TShark
- Capture and analyze VoIP traffic to troubleshoot call quality issues.
- Identify the relevant network interface and start TShark to capture SIP/RTP traffic (typically on ports 5060 for SIP and a range for RTP).
Capture the traffic while making VoIP calls using a soft phone or calling application.
Save the capture to a file (e.g., voip_traffic.pcap).
Analyze the captured packets to assess:
Call setup times and any errors in SIP messages.
RTP packet loss or jitter contributing to poor call quality.
Document any identified issues and suggest ways to improve VoIP quality.

4. Analyzing HTTP Traffic with TShark

Objective: Capture and analyze HTTP traffic to identify potential web vulnerabilities.
- Use TShark to capture packets on a specified network interface that includes HTTP traffic (port 80).
- Save the captured data to a specified file (e.g., http_traffic.pcap).
- Apply filters in TShark to isolate HTTP requests and responses (e.g., using the -Y option).
- Analyze the captured packets to identify:
- Any patterns of unusual activity (e.g., excessive GET requests).
- Presence of any sensitive data (like credentials) in packets.
    Document your findings and suggest potential security improvements to mitigate identified issues.
Ensure you're running with appropriate permissions to capture the HTTP traffic.
Handle any errors related to the interface or capture permissions.
Use descriptive file names for outputs to avoid overwriting.
