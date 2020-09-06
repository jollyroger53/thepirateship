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
#   Start-Process -FilePath $directory\$browserinstaller

### Variables ###

# Programs

$directory = 
$browser = https://github.com/brave/brave-browser/releases/download/v0.59.33/BraveBrowserSilentSetup.exe
$browserinstaller = BraveBrowserSilentSetup.exe
$notepadpp = https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.Installer.x64.exe
$notepadinstaller = npp.7.8.9.Installer.x64.exe
$steam = https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
$msiafterburner = http://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip
$gyazo = https://files.gyazo.com/setup/Gyazo-4.1.3.exe
$spotify = https://download.scdn.co/SpotifySetup.exe
$mediaplayer = https://github.com/clsid2/mpc-hc/releases/download/1.9.7/MPC-HC.1.9.7.x64.exe
$7zip = https://www.7-zip.org/a/7z1900-x64.exe


# Other


# Pre-run checker to check that the user is using the correct iso file. 

if(Test-Path C:\Setup\maxpower.pow) {
    Write-Host 'The script is now starting'
}else {
    Write-Host 'Incorrect .iso file used, script is now exiting.'
exit
}