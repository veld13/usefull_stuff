
# network disk mount:
> cat /etc/fstab
# uid=1000(veld) groups:...,122(sambauser)
//192.168.114.22/DATA /media/shkaf  cifs  iocharset=utf8,uid=1000,gid=122,credentials=/etc/smb.shkaf.access,rw,_netdev   0   0

