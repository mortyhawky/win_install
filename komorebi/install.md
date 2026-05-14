#### Komorebi Install

[Install](https://lgug2z.github.io/komorebi/)

Long Path Support:  
```ps1
Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem'
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem'
```
