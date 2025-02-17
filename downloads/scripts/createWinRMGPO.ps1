### createWinRMGPO.ps1
# Purpose: Create a GPO to enable WinRM for PKI automation on Domain Controllers.

$GPOName = "Delete After AD and PKI Install"
$DomainDN = (Get-ADDomain).DistinguishedName
$OU_DomainControllers = "OU=Domain Controllers,$DomainDN"

Import-Module ActiveDirectory
Import-Module GroupPolicy

try {
    $ExistingGPO = Get-GPO -Name $GPOName -ErrorAction SilentlyContinue
    if (-not $ExistingGPO) {
        New-GPO -Name $GPOName | Out-Null
        Write-Output "Created new GPO: '$GPOName'"
    } else {
        Write-Output "GPO '$GPOName' already exists."
    }

    New-GPLink -Name $GPOName -Target $OU_DomainControllers -Enforced No
    Write-Output "GPO linked to Domain Controllers OU."

    $RegPath = "HKLM\Software\Policies\Microsoft\Windows\WinRM\Service"
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "AllowAutoConfig" -Type DWord -Value 1
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "IPv4Filter" -Type String -Value "*"
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "IPv6Filter" -Type String -Value "*"
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "AllowUnencryptedTraffic" -Type DWord -Value 1
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "AllowBasic" -Type DWord -Value 1
    Set-GPRegistryValue -Name $GPOName -Key $RegPath -ValueName "AllowCredSSP" -Type DWord -Value 1

    Write-Output "STATUS:SUCCESS"
} catch {
    Write-Output "STATUS:FAILED - $($_.Exception.Message)"
    exit 1
}