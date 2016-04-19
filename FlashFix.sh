#!/bin/sh

# A stupid shell script to correct the local .swf loading bug.
# Use at your own risk.


echo "Fixing mime-types..."
sudo sed -i 's/<mime-type type="application\/vnd.adobe.flash.movie">/<mime-type type="application\/x-shockwave-flash">/' /usr/share/mime/packages/freedesktop.org.xml
echo "Done."
echo "Updating..."
sudo update-mime-database /usr/share/mime
echo "Done.  Please restart your browser."
