#!/bin/sh

if ! [ $# -eq 3 ]; then
    echo "Usage: $0 appname appimageurl appiconurl"
    echo "ie: $0 mlvapp https://github.com/ilia3101/MLV-App/releases/download/QTv1.13/MLV.App.v1.13.Linux.x86_64.AppImage file:///icon.png"
    exit 1
fi

appname=$1
appimageurl=$2
appiconurl=$3

appimagefolder="/opt/appimages"
appimagepath=${appimagefolder}/${appname}/${appname}.AppImage
appiconpath=${appimagefolder}/${appname}/${appname}.png
appshortcutpath=/usr/share/applications/${appname}.desktop


echo "appname = $appname"
echo "appimageurl = $appimageurl"


echo "creating folder.."
mkdir -p ${appimagefolder}/${appname}
echo "Downloading.."
curl -L -o ${appimagepath} ${appimageurl}
curl -L -o ${appiconpath} ${appiconurl}
chmod 755 ${appimagepath}

echo "Creating link.."
cat > ${appshortcutpath} << _EOF_
[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=${appname}
Comment=${appname}
Exec=${appimagepath}
Icon=${appiconpath}
Terminal=false
_EOF_

