# First, donwload the mozilla firefox developer edition
# un tar it $ tar -xf firefoxlalalaedition
# after finish of untar it, delete it.
$ sudo mv firefox /opt/

# if give a acces problem:
#$ sudo chown -R $USER /opt/firefox

# open your zsh || bashrc and add:
$ export PATH=/opt/firefox:$PATH

# create an icon
$ sudo nano /usr/share/applications/FirefoxDeveloperEdition.desktop

# paste this inside:
 [Desktop Entry]
 Version=1.0
 Name=Firefox Developer Edition
 GenericName=Web Browser
 Exec=/opt/firefox/firefox
 Terminal=false
 Icon=/opt/firefox/browser/icons/mozicon128.png
 Type=Application
 Categories=Network;WebBrowser;Favorites;
 MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
 X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognito

# cp the icon to your Desktop or in YOU($USER) domain, liek destop
 $ cp -rp /usr/share/applications/FirefoxDeveloperEdition.desktop /home/$USER/Desktop

# and add the +x right
$ chmod +x FirefoxDeveloperEdition.desktop

# last, grab the icon and putit in a quicklach or favorete acces.
