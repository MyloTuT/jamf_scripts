#This will set the users Computer Name to be it's S/N
sudo jamf setComputerName -name | ioreg -l | grep IOPlatformSerialNumber