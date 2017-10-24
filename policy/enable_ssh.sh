#!/bin/sh

# Enable ARD & VNC
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -allUsers -privs -all -clientopts -setvnclegacy -vnclegacy yes -setvncpw -vncpw ******** -restart -agent

# Enable SSH
systemsetup -setremotelogin on