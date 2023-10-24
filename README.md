# APMinerTool: Download, Setup and How to Use [Windows/Linux/MacOS]

![image](https://user-images.githubusercontent.com/98889829/212470593-eea9586e-089e-41b1-b6a7-bfadabba9711.png)

APMinerTool - is a mining farm monitoring software that can scan multiple LAN IP segments at the same time and can monitor ASIC operation status in batch. The software supports alert settings, IP ranges, firmware, etc.

[Download APMinerTool v1.0.11 for Windows/Linux/MacOS](https://github.com/EddieLise/APMinerTool/releases/download/apminertool/APMinerTool_1.0.11_portable.rar)
------------------------------------------------------------------
## Features
+ Batch monitoring of the state of the ASIC.
+ Mass configuration of devices (in batches).
+ Firmware update (in batches).
+ Batch restart.
+ Supports simultaneous scanning of multiple IP segment miners on the local network.

# How to setup APMinerTool

## Step 1 - Download the program
## Step 2 - Run IP Scanner
First thing you need to do is find the IP of your ASIC. This can be done in this program, or you can use a lighter utility - IP Reporter.

Click "Start Scan" and then press and hold the "IP report" button on each ASIC for 3-5 seconds to start adding devices.

After you connected the device to the network and power supply, the IP obtained during the device setup is in DHCP mode and the IP address is not fixed. If you have many devices, you can set fixed IP addresses in batch mode for easy management.

Example: the router assigns a mode DHCP: 101-254. Just click the "start scan" button.

The scan will take about 30 seconds. When it is complete, a window should appear informing you that the process is complete:

![image](https://user-images.githubusercontent.com/98889829/212470470-f1fc3d6f-5b87-4fab-bbcb-081c2577734a.png)

The utility will display information about what it found.

![image](https://user-images.githubusercontent.com/98889829/212470482-cd33e6ae-c467-457c-a69a-9ecb23a55ad2.png)

Enter the static IP address you want to set for the miner in the next fill IP field:

![image](https://user-images.githubusercontent.com/98889829/212470487-2a2abfbe-5c26-47c3-9159-01f0f2b58071.png)

## Step 3 - Configure the utility
Enter the pool address and password in batch mode in the "Pool Configuration" section.

![image](https://user-images.githubusercontent.com/98889829/212470492-bfac841d-7908-49e0-863f-b6e792dceaa2.png)

In the "Worker" field, select the name of the worker (for tracking statistics. The name can be anything. For example, "Antminer"). In the field on the right, select the type of coin to be mined.

![image](https://user-images.githubusercontent.com/98889829/212470508-f2bf0bcf-29b3-4b5f-bce4-2fb6e9075fc3.png)

Check out the list of available devices. The important part here is that you can see which devices are out of order due to the high temperature.

![image](https://user-images.githubusercontent.com/98889829/212470511-0ec47c91-2fb3-43cc-b48b-badbbeeec274.png)

## Firmware
You can find the original ASIC firmware on the Bitmain website: https://service.bitmain.com/support/download
