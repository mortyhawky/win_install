clear
Write-Host "Get-Process | Measure-Object | Format-List" -NoNewline
Get-Process | Measure-Object | Format-List

Write-Host "(Get-Process).Count"
(Get-Process).Count
Write-Host
