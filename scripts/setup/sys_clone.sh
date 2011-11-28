sudo smartctl -a /dev/sda
sudo dd if=/dev/sda of=/dev/sdf bs=16M
# pgrep -l '^dd$'
# sudo watch -n 300 kill -USR1 <dd_pid>
sudo blockdev --rereadpt /dev/sdf
# sudo blkid -l -t TYPE=ext4 /dev/sdf1
