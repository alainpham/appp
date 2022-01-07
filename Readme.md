# AppImage installations scripts

This repo is to centralise install scripts of different AppImages. Aims at standardising app image as there is no marketplace or central repo for it.

## Install initial package manager script

```
sudo curl -L -o /usr/local/bin/install-appimage https://github.com/alainpham/aaap/raw/master/install-appimage.sh
sudo chmod 755 /usr/local/bin/install-appimage

sudo curl -L -o /usr/local/bin/uninstall-appimage https://github.com/alainpham/aaap/raw/master/uninstall-appimage.sh
sudo chmod 755 /usr/local/bin/uninstall-appimage

sudo curl -L -o /usr/local/bin/list-appimage https://github.com/alainpham/aaap/raw/master/list-appimage.sh
sudo chmod 755 /usr/local/bin/list-appimage
```

## MLVapp

```
sudo sh -c "$(curl -L  https://github.com/alainpham/aaap/raw/master/mlvapp/install.sh )"
```

## Ratherapee

```
sudo sh -c "$(curl -L  https://github.com/alainpham/aaap/raw/master/rawtherapee/install.sh )"
```

## BeeRef

```
sudo sh -c "$(curl -L  https://github.com/alainpham/aaap/raw/master/beeref/install.sh )"
```

## Viber

```
sudo sh -c "$(curl -L  https://github.com/alainpham/aaap/raw/master/viber/install.sh )"
```

## Plex Media Player

```
sudo sh -c "$(curl -L  https://github.com/alainpham/aaap/raw/master/plex-media-player/install.sh )"
```