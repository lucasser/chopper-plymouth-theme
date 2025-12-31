To install add the text logo to chopper folder, and call

  sudo make install LOGO=logoname

without the .png

on deb-based
then run install.sh

on EndeavourOS

```
/etc/dracut.conf.d/myflags.conf
force_drivers+=" amdgpu "
add_dracutmodules+=" plymouth "
```

add `quiet splash` to /etc/kernel/cmdline

```bash
$ sudo plymouth-set-default-theme chopper
$ sudo reinstall-kernels
```

Wait for animation to finish:

```bash
$ sudo systemctl enable plymouth-wait-for-animation.service
```

On Arch

`AHHHHHHH`
