Param(
  [string]$ShortcutName = "Dhanu.lnk"
)
$StartupFolder = [Environment]::GetFolderPath("Startup")
$ShortcutPath = Join-Path $StartupFolder $ShortcutName
if (Test-Path $ShortcutPath) {
    Remove-Item $ShortcutPath -Force
    Write-Output "Removed startup shortcut: $ShortcutPath"
} else {
    Write-Output "No startup shortcut found at: $ShortcutPath"
}
