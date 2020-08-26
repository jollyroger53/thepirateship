# Replace 'USERNAME' with your username, 'REPO' with your repository and 'FILE' with your file of choice. 


powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/USERNAME/REPO/master/FILE.ps1')"


# Run this line in Powershell, or a Command Prompt window, to run your Github script remotely.

# This version is for public repos, a different method is required for private repos.
