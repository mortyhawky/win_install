clear

if ( !(Test-Path -Path $PROFILE) ) {
   Write-Host "$PROFILE `nDoesn't exist."
   Write-Host "Creating... PROFILE"
   New-Item -ItemType File -Path $PROFILE -Force
}
else {
	Write-Host "$PROFILE `nAllready EXISTS!"
}

$pwsh       = "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
$powershell = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

#Write-Host "`$pwsh=$pwsh"
#bat.exe --pager=builtin $pwsh

if ( Test-Path -Path $pwsh ) {
   Write-Host "pwsh 7 profile exists!"
   New-Item -ItemType    SymbolicLink     `
            -Path        $powershell      `
            -Target      $pwsh            `
            -ErrorAction SilentlyContinue
}
