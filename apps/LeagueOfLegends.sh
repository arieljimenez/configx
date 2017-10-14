#/bin/bash
################## DISCLAIMER ##################
# # # # #   W O R K S  I N  M Y  P C   # # # # #
## Elementary OS 0.4.1 Loky (sep 2017)
## Intel i3 7100 8GB RAM
## GTX 1060 3 GB (Mini)
## nVidia 375 drivers
################################################

sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt install software-properties-common
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update && sudo apt upgrade -y
sudo apt-get install --install-recommends winehq-staging

mkdir ~/LoL32
cd ~/LoL32
wget https://riotgamespatcher-a.akamaihd.net/ShellInstaller/LA1/LeagueofLegends_LA1_Installer_2016_05_26.exe
mv LeagueofLegends_LA1_Installer_2016_05_26.exe Lol.exe
WINEPREFIX=~/LoL32 WINEARCH=win32 wine winecfg
WINEPREFIX=~/LoL32 ./winetricks d3dx9
WINEPREFIX=~/LoL32 wine winecfg

#With winecfg open, it’s now time to change a few settings. First, change the Windows version to XP. Then, Click on the graphics tab and check off "Automatically capture mouse in full screen windows." Next, you need to set League to run on a virtual desktop. Check off "emulate a virtual desktop" and then set the resolution to your monitors native resolution. For example, the native resolution of a 1080p monitor is 1920x1080. It is important to do this because certain glitches may occur otherwise. It is absolutely critical you do this if you have multiple monitors, as League may open on the wrong monitor and will not lock the mouse otherwise. Moving on, click the staging tab and enable CSMT. This will give a performance boost in most cases, but may cause the game to crash on some systems. If you cannot load into a game, disable this setting. Finally, click on the libraries tab and use the “New override for libraries” text box to add the override msvcp140. With these settings changed, you may now click the apply button in winecfg and then click ok. Next time you open wine on the prefix LoL32 the screen will be completely blue, this means the virtual desktop was enabled properly.
#Once again, if you had any strange errors in this section of the guide, I recommend you ask them on /r/linuxquestions. Otherwise, continue to chapter 3. Any questions from future chapters should be asked in this thread first, as I may be able to help.

cd ~
mkdir LoL_Installer
WINEPREFIX=~/LoL32 wine ~/LoL32/Lol.exe /extract:Z:/home/ariel/LoL_Installer
WINEPREFIX=~/LoL32 wine ~/LoL_Installer/vcredist_x86.exe
cd ~/LoL_Installer
# Execute the installer
WINEPREFIX=~/LoL32 wine msiexec /i LoL.LA1.msi
#After install, check  "Open the game after install"
# if not, run de Launcher
WINEPREFIX=~/LoL32 wine "C:/Riot Games/League of Legends/lol.launcher.exe"

# or run the game
WINEPREFIX=~/LoL32 wine "C:/Riot Games/League of Legends/LeagueClient.exe"

# either run the launcher or client will consume your tty, but wineserver will use to "throw" debug logs and stuff here.
# So, to kill the client
WINEPREFIX=~/LoL32 wineserver -k

#PD: after the game installs, we can delete ~/LoL_Installer dir.
#PD2: Make an alias for run and kill lol
