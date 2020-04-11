#!/bin/bash -eux
sudo mv temp authorized_keys
sudo mkdir /home/testuser/.ssh 
sudo mv authorized_keys /home/testuser/.ssh/
sudo chmod 700 /home/testuser/.ssh
sudo chmod 600 /home/testuser/.ssh/authorized_keys
sudo chown testuser /home/testuser/.ssh
sudo chown testuser /home/testuser/.ssh/authorized_keys
# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY


# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync