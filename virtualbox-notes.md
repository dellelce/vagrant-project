# VirtualBox

## Kernel Drivers

```
[root@titan6 vagrant]# lsmod | grep vbox
vboxpci                23149  0
vboxnetadp             25813  0
vboxnetflt             27959  0
vboxdrv               495683  4 vboxnetadp,vboxnetflt,vboxpci
```
