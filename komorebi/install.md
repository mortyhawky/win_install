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
# Run this command to make sure that the directory has been created
mkdir -p ~/.config/komorebi

# Run this command to open up your PowerShell profile configuration in Notepad
notepad $PROFILE

# Add this line (with your login user!) to the bottom of your PowerShell profile configuration
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\LGUG2Z\.config\komorebi'

# Save the changes and then reload the PowerShell profile
. $PROFILE
```

** Install komorebi:  
```ps1
scoop bucket add extras
scoop install komorebi
komorebic --version
scoop install masir
```

```ps1
komorebic start --bar --masir
komorebic stop --bar --masir
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
