:: Winget Install Script (install.bat)
@echo off

:: Update Winget sources
winget update

:: List of software to install
set apps=(
  CoreyButler.NVMforWindows
  NexusMods.Vortex
  Bitdefender.Bitdefender
  CPUID.CPU-Z
  Docker.DockerDesktop
  Microsoft.Git
  KDE.Krita
  Mozilla.Firefox
  Notepad++.Notepad++
  Proton.ProtonVPN
  VideoLAN.VLC
  RARLab.WinRAR
  JLC.EasyEDA
  Microsoft.VCRedist.2010.x64
  GitHub.cli
  Google.Chrome
  Logitech.GHUB
  GitExtensionsTeam.GitExtensions
  Adobe.Acrobat.Reader.64-bit
  Nvidia.PhysX
  JanDeDobbeleer.OhMyPosh
  Microsoft.PowerShell
  TheDocumentFoundation.LibreOffice
  PuTTY.PuTTY
  AnalogDevices.LTspice
  ACLAP.DownloadHelperCoApp
  Tonec.InternetDownloadManager
  LibreWolf.LibreWolf
  Microsoft.Edge
  OBSProject.OBSStudio
  Valve.Steam
  Ubisoft.Connect
  qBittorrent.qBittorrent
  AOMEI.PartitionAssistant
  Microsoft.VCRedist.2013.x64
  Microsoft.DotNet.DesktopRuntime.6
  Foxit.FoxitReader
  Microsoft.VCRedist.2012.x86
  Microsoft.DotNet.SDK.5
  ElectronicArts.EADesktop
  Microsoft.DotNet.Runtime.6
  Microsoft.VCRedist.2013.x86
  AOMEI.Backupper.Standard
  EpicGames.EpicGamesLauncher
  Famatech.AdvancedIPScanner
  Microsoft.VCRedist.2010.x86
  Microsoft.VCRedist.2015+.x64
  Microsoft.VCRedist.2015+.x86
  Microsoft.VCRedist.2012.x64
  Microsoft.DotNet.AspNetCore.5
  Microsoft.DotNet.DesktopRuntime.8
  GitHub.GitHubDesktop
  JesseDuffield.lazygit
  Postman.Postman
  Schniz.fnm
  JetBrains.Toolbox
  UderzoSoftware.SpaceSniffer
  ZhornSoftware.Caffeine
  Axosoft.GitKraken
  Microsoft.VisualStudioCode
  Microsoft.AppInstaller
  Microsoft.WindowsTerminal
  Microsoft.WSL
)

:: Install each application using winget
for %%a in %apps% do (
    echo Installing %%a...
    winget install --id %%a -e --silent
    echo --------------------------------------------
)

echo All installations complete!
pause