Param(
  [string]$AppExePath = "$PSScriptRoot\Dhanu.exe",
  [string]$ShortcutName = "Dhanu.lnk"
)
$WshShell = New-Object -ComObject WScript.Shell
$StartupFolder = [Environment]::GetFolderPath("Startup")
$ShortcutPath = Join-Path $StartupFolder $ShortcutName
$Shortcut = $WshShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $AppExePath
$Shortcut.WorkingDirectory = Split-Path $AppExePath
$Shortcut.WindowStyle = 1
$Shortcut.IconLocation = $AppExePath
$Shortcut.Save()
Write-Output "Startup shortcut created at: $ShortcutPath"
