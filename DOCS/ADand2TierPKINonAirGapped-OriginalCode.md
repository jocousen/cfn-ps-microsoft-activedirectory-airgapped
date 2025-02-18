Goal: Deploy Self Managed Active Directory om AWS EC2 in 2 availability zones with a nest two-tier PKI Active Directory integrated stack with an Off-line RootCA and a Suboordinate CA. Make this solutoin fully aig-gsapped so in requires no Internet access.  Assume all AWS VPC Enpoints required are present in the VPC where this solution will be deployed like s3 Gateway, SSM, Logs, Secrets Manager, EC2, etc.  All required files that would require Internet access like request for scripts from the aws-ia public s3 bucket, NUGET requests for install and Powershell DSC modules, etc. are sources from QSS3KeyPrefix/downloads and QSS3KeyPrefix/downloads/scripts.  The user experience needs to be 100 percent identical to the orignal code with the exception of the choice for 1 Tier EntCA stack in the ad-1 template.  We only care about two-tier PKI as an option.  The cloudformation forms and input parmaters need to be identical to the originals.  Zero loss of parameters, default options, etc.  The only difference shoud be air-gapped.  If a user ran the original, they should notice no difference in any experience, resources created, nested stacks, etc. other than 1 tier pki being removed.  All requests for Internet facing downloads should be sourced from QSS3KeyPrefix/downloads/modules and QSS3KeyPrefix/downloads/scripts.  This will be deployed into AWS Top Secrte Cloud with no access to any Internet, but the S3 Bucket, QSS3BucketName specified in the ad-1 cloudformation template other S3 buckets are available through S3 gateway endpoints.



Original Code:

Default CloudformationSettings from :

https://github.com/aws-solutions-library-samples/cfn-ps-microsoft-activedirectory/blob/main/templates/ad-1.template.yaml

QSS3BucketName: aws-ia

QSS3BucketRegion: us-east-1

QSS3KeyPrefix: cfn-ps-microsoft-activedirectory





Forked Github With The Original Code:
----------------------
https://github.com/jocousen/cfn-ps-microsoft-activedirectory-airgapped

ad-1.template.yaml calls and passes input parameters to nested two-tier.template to deploy two Active Directory domain controllers and Active Directory Integrated Windows Root Certificate Authority and Subordinate CA.  Requires Internet Access for all required downloaded Powershell Scripts and DSC Modules and access to public aws-ia s3 buckets

https://github.com/jocousen/cfn-ps-microsoft-activedirectory-airgapped/blob/main/templates/ad-1.template.yaml
Description: >-
  This template creates 2 Windows Active Directory Domain Controllers into private subnets in separate Availability Zones inside a VPC. The
  default Domain Administrator password will be the one retrieved from the instance.  For adding members to the domain, ensure that they are launched
  using the domain member security group created by this template and then configure them to use the AD instances fixed private IP addresses as the DNS
  server. **WARNING** This template creates Amazon EC2 Windows instance and related resources. You will be billed for the AWS resources used if you
  create a stack from this template. (qs-1qup6rae5)
Metadata:
  cfn-lint: { config: { ignore_checks: [W9004, W9006, W8001] } }
  QuickStartDocumentation:
    EntrypointName: Parameters for deploying self-managed AD into an existing VPC



https://github.com/jocousen/cfn-ps-microsoft-pki/blob/c0aff069ee06d8831e31cd860808373a7b3e47fc/templates/two-tier.template (https://github.com/jocousen/cfn-ps-microsoft-pki/blob/main/templates/two-tier.template)
Description: >-
  This template creates 2 Windows Server Active Directory Certificate Services
  CAs 1 Offline Root CA and 1 Enterprise Subordinate CA in a subnet inside a VPC. 
  **WARNING** This template creates Amazon EC2 Windows instances and related resources. 
  You will be billed for the AWS resources used if you create a stack from this template. (qs-1rtep036f)
Metadata:
  cfn-lint:
    config:
      ignore_checks:
        - W9006
                - E9101    





 Downloads Folder Existing Files:

| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierSubCaPreConfig.ps1  |
| ------------------------------------------------------------ | --------------------------------- |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-MgmtInstancePostConfig.ps1 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | LCM-Config.ps1                    |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Dns-Config.ps1                    |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Install-ADDSForest.ps1            |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierSubCaInstall.ps1    |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Install-ADDSDC.ps1                |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierSubCaConfig.ps1     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-MgmtInstanceConfig.ps1     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ConfigDC2.ps1                     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | AddDNSForward.ps1                 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierOrCaConfig.ps1      |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ConfigDC1.ps1                     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Update-DNSServers.ps1             |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | createWinRMGPO.ps1                |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Post-Config.ps1                   |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Create-AdminUser.ps1              |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | deleteWinRMGPO.ps1                |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierOrCaPreConfig.ps1   |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | AD2-NonPromoConfig.ps1            |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ExtendDC1.ps1                     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ConfigDC1-SSM.ps1                 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Invoke-TwoTierSubCaCertIssue.ps1  |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Set-LCMConfig.ps1                 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ExtendDC2.ps1                     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Add-DNSEntry.ps1                  |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Disable-WindowsFirewall.ps1       |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ConvertTo-EnterpriseAdmin.ps1     |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Rename-Computer.ps1               |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | install-ad-modules.ps1            |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Initialize-Instance.ps1           |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Configure-Sites.ps1               |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | Install-Prereqs.ps1               |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | AD2-Post-Config.ps1               |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | New-LabADUser.ps1                 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/scripts | ConfigDC2-SSM.ps1                 |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | certificatedsc.5.1.0.nupkg        |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | computermanagementdsc.8.5.0.nupkg |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | auditpolicydsc.1.4.0.nupkg        |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | networkingdsc.8.2.0.nupkg         |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | securitypolicydsc.2.10.0.nupkg    |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | dnsserverdsc.3.0.0.nupkg          |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | activedirectorydsc.6.0.1.nupkg    |
| cfn-ps-microsoft-activedirectory-airgapped/downloads/modules | filechecksums.sha256              |
