#scoop help
clear
Write-Host "	--> Running: scoop update"
scoop update
Write-Host "	--> Running: scoop update --all"
scoop update --all
#scoop cache *
Write-Host "	--> Running: scoop cache rm *"
scoop cache rm *
scoop cache *
Write-Host "	--> Running: scoop checkup"
scoop checkup
Write-Host "	--> Running: scoop cleanup --all --cache"
scoop cleanup --all --cache
Write-Host "	--> Running: scoop status"
scoop status
