#### Komorebi Install

[Install](https://lgug2z.github.io/komorebi/)

Long Paths Support:  
```ps1
Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' `
    | Select-Object LongPathsEnabled

Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' `
    -Name 'LongPathsEnabled' -Value 1

Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' `
    | Select-Object LongPathsEnabled
```

```ps1
scoop bucket add extras
scoop install komorebi
```

```ps1
$Env:Path
$Env:Path -split ';'
$env:Path -split ';' | Select-String komorebi
$env:Path -split ';' | sls komorebi
$env:Path -split ';' | Where-Object { $_ -match 'komorebi' }
$env:Path -split ';' | findstr /i komorebi
```

If you have installed grep with:
```ps1
scoop install grep
```

```ps1
$env:Path -split ';' | grep -i --color=always komorebi
```

```ps1
komorebic --version
```

```ps1
komorebic quickstart

komorebic start --bar
```
