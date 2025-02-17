### deleteWinRMGPO.ps1
# Purpose: Remove the WinRM GPO and its links for PKI automation.

$GPOName = "Delete After AD and PKI Install"
$DomainDN = (Get-ADDomain).DistinguishedName
$OU_DomainControllers = "OU=Domain Controllers,$DomainDN"

Import-Module ActiveDirectory
Import-Module GroupPolicy

try {
    $ExistingGPO = Get-GPO -Name $GPOName -ErrorAction SilentlyContinue
    if ($ExistingGPO) {
        try {
            Remove-GPLink -Name $GPOName -Target $OU_DomainControllers
            Write-Output "GPO link removed from Domain Controllers OU."
        } catch {
            Write-Output "Error removing GPO link: $($_.Exception.Message)"
        }

        try {
            Remove-GPO -Name $GPOName -Confirm:$false
            Write-Output "GPO '$GPOName' successfully deleted."
        } catch {
            Write-Output "Error deleting GPO: $($_.Exception.Message)"
            Write-Output "STATUS:FAILED"
            exit 1
        }
    } else {
        Write-Output "GPO '$GPOName' does not exist. No action needed."
    }
    Write-Output "STATUS:SUCCESS"
} catch {
    Write-Output "STATUS:FAILED - $($_.Exception.Message)"
    exit 1
}