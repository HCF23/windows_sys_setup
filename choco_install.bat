REM 
REM Install chocolatey the windows package manager
REM 
REM from there install required programs to make windows bearable
REM 
REM 

REM Install choco command
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM global '-y' for future choco installs
choco feature enable -n allowGlobalConfirmation

REM choco extension package
choco install chocolatey-core.extension

REM general programs for every system
choco install firefox notepadplusplus.install vlc thunderbird chromium lastpass adblockplus-firefox malwarebytes

REM chat
choco install slack telegram.install whatsapp signal

REM chat aggregator
choco install pidgin

REM system analysis tools
choco install cpu-z.install procmon ccleaner ccenhancer speccy gpu-z autoit obs-studio ditto wiztree treesizefree

REM network tools
choco install nmap nginx winpcap wireshark procexp chef-client irfanview psexec openssl windirstat rawcap angryip lessmsi jq

REM file related programs
choco install filezilla google-drive-file-stream plexmediaserver qbittorrent utorrent

REM read/publishing related programs
choco install gimp libreoffice-fresh calibre foxitreader audacity miktex pdfsam.install kodi texmaker sketchup 

REM tools
choco install pycharm-community kitty hugo cygwin cyg-get python pip pandoc microsoft-windows-terminal classic-shell greenshot 7zip.install openssh youtube-dl ffmpeg winrar malwarebytes putty.install sysinternals autoruns autohotkey.portable winlogbeat curl wget winscp.install openvpn grepwin selenium gnuwin32-coreutils.install jetbrainstoolbox wsl octave.portable 
rem kitty is an extended version of putty


REM development
choco install vscode atom make cppcheck plantuml git tortoisegit virtualbox vim cmakegolang mingw teraterm doxygen sourcetree


android-apk  minikube docker-desktop kubernertes-cli

REM CI
kvrt jenkins-x kubernernetes-helm

REM create exe
choco install innosetup 

REM GAMES
choco install steam ds4windows msiafterburner 0ad dolphin goggalaxy yed unity

REM disk management
choco install unetbootin imgburn rufus etcher partitionwizard yumi poweriso cdburnerxp

REM win10 only
REM choco install oldcalc

REM project management
choco install ganttproject freemind evernote