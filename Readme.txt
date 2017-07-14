Bashcorder is a tool that uses bash, ffmpeg and zenity to provide screen cap recording functionality. 
It has no interface and is started from a hotkey. When a second hotkey is pressed it stops the recording and prompts the user to save it.

To Record:
-----------
Press first keyboard shortcut to record
Press second keyboard shortcut to save

To re-encode recorded videos from the CLI:
------------------------------------------
Run encodevideos <Video Files or Directory>

To re-encode recorded vides from the GUI:
------------------------------------------
ln -s ~/.bashcorder/encodevideos ~/.local/share/nautilus/scripts/EncodeVideos
Right click on Video directory and select scripts/Encodevideos

To update the OS drive configuration into a snapshop:
----------------------------------------------------
Run the update command

To reset the OS logical volume to the last snapshot and reboot:
---------------------------------------------------------------
Run the rollback command

To switch from KVM to VirtualBox:
---------------------------------
Run the switchtovbox command

To switch from Vbox to KVM:
---------------------------
Run the switchtokvm command

