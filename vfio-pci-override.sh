#!xD
#put me in /usr/sbin/ xD
PREREQS=""
DEVS="1002:67df 1da2:aaf0"
for DEV in $DEVS; do
        echo "vfio-pci" > /sys/bus/pci/devices/$DEV/driver_override
done

modprobe -i vfio-pci
