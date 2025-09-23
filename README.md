# kbootimg
A modern kitchen for editing Android's boot image. kbootimg are powered by magiskboot

## How to install?

1. Open your Terminal (Windows users use [MSYS2](https://www.msys2.org/)).
2. Copy and paste this line into your Terminal:
```Bash
curl -Ls "https://raw.githubusercontent.com/mast3rz3ro/kbootimg/refs/heads/main/install.sh" | bash -s
```
## How to use?

```Bash
usage: kbootimg [option] boot.img
parameters:
 -u, unpack bootimg
 -p, pack bootimg
 -c, clean tmp before unpack & after pack

examples:
 ./kbootimg -u boot.img
 ./kbootimg -p boot.img
```

# References:
* https://nixfaq.org/2020/06/android-verified-boot.html
* https://github.com/sailfishos-sony-nagara/main/wiki/Extracting-data-from-stock-ROM

