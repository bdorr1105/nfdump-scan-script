#nfdump script for quick for running against netflow logs utilizing nfdump / ncapd as a netflow collection server

## This script was made for fun so I can recursively iterate through netflow data to quicky get some insight on traffic flow in the netowrk. This script will help you quickly identify top talker, top destination ports and flows of traffic. 

###Top 10 IP Address and Destination Ports ordered bytes by ip
![Choice 1](https://user-images.githubusercontent.com/12386911/173273361-a217926f-39f5-4d35-987e-2b81bb8b235e.png)

###Top 10 source IP addresses ordered bytes by ip
![Choice 2](https://user-images.githubusercontent.com/12386911/173275532-85048d78-4a0e-44cc-aab1-6a317fdf3d07.png)

###Top 10 source IP by protocol!
[Choice 3](https://user-images.githubusercontent.com/12386911/173275619-8eaa2afb-4aac-466c-8cd2-e132a1b7538b.png)

###Top 10 Flows by source and destination

![Choice 4](https://user-images.githubusercontent.com/12386911/173275747-5a3f0035-1ecc-4263-b821-9f60c14ab880.png)
