Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
function c {
    Set-Location -Path ..\
}
function v {
    param([string]$1)
    Set-Location -Path C:\vhosts\"$1"
}
function e {
    Set-Location -Path C:\vhosts\Entrata
}
function i {
    Set-Location -Path C:\vhosts\ResidentInsure
}
function vu {
    Invoke-Expression "vagrant up 912b9c2"
}
function vh {
    Invoke-Expression "vagrant halt 912b9c2"
}
function g {
    param([string]$1, [string]$2)
    Invoke-Expression "git $1 $2"
}