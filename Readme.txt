To install:

Append rc.local to the /etc/rc.d/rc.local file
Rename this directory so it's hidden and doesn't show up in an ls
Add the path to this directory in your system $PATH
Assign a keyboard shortcut in Gnome to start bashcorder
Assign a keyboard shortcut in Gnome to send a killall -USR1 to bashcorder

To Run:
Press first keyboard shortcut to record
Press second keyboard shortcut to save
Run resetsnap to add recent disk changes to rollback snapshot
Run rollback to rollback recent disk changes and reboot
