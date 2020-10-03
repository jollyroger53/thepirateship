## WORK IN PROGRESS ##

## How to use ##
# run the following line in an elevated command prompt:
# powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/jollyroger53/thepirateship/master/WindowsGamingSetup.ps1')"

### Templates ###

# This is an example of a program install line: 
#   $browser = *www.url-of-browser.com/install.exe* 
#   $directory = C:\directory\of\your\choice
#   $browserinstaller = NameOfBrowserInstaller.exe
#   Invoke-WebRequest "$browser" -Outfile $directory\$browserinstaller
#   $directory\$browserinstaller -variable 1 -variable 2

### Variables ###

# Programs

$directory = C:\Installers

$browser = "Brave"
$browserdl = "https://github.com/brave/brave-browser/releases/download/v0.59.33/BraveBrowserSilentSetup.exe"
    $browserinstaller = "BraveBrowserSilentSetup.exe"

$texteditor = "Notepad++"
$notepadpp = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.Installer.x64.exe"
    $notepadinstaller = "npp.7.8.9.Installer.x64.exe"

$gamingplatform = "Steam"
$steam = "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
    $steaminstaller = "SteamSetup.exe"
   
$msiafterburner = "http://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip"
    $msiinstaller = ""

$screenshotsoftware = "Gyazo"    
$gyazo = "https://files.gyazo.com/setup/Gyazo-4.1.3.exe"
    $gyazoinstaller = "Gyazo-4.1.3.exe"


$music = "Spotify"
$spotify = "https://download.scdn.co/SpotifySetup.exe"
    $spotifyinstaller = "SpotifySetup.exe"

$mplayer = "Media Player Classic"
$mediaplayer = "https://github.com/clsid2/mpc-hc/releases/download/1.9.7/MPC-HC.1.9.7.x64.exe"
    $mediaplayerinstaller = "MPC-HC.1.9.7.x64.exe"

$archiver = "7Zip"
$7zip = "https://www.7-zip.org/a/7z1900-x64.exe"
    $7zipinstaller = "7z1900-x64.exe"

$audioeditor = "Audacity"    
$audacity = "https://www.fosshub.com/Audacity.html?dwl=audacity-win-2.4.2.exe"
    $audacityinstaller = "audacity-win-2.4.2.exe"

$codeeditor = "Visual Studio Code"    
$vscode = "https://code.visualstudio.com/Download#"
    $vscodeinstaller = ""

# Other


# Pre-run checker to check that the user is using the correct iso file. 

if(Test-Path C:\Setup\maxpower.pow) {
    Write-Host 'The script is now starting'
}else {
    Write-Host 'Incorrect .iso file used, script is now exiting.'
exit
}

# Applies the power config change

Write-Host "Now installing the 'max power' config file."

# I'll add this bit later as I can't be arsed right now.


# 
if(Test-Path $directory) {

}else {
    New-Item -Path $directory -Type Directory
}

Write-Host "Installer folder created."

# Browser installation

Write-Host "Do you want to download and install $browser ? Y/N"
$option = Read-Host
if($option -eq 'Y') {
    Write-Host "Downloading $browser installer..."
    Invoke-WebRequest "$browserdl" -Outfile $directory\$browserinstaller
    Write-Host "Installing $browser silently."
    $directory\$browserinstaller
}else {
    Write-Host "Skipping $browser download."
}

# Text editor installation

Write-Host "Do you want to download and install $texteditor ? Y/N"
$option = Read-Host
if($option -eq 'Y') {
    Write-Host "Downloading $texteditor installer..."
    Invoke-WebRequest "$notepadpp" -Outfile $directory\$notepadinstaller
    Write-Host "Installing $texteditor silently."
    $directory\$notepadinstaller /S
}else {
    Write-Host "Skipping $texteditor download."
}

