# Raspberry Pi GPIO in Ada

Access the general purpose input/output ports of your raspberry pi
in Ada.

## Install BCM2835

This is a binding to the
[BCM2835 C library](https://www.airspayce.com/mikem/bcm2835/).
Install that as follows:

```
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.68.tar.gz
tar zxvf bcm2835-1.68.tar.gz
cd bcm2835-1.68/
./configure
make
sudo make check
sudo make install
```

## Autogenerate C bindings

To autogenerate C bindings in the same way as this library, you can
[follow these instructions](https://gcc.gnu.org/onlinedocs/gcc-10.1.0/gnat_ugn/Running-the-Binding-Generator.html#Running-the-Binding-Generator).

If you found a C program which you want to re-implement in Ada, first
find the header locations with:

```
gcc -H -fsyntax-only test.c
```

And then feed those in to the g++ binding generator program like this:

```
g++ -c -fdump-ada-spec -C /usr/local/include/bcm2835.h
```

