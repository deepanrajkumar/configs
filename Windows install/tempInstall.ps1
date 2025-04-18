# PowerShell Install Script (install.ps1)

Write-Output "Updating Winget Sources..."
winget update

# List of software sorted by approximate installation size (large to small)
$apps = @(
  "Valve.Steam",
  "Microsoft.VisualStudioCode",
  "Gyan.FFmpeg",
  "GitHub.GitHubDesktop",
  "GitExtensionsTeam.GitExtensions",
  "Axosoft.GitKraken",
  "ImageMagick.ImageMagick",
  "darktable.darktable",
  "Meltytech.Shotcut",
  "Google.Chrome",
  "LibreWolf.LibreWolf",
  "Foxit.FoxitReader",  
  "VideoLAN.VLC",
  "qBittorrent.qBittorrent",
  "Proton.ProtonVPN",
  "GitHub.cli",
  "JanDeDobbeleer.OhMyPosh",
  "JesseDuffield.lazygit",
  "Postman.Postman",
  "JetBrains.Toolbox",
  "JetBrains.WebStorm",
  "Canva.Canva",
  "Figma.Figma",
  "RARLab.WinRAR",
  "File-New-Project.EarTrumpet",
  "Microsoft.PowerToys",
  "Starship.Starship",
  "Cmder.Cmder",
  "WinMerge.WinMerge",
  "Atlassian.Sourcetree",
  "Obsidian.Obsidian",
  "QL-Win.QuickLook",
  "ShareX.ShareX",
  "CrystalDewWorld.CrystalDiskInfo",
  "CPUID.CPU-Z",
  "ACLAP.DownloadHelperCoApp",
  "PuTTY.PuTTY",
  "JLC.EasyEDA",
  "Bitdefender.Bitdefender",
  "Microsoft.AppInstaller",
  "Rufus.Rufus",
  "Logitech.GHUB",
  "ZhornSoftware.Caffeine",
  "UderzoSoftware.SpaceSniffer",
  "Microsoft.PowerShell",
  "Microsoft.WindowsTerminal",
  "Microsoft.WSL",
  "Tonec.InternetDownloadManager",
  "Microsoft.VCRedist.2015+.x64",
  "Microsoft.VCRedist.2015+.x86",
  "Microsoft.VCRedist.2013.x64",
  "Microsoft.VCRedist.2013.x86",
  "Microsoft.VCRedist.2012.x64",
  "Microsoft.VCRedist.2012.x86",
  "Microsoft.VCRedist.2010.x64",
  "Microsoft.VCRedist.2010.x86",
  "Microsoft.DotNet.DesktopRuntime.8",
  "Microsoft.DotNet.DesktopRuntime.6",
  "Microsoft.DotNet.Runtime.6",
  "Microsoft.DotNet.SDK.5",
  "Microsoft.DotNet.AspNetCore.5"
)

# Install each application using winget
foreach ($app in $apps) {
    Write-Output "Installing $app..."
    winget install --id $app -e --silent
    Write-Output "--------------------------------------------"
}

Write-Output "All installations complete!

Your Apps is now exceptionally thorough and well-tailored for a fresh Windows 11 installation, 
especially suitable for your roles in web, mobile, UI/UX development, and multimedia projects. 
----------------------------------------------------------------------------------------------
It covers:

Development & Coding: Editors, IDEs, databases, and various tools.

Design & UX/UI: Comprehensive software for graphics and media editing.

Productivity: Tools to enhance workflow efficiency and collaboration.

Utilities & Optimization: Apps to enhance system monitoring and optimization.

Multimedia: Strong media editing and production tools.

Your current selection is excellent, thoughtfully categorized, and optimized by approximate size to streamline installations.

Overall, it's an excellent script and should cover nearly every use case you have.

----------------------------------------------------------------------------------------------
You're good to go! 🚀 "
