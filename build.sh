#!/bin/bash
cd /Users/kai/Documents/Client\ Documents/Popcorn/nivea\ touchscreen
rm unencrypted.zip
rm kiosk.zip
zip unencrypted.zip *
openssl enc -des3 -salt -pass pass:gAS3xfcb67 -in unencrypted.zip -out kiosk.zip
cp kiosk.zip /Volumes/NO\ NAME/
diskutil eject /Volumes/NO\ NAME/
echo "Done."
