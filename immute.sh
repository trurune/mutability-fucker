echo "WARNING! This script may be difficult to undo if you do not have a means of chrooting into your system."
echo "This script may have unknown results depending on what distro you are using, we reccomend only using this on verified distros"
echo "This script is expermental, and may fuck your system beyond repair as well."
echo "DO YOU ACKNOWLEDGE THE POTENTIAL FOR A 100% UNUSABLE SYSTEM? (Type YES! DO AS I SAY!)"
read ACKNOWLEDGEMENT
if [ ACKNOWLEDGEMENT == "YES! DO AS I SAY!" ]

chattr +i /etc
chattr +i /bin
chattr +i /sbin
chattr +i /mnt
chattr +i /boot
chattr +i /opt
echo "The process has completed! The system will now reboot!"

fi
