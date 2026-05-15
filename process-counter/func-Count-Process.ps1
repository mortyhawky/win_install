#Get-ChildItem | Measure-Object | Select-Object Count
#Get-Process   | Measure-Object | Select-Object Count
#$ProcessCount = Get-Process | Measure-Object | Select-Object Count
$ProcessCount = (Get-Process).Count
#$ProcessCount 

do {
    Write-Host "`$ProcessCount=$ProcessCount" -ForegroundColor Magenta
    Sleep 2
} while( (Get-Process).Count -gt 120 )

#function Count-Process {
#    (Get-Process).Count
#    
#    while ( (Get-Process).Count -gt 120 ) {
#        $ProcessCount = (Get-Process).Count
#        Write-Host "`$ProcessCount=$ProcessCount" -ForegroundColor Magenta
#        Start-Sleep -Seconds 3
#    }
#}
