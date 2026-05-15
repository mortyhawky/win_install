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

** Add this to your ...profile.ps1:  
```ps1
$env:KOMOREBI_CONFIG_HOME="$HOME\.config\komorebi"
Write-HOST "`$env:KOMOREBI_CONFIG_HOME = $env:KOMOREBI_CONFIG_HOME"

```

** Install komorebi:  
```ps1
scoop bucket add extras
scoop install komorebi
scoop install masir
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
#Download demo <settings>.json
komorebic quickstart
#Focus follow mouse:
winget install LGUG2Z.masir

komorebic start --bar --masir
```
