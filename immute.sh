echo "WARNING! This script may be difficult to undo if you do not have a means of chrooting into your system."
echo "This script may have unknown results depending on what distro you are using, we reccomend only using this on verified distros"
echo "This script is expermental, and may fuck your system beyond repair as well."
echo "DO YOU ACKNOWLEDGE THE POTENTIAL FOR A 100% UNUSABLE SYSTEM? (Type YES! DO AS I SAY!)"
read ACKNOWLEDGEMENT
if [ $ACKNOWLEDGEMENT == "YES! DO AS I SAY!" ]
then
chattr +i /etc
echo Immuting /bin
chmod -R a-w /bin >> null
echo Immuting /sbin
chmod -R a-w /sbin >> null
echo Immuting /mnt
chattr -R +i /mnt >> null
echo Immuting /boot
chattr -R +i /boot >> null
echo Immuting /opt
chattr -R +i /opt >> null
echo Immuting /usr
chattr -R +i /usr >> null
echo Immuting /var
chattr -R +i /var >> null

echo "The process has completed! The system will now reboot!"

fi
