#This will set the users Computer Name to be it's S/N
sudo jamf setComputerName | ioreg -l | grep IOPlatformSerialNumber