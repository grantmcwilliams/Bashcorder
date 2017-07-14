Bashcorder is a tool that uses bash, ffmpeg and zenity to provide screen cap recording functionality. 

## Workflow
The workflow is very simple. 
1. To start recording press configurable keyboard shortcut and countdown appears
2. To end recording press a second configurable keyboard shortcut
3. The Save file dialog will appear - choose the location to save the video too
4. If the Save dialog is canceled the video is deleted
5. If the Chosen file in the save dialog exists it will ask if this is a Pickup or a Retake
6. It names the file accordingly

## Features
* Record to ram or disk
* Configurable ffmpeg recording settings - lossless x.264 is the default
* Configurable ffmpeg re-encode settings - compresses lossless as defined by the user
* Snapshots host OS using LVM
* Can update the OS snapshot if configuration changes are made
* Can roll back the to the previous snapshot
* Switch to KVM hypervisor
* Switch to VirtualBox hypervisor
* Run by hotkeys and Gnome3 right mouse click - progress, error, information and file dialogs provided by zenity
* Uses virtually no memory beyond the ffmpeg process
* Recording can be started and stopped while presentation is running saving editing


#### To Record:
Press configurable keyboard shortcut to record

#### To Save Recording:
Press configurable keyboard shortcut to be prompted with save dialog

#### To re-encode recorded videos from the CLI:
Run encodevideos <Video Files or Directory>

#### To re-encode recorded vides from the Gnome3 GUI:
ln -s ~/.bashcorder/encodevideos ~/.local/share/nautilus/scripts/EncodeVideos
Right click on Video directory and select scripts/Encodevideos

#### To update the OS drive configuration into a snapshot:
Run the updatesnap command

#### To reset the OS logical volume to the last snapshot and reboot:
Run the rollbacksnap command

#### To switch from KVM to VirtualBox:
Run the switchtovbox.sh command

#### To switch from Vbox to KVM:
Run the switchtokvm.sh command

