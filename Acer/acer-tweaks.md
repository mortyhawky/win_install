#### Acer Tweaks

Run in an elevated shell:  
```ps1
sudo powershell
sudo pwsh
```

```ps1
Get-AppxPackage *AcerSense* | Remove-AppxPackage -AllUsers
Get-AppxPackage *PurifiedVoice* | Remove-AppxPackage -AllUsers
```

```ps1
Get-Service  -DisplayName *Acer* | Select-Object Name, DisplayName, Status, StartType
Stop-Service -DisplayName "Acer*"
Set-Service  -DisplayName "Acer*" -StartupType Disabled
Get-Service  -DisplayName *Acer* | Select-Object Name, DisplayName, Status, StartType
```

```preformated
  Repeat for:
  
  AcerDIAgentSvis
  AcerQAAgentSvis
  AcerEZSvc
  
  I would keep temporarily:
  
  AcerDeviceEnablingService
  
  until verifying:
  Fn keys
  brightness keys
  touchpad toggles
  battery modes
  
  still work.
```

```ps1
Get-AppxPackage *Acer*
Get-Service -DisplayName *Acer*
Get-ScheduledTask | Where-Object TaskName -like "*Acer*"
Get-WmiObject Win32_Product | Where-Object Name -like "*Acer*"
Get-Package | Where-Object Name -like "*Acer*"
```

```ps1
pnputil /enum-drivers | findstr /i acer

Get-AppxProvisionedPackage -Online | findstr /i acer

 #You can remove provisioned packages too:

Get-AppxProvisionedPackage -Online |
Where-Object DisplayName -like "*AcerSense*" |
Remove-AppxProvisionedPackage -Online

 #and:

Get-AppxProvisionedPackage -Online |
Where-Object DisplayName -like "*PurifiedVoice*" |
Remove-AppxProvisionedPackage -Online
```

  # A good verification sequence is:  
```ps1
Get-AppxPackage *acer*
Get-AppxProvisionedPackage -Online | findstr /i acer
Get-StartApps | findstr /i acer

```

