## WORK IN PROGRESS ##


### This script is intended to be run on fresh installs of Windows 10 to apply specific settings, registry tweaks, power settings, install programs, etc. This script can also be used as a template and tailored for your own liking. 
### This script has been tailored to my personal preferences, if you want to tweak it feel free to fork or download the script and modify it yourself. For example, I've chosen 'Brave' as my browser of choice, but if you'd prefer Firefox for example, replace the "$browser" variable with the download URL for Firefox.

### Templates ###

# If you're happy with this script as it is, you can run it with a single line using the following line in an elevated command prompt: powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/jollyroger53/thepirateship/master/WindowsGamingSetup.ps1')"

# This is an example of a program install line: 
#   $browser = *www.url-of-browser.com/install.exe* 
#   $directory = C:\directory\of\your\choice
#   $browserinstaller = NameOfBrowserInstaller.exe
#   Invoke-WebRequest "$browser" -Outfile $directory\$browserinstaller
#   Start-Process -FilePath $directory\$browserinstaller


### Variables ###

# Programs

$directory = 
$browser = https://github.com/brave/brave-browser/releases/download/v0.59.33/BraveBrowserSilentSetup.exe
$browserinstaller = BraveBrowserSilentSetup.exe
$notepad++ = https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.Installer.x64.exe
$notepadinstaller = npp.7.8.9.Installer.x64.exe
$steam = https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
$msiafterburner = http://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip
$gyazo = https://files.gyazo.com/setup/Gyazo-4.1.3.exe
$spotify = https://download.scdn.co/SpotifySetup.exe
$mediaplayer = https://github.com/clsid2/mpc-hc/releases/download/1.9.7/MPC-HC.1.9.7.x64.exe
$7zip = https://www.7-zip.org/a/7z1900-x64.exe

# Power setting template (included in my custom .iso)

$powerconfig = 