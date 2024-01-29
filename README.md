# Packet Transmission Control
## Overview
It is a program that accepts from the user size of the file to be transmitted (number of packets forming the file) and returns the value corresponding to the number of transmissions done to transfer the file. The maximum capacity of the network is to send 128 packets at a time following the illustrated rules:
The first transmission consists of 1 packet only.
If the number of packets in the previous transmission is smaller than 64 packets, then the next transmission will have the double of this number of packets.
If the number of packets in the previous transmission is greater than or equal to 64 packets, then the next transmission will have 1 more packets.
In order to illustrate the previous rules, this example shows the expected size of each transmission as well as the number of transmissions.

- Transfering 198 packets:

| Transmission Index | Size of Transmission | Total Number of Transmitted Packets |
| :----------------: | :------------------: | :---------------------------------: |
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 4 | 7 |
| 4 | 8 | 15 |
| 5 | 16 | 31 |
| 6 | 32 | 63 |
| 7 | 64 | 127 |
| 8 | 65 | 192 |
| 9 | 66 | 198 (some packets are not used) |

The total number of transmissions = 9
