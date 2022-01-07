#!/bin/sh

if ! [ $# -eq 1 ]; then
    echo "Usage: $0 appname "
    echo "ie: $0 mlvapp"
    exit 1
fi

appname=$1
appimageurl=$2
appiconurl=$3

appimagefolder="/opt/appimages"
appimagepath=${appimagefolder}/${appname}/${appname}.AppImage
appiconpath=${appimagefolder}/${appname}/${appname}.png
appshortcutpath=/usr/share/applications/${appname}.desktop


echo "Deleting appname = $appname ..."

rm $appimagepath $appiconpath $appshortcutpath
rmdir ${appimagefolder}/${appname}