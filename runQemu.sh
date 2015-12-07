#!/bin/bash
qemu-system-arm -kernel ./kernel-qemu-3.10.25-wheezy -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1" -hda ./cistyRaspianAutostart_skolska.iso -redir :2222::22

