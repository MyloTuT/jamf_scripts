#!/bin/sh

#!/bin/bash 

# Enable ARD, Remote Management, and Remote Login (SSH) \- 1. Removes Administrators Group from Remote login, 2 & 3. Creates xxxxxxxxx Membership, 4 & 5. Adds xxxxxxxxx User to Remotelogin then activates.

sudo dseditgroup -o edit -d admin -t group com.apple.access_ssh
sudo dscl . append /Groups/com.apple.access_ssh user jamfadmin
sudo dscl . append /Groups/com.apple.access_ssh GroupMembership Administrators
sudo dscl . append /Groups/com.apple.access_ssh groupmembers `dscl . read /Users/xxxxxxxxx GeneratedUID | cut -d " " -f 2`
sudo systemsetup -setremotelogin on
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -allowAccessFor -specifiedUsers
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -users jamfadmin -access -on -privs -all
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -activate -restart -console