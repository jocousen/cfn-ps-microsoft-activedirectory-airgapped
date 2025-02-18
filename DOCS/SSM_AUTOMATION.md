

----------------------------------------------------------------------------------------------------------------------------------------------------------

When ad-1.template.yaml template is run, it creates resources in AWS including an SSM Automation document to automate running powershell scripts to configure Active Directory and possible PKI if selected.  

Key Stack Variables:

| QSS3BucketName   | quicksilver-aws-ia                | -    |
| ---------------- | --------------------------------- | ---- |
| QSS3BucketRegion | us-east-1                         | -    |
| QSS3KeyPrefix    | cfn-ps-microsoft-activedirectory/ |      |



This is a sample of the CloudFormation Parameters, Outputs, Resource and Events (Updated)

Stack Name:

[ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver](https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/stackinfo?filteringText=&filteringStatus=active&viewNested=true&stackId=arn%3Aaws%3Acloudformation%3Aus-east-1%3A396913736034%3Astack%2FActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver%2Fd8bcaba0-e97a-11ef-88c3-0e06734e2e5d)

## Parameters

| Key                                | Value                                                        | Resolved value        |
| ---------------------------------- | ------------------------------------------------------------ | --------------------- |
| ADServer1InstanceType              | m5.large                                                     | -                     |
| ADServer1NetBIOSName               | QUICKSILVERDC1                                               | -                     |
| ADServer1PrivateIP                 | 10.2.0.10                                                    | -                     |
| ADServer2InstanceType              | m5.large                                                     | -                     |
| ADServer2NetBIOSName               | QUICKSILVERDC2                                               | -                     |
| ADServer2PrivateIP                 | 10.2.1.10                                                    | -                     |
| AppInsightsApplicationName         | -                                                            | -                     |
| CaAmi                              | /aws/service/ami-windows-latest/Windows_Server-2022-English-Full-Base | -                     |
| CaDataDriveSizeGiB                 | 2                                                            | -                     |
| CaHashAlgorithm                    | SHA256                                                       | -                     |
| CaKeyLength                        | 2048                                                         | -                     |
| CaServerInstanceType               | t3.medium                                                    | -                     |
| CaValidityPeriodUnits              | 5                                                            | -                     |
| CreateDefaultOUs                   | No                                                           | -                     |
| DataDriveSizeGiB                   | 10                                                           | -                     |
| DeletedObjectLifetime              | 180                                                          | -                     |
| DHCPOptionSet                      | Yes                                                          | -                     |
| DomainAdminPassword                | ****                                                         | -                     |
| DomainAdminUser                    | Admin                                                        | -                     |
| DomainDNSName                      | quicksilver.aws.dev                                          | -                     |
| DomainNetBIOSName                  | QUICKSILVER                                                  | -                     |
| EbsEncryptionKmsKeyId              | alias/aws/ebs                                                | -                     |
| EnableAdvancedAudtingandMetrics    | false                                                        | -                     |
| EntCaServerNetBIOSName             | QUICKSILVERCA2                                               | -                     |
| KeyPairName                        | QuickSilver-KeyPair-RSA-PEM-US-EAST-1                        | -                     |
| OrCaServerNetBIOSName              | QUICKSILVERCA1                                               | -                     |
| OrCaValidityPeriodUnits            | 10                                                           | -                     |
| PKI                                | Two-Tier                                                     | -                     |
| PKIEnableAdvancedAudtingandMetrics | false                                                        | -                     |
| PrivateSubnet1ID                   | subnet-01441033b188decd8                                     | -                     |
| PrivateSubnet2ID                   | subnet-0942204cd738cb7aa                                     | -                     |
| QSS3BucketName                     | quicksilver-aws-ia                                           | -                     |
| QSS3BucketRegion                   | us-east-1                                                    | -                     |
| QSS3KeyPrefix                      | cfn-ps-microsoft-activedirectory/                            | -                     |
| S3CRLBucketName                    | examplebucket                                                | -                     |
| SetupAppInsightsMonitoring         | false                                                        | -                     |
| TombstoneLifetime                  | 180                                                          | -                     |
| UseS3ForCRL                        | No                                                           | -                     |
| VPCCIDR                            | 10.2.0.0/16                                                  | -                     |
| VPCID                              | vpc-0d068732d294a3286                                        | -                     |
| WINFULLBASE                        | /aws/service/ami-windows-latest/Windows_Server-2022-English-Full-Base | ami-0a0ebee827a585d06 |



## Outputs

| Key                   | Value                                                        | Description                          | Export name |
| --------------------- | ------------------------------------------------------------ | ------------------------------------ | ----------- |
| ADSecretsArn          | arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B | Alternate AD User Secrets ARN        | -           |
| DC1InstanceId         | i-07da7ede6f65300df                                          | DomainController 1 instance ID       | -           |
| DC2InstanceId         | i-06aafc571abe82f37                                          | DomainController 2 instance ID       | -           |
| DomainAdmin           | QUICKSILVER\Admin                                            | Domain administrator account         | -           |
| DomainControllersSGID | sg-056b025ab0489573a                                         | Domain Controllers Security Group ID | -           |
| DomainMemberSGID      | sg-07323ac4978963263                                         | Domain Member Security Group ID      | -           |



## Resources

| Logical ID                     | Physical ID                                                  | Type                                | Status          | Module |
| ------------------------------ | ------------------------------------------------------------ | ----------------------------------- | --------------- | ------ |
| ADAdminSecrets                 | [arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM ](https://us-east-1.console.aws.amazon.com/secretsmanager/home?region=us-east-1#!/secret?name=arn%3Aaws%3Asecretsmanager%3Aus-east-1%3A396913736034%3Asecret%3AADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM) | AWS::SecretsManager::Secret         | CREATE_COMPLETE | -      |
| ADAltUserSecrets               | [arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B ](https://us-east-1.console.aws.amazon.com/secretsmanager/home?region=us-east-1#!/secret?name=arn%3Aaws%3Asecretsmanager%3Aus-east-1%3A396913736034%3Asecret%3AADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B) | AWS::SecretsManager::Secret         | CREATE_COMPLETE | -      |
| ADServerProfile                | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-ADServerProfile-KkkBEHsGt189 | AWS::IAM::InstanceProfile           | CREATE_COMPLETE | -      |
| ADServerRole                   | [ActiveDirectory-SharedServices-10-2-0--ADServerRole-DR6gnZgCmoaX ](https://us-east-1.console.aws.amazon.com/iam/home?#/roles/ActiveDirectory-SharedServices-10-2-0--ADServerRole-DR6gnZgCmoaX) | AWS::IAM::Role                      | CREATE_COMPLETE | -      |
| AWSQuickstartActiveDirectoryDS | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-AWSQuickstartActiveDirectoryDS-HjwXn8I2xZuJ | AWS::SSM::Document                  | CREATE_COMPLETE | -      |
| DCSecurityGroupIngress         | sgr-06b313c1f5bf78bf9                                        | AWS::EC2::SecurityGroupIngress      | CREATE_COMPLETE | -      |
| DHCPOptions                    | [dopt-0067292adce284cc7 ](https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#dhcpOptions:search=dopt-0067292adce284cc7) | AWS::EC2::DHCPOptions               | CREATE_COMPLETE | -      |
| DomainController1              | [i-07da7ede6f65300df ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Instances:search=i-07da7ede6f65300df) | AWS::EC2::Instance                  | CREATE_COMPLETE | -      |
| DomainController2              | [i-06aafc571abe82f37 ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Instances:search=i-06aafc571abe82f37) | AWS::EC2::Instance                  | CREATE_COMPLETE | -      |
| DomainControllersSG            | [sg-056b025ab0489573a ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#SecurityGroups:search=sg-056b025ab0489573a) | AWS::EC2::SecurityGroup             | CREATE_COMPLETE | -      |
| DomainMembersIngressRDP        | sgr-0cd18cc0578899fa3                                        | AWS::EC2::SecurityGroupIngress      | CREATE_COMPLETE | -      |
| DomainMembersIngressWinRMHTTP  | sgr-0e3e03a9a0bd78d77                                        | AWS::EC2::SecurityGroupIngress      | CREATE_COMPLETE | -      |
| DomainMembersIngressWinRMHTTPS | sgr-0a061730225ae4d2a                                        | AWS::EC2::SecurityGroupIngress      | CREATE_COMPLETE | -      |
| DomainMembersSG                | [sg-07323ac4978963263 ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#SecurityGroups:search=sg-07323ac4978963263) | AWS::EC2::SecurityGroup             | CREATE_COMPLETE | -      |
| RestoreModeSecrets             | [arn:aws:secretsmanager:us-east-1:396913736034:secret:RestoreModeSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-53GwA9 ](https://us-east-1.console.aws.amazon.com/secretsmanager/home?region=us-east-1#!/secret?name=arn%3Aaws%3Asecretsmanager%3Aus-east-1%3A396913736034%3Asecret%3ARestoreModeSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-53GwA9) | AWS::SecretsManager::Secret         | CREATE_COMPLETE | -      |
| TwoTierCAStack                 | [arn:aws:cloudformation:us-east-1:396913736034:stack/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G/f91121f0-e980-11ef-85aa-0afff9169823 ](https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/stackinfo?stackId=arn%3Aaws%3Acloudformation%3Aus-east-1%3A396913736034%3Astack%2FActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G%2Ff91121f0-e980-11ef-85aa-0afff9169823) | AWS::CloudFormation::Stack          | CREATE_COMPLETE | -      |
| VPCDHCPOptionsAssociation      | dopt-0067292adce284cc7\|vpc-0d068732d294a3286                | AWS::EC2::VPCDHCPOptionsAssociation | CREATE_COMPLETE | -      |



## Events

| Timestamp                    | Logical ID                                             | Status             | Detailed status | Status reason                                             |
| ---------------------------- | ------------------------------------------------------ | ------------------ | --------------- | --------------------------------------------------------- |
| 2025-02-12 16:21:12 UTC-0500 | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 16:21:11 UTC-0500 | TwoTierCAStack                                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:10 UTC-0500 | VPCDHCPOptionsAssociation                              | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:10 UTC-0500 | VPCDHCPOptionsAssociation                              | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:08 UTC-0500 | VPCDHCPOptionsAssociation                              | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:08 UTC-0500 | DHCPOptions                                            | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:02 UTC-0500 | DHCPOptions                                            | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:02 UTC-0500 | TwoTierCAStack                                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:01 UTC-0500 | DHCPOptions                                            | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:01 UTC-0500 | TwoTierCAStack                                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:00 UTC-0500 | DomainController2                                      | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:00 UTC-0500 | DomainController2                                      | CREATE_IN_PROGRESS | -               | Received SUCCESS signal with UniqueId i-06aafc571abe82f37 |
| 2025-02-12 14:55:34 UTC-0500 | DomainController2                                      | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:55:32 UTC-0500 | DomainController2                                      | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:55:32 UTC-0500 | DomainController1                                      | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:55:19 UTC-0500 | DomainController1                                      | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:55:17 UTC-0500 | DomainController1                                      | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:55:17 UTC-0500 | ADServerProfile                                        | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:53:06 UTC-0500 | ADServerProfile                                        | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:53:05 UTC-0500 | ADServerProfile                                        | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:53:05 UTC-0500 | ADServerRole                                           | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:48 UTC-0500 | ADServerRole                                           | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:47 UTC-0500 | DCSecurityGroupIngress                                 | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:47 UTC-0500 | ADServerRole                                           | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:47 UTC-0500 | DCSecurityGroupIngress                                 | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:46 UTC-0500 | AWSQuickstartActiveDirectoryDS                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:46 UTC-0500 | DCSecurityGroupIngress                                 | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:45 UTC-0500 | DomainControllersSG                                    | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:25 UTC-0500 | DomainControllersSG                                    | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:25 UTC-0500 | DomainMembersIngressWinRMHTTP                          | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:25 UTC-0500 | DomainMembersIngressRDP                                | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:25 UTC-0500 | DomainMembersIngressWinRMHTTPS                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:24 UTC-0500 | DomainMembersIngressRDP                                | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:24 UTC-0500 | DomainMembersIngressWinRMHTTPS                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:24 UTC-0500 | DomainMembersIngressWinRMHTTP                          | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:23 UTC-0500 | DomainMembersIngressWinRMHTTPS                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:23 UTC-0500 | DomainControllersSG                                    | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:23 UTC-0500 | DomainMembersIngressRDP                                | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:23 UTC-0500 | DomainMembersIngressWinRMHTTP                          | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:22 UTC-0500 | DomainMembersSG                                        | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:16 UTC-0500 | DomainMembersSG                                        | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:15 UTC-0500 | RestoreModeSecrets                                     | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:15 UTC-0500 | AWSQuickstartActiveDirectoryDS                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:15 UTC-0500 | ADAltUserSecrets                                       | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:15 UTC-0500 | ADAdminSecrets                                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 14:52:15 UTC-0500 | RestoreModeSecrets                                     | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:15 UTC-0500 | ADAltUserSecrets                                       | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:15 UTC-0500 | ADAdminSecrets                                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 14:52:14 UTC-0500 | AWSQuickstartActiveDirectoryDS                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:14 UTC-0500 | RestoreModeSecrets                                     | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:14 UTC-0500 | ADAltUserSecrets                                       | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:14 UTC-0500 | DomainMembersSG                                        | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:14 UTC-0500 | ADAdminSecrets                                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 14:52:10 UTC-0500 | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver | CREATE_IN_PROGRESS | -               | User Initiated                                            |





Nested Stack Name: [ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G](https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/stackinfo?filteringText=&filteringStatus=active&viewNested=true&stackId=arn%3Aaws%3Acloudformation%3Aus-east-1%3A396913736034%3Astack%2FActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G%2Ff91121f0-e980-11ef-85aa-0afff9169823) (two-tier.template)

## Parameters 

| Key                             | Value                                                        | Resolved value        |
| ------------------------------- | ------------------------------------------------------------ | --------------------- |
| AdministratorSecret             | arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B | -                     |
| AMI                             | /aws/service/ami-windows-latest/Windows_Server-2022-English-Full-Base | ami-0a0ebee827a585d06 |
| DirectoryType                   | SelfManaged                                                  | -                     |
| DomainController1IP             | 10.2.0.10                                                    | -                     |
| DomainController2IP             | 10.2.1.10                                                    | -                     |
| DomainDNSName                   | quicksilver.aws.dev                                          | -                     |
| DomainMembersSG                 | sg-07323ac4978963263                                         | -                     |
| DomainNetBIOSName               | QUICKSILVER                                                  | -                     |
| EbsEncryptionKmsKeyId           | alias/aws/ebs                                                | -                     |
| EnableAdvancedAudtingandMetrics | false                                                        | -                     |
| KeyPairName                     | QuickSilver-KeyPair-RSA-PEM-US-EAST-1                        | -                     |
| OrCaDataDriveSizeGiB            | 2                                                            | -                     |
| OrCaHashAlgorithm               | SHA256                                                       | -                     |
| OrCaKeyLength                   | 2048                                                         | -                     |
| OrCaServerInstanceType          | t3.medium                                                    | -                     |
| OrCaServerNetBIOSName           | QUICKSILVERCA1                                               | -                     |
| OrCaServerSubnet                | subnet-01441033b188decd8                                     | -                     |
| OrCaValidityPeriodUnits         | 10                                                           | -                     |
| QSS3BucketName                  | quicksilver-aws-ia                                           | -                     |
| QSS3BucketRegion                | us-east-1                                                    | -                     |
| QSS3KeyPrefix                   | cfn-ps-microsoft-activedirectory/submodules/cfn-ps-microsoft-pki/ | -                     |
| S3CRLBucketName                 | examplebucket                                                | -                     |
| SubCaDataDriveSizeGiB           | 2                                                            | -                     |
| SubCaHashAlgorithm              | SHA256                                                       | -                     |
| SubCaKeyLength                  | 2048                                                         | -                     |
| SubCaServerInstanceType         | t3.medium                                                    | -                     |
| SubCaServerNetBIOSName          | QUICKSILVERCA2                                               | -                     |
| SubCaServerSubnet               | subnet-01441033b188decd8                                     | -                     |
| SubCaValidityPeriodUnits        | 5                                                            | -                     |
| UseS3ForCRL                     | No                                                           | -                     |
| VPCCIDR                         | 10.2.0.0/16                                                  | -                     |
| VPCID                           | vpc-0d068732d294a3286                                        | -                     |



## Outputs 

| Key             | Value                | Description          | Export name |
| --------------- | -------------------- | -------------------- | ----------- |
| CASGID          | sg-0a38a84971f6c15de | CA Security Group ID | -           |
| OrCaInstanceId  | i-0cd0026f159056c20  | ORCA instance ID     | -           |
| SubCAInstanceId | i-0c705b20f40469720  | SubCA instance ID    | -           |



## Resources

| Logical ID      | Physical ID                                                  | Type                           | Status          | Module |
| --------------- | ------------------------------------------------------------ | ------------------------------ | --------------- | ------ |
| AWSQuickstartCA | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G-AWSQuickstartCA-22VfwSPFVdjw | AWS::SSM::Document             | CREATE_COMPLETE | -      |
| CaSG            | [sg-0a38a84971f6c15de ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#SecurityGroups:search=sg-0a38a84971f6c15de) | AWS::EC2::SecurityGroup        | CREATE_COMPLETE | -      |
| CaSGCrlHttp     | sgr-06b1761657ae184be                                        | AWS::EC2::SecurityGroupIngress | CREATE_COMPLETE | -      |
| CaSGCrlHttps    | sgr-04cf22651181cf687                                        | AWS::EC2::SecurityGroupIngress | CREATE_COMPLETE | -      |
| InstanceProfile | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G-InstanceProfile-6Os4ya6s0GOO | AWS::IAM::InstanceProfile      | CREATE_COMPLETE | -      |
| InstanceRole    | [ActiveDirectory-SharedServices-10-2-0--InstanceRole-eslNmXaNfXDE ](https://us-east-1.console.aws.amazon.com/iam/home?#/roles/ActiveDirectory-SharedServices-10-2-0--InstanceRole-eslNmXaNfXDE) | AWS::IAM::Role                 | CREATE_COMPLETE | -      |
| ORCA            | [i-0cd0026f159056c20 ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Instances:search=i-0cd0026f159056c20) | AWS::EC2::Instance             | CREATE_COMPLETE | -      |
| SubCA           | [i-0c705b20f40469720 ](https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Instances:search=i-0c705b20f40469720) | AWS::EC2::Instance             | CREATE_COMPLETE | -      |



## Events

| Timestamp                    | Logical ID                                                   | Status             | Detailed status | Status reason                                             |
| ---------------------------- | ------------------------------------------------------------ | ------------------ | --------------- | --------------------------------------------------------- |
| 2025-02-12 16:20:31 UTC-0500 | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 16:20:30 UTC-0500 | SubCA                                                        | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 16:20:30 UTC-0500 | SubCA                                                        | CREATE_IN_PROGRESS | -               | Received SUCCESS signal with UniqueId i-0c705b20f40469720 |
| 2025-02-12 15:39:25 UTC-0500 | SubCA                                                        | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:39:23 UTC-0500 | SubCA                                                        | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:39:22 UTC-0500 | ORCA                                                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:39:10 UTC-0500 | ORCA                                                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:39:08 UTC-0500 | ORCA                                                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:39:07 UTC-0500 | InstanceProfile                                              | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:57 UTC-0500 | InstanceProfile                                              | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:55 UTC-0500 | InstanceProfile                                              | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:55 UTC-0500 | InstanceRole                                                 | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:38 UTC-0500 | InstanceRole                                                 | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:37 UTC-0500 | InstanceRole                                                 | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:37 UTC-0500 | AWSQuickstartCA                                              | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:16 UTC-0500 | CaSGCrlHttp                                                  | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:16 UTC-0500 | CaSGCrlHttps                                                 | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:16 UTC-0500 | CaSGCrlHttp                                                  | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:16 UTC-0500 | CaSGCrlHttps                                                 | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:15 UTC-0500 | CaSGCrlHttp                                                  | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:15 UTC-0500 | CaSGCrlHttps                                                 | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:14 UTC-0500 | CaSG                                                         | CREATE_COMPLETE    | -               | -                                                         |
| 2025-02-12 15:36:07 UTC-0500 | CaSG                                                         | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:06 UTC-0500 | AWSQuickstartCA                                              | CREATE_IN_PROGRESS | -               | Resource creation Initiated                               |
| 2025-02-12 15:36:05 UTC-0500 | AWSQuickstartCA                                              | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:05 UTC-0500 | CaSG                                                         | CREATE_IN_PROGRESS | -               | -                                                         |
| 2025-02-12 15:36:01 UTC-0500 | ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G | CREATE_IN_PROGRESS | -               | User Initiated                                            |



# Generated AWS SSM Documents:

---------------------------------------------------------------------------------------------------------------------------------------------------------

## ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G-AWSQuickstartCA-22VfwSPFVdjw

{
  "schemaVersion": "0.3",
  "description": "Deploy Two Tier PKI with SSM Automation",
  "parameters": {
    "OrCaValidityPeriodUnits": {
      "description": "Offline Root CA Certificate Validity Period in Years",
      "type": "String"
    },
    "QSS3BucketName": {
      "default": "aws-quickstart",
      "description": "S3 bucket name for the Quick Start assets. Quick Start bucket name can include numbers, lowercase letters, uppercase letters, and hyphens (-). It cannot start or end with a hyphen (-).",
      "type": "String"
    },
    "SubCaValidityPeriodUnits": {
      "description": "Subordinate CA Certificate Validity Period in Years",
      "type": "String"
    },
    "DomainDNSName": {
      "description": "Fully qualified domain name (FQDN) of the forest root domain e.g. example.com",
      "type": "String"
    },
    "DomainNetBIOSName": {
      "description": "NetBIOS name of the domain (up to 15 characters) for users of earlier versions of Windows e.g. EXAMPLE",
      "type": "String"
    },
    "OrCaKeyLength": {
      "description": "Offline Root CA Key Length",
      "type": "String"
    },
    "SubCaKeyLength": {
      "description": "Subordinate CA Key Length",
      "type": "String"
    },
    "SubCaServerNetBIOSName": {
      "description": "NetBIOS name of the Subordinate CA server (up to 15 characters)",
      "type": "String"
    },
    "DomainController1IP": {
      "description": "Fixed private IP for the first Active Directory server located in Availability Zone 1",
      "type": "String"
    },
    "DomainController2IP": {
      "description": "Fixed private IP for the first Active Directory server located in Availability Zone 1",
      "type": "String"
    },
    "AdministratorSecret": {
      "description": "AWS Secrets Parameter Name that has Password and User namer for the domain administrator.",
      "type": "String"
    },
    "OrCaServerNetBIOSName": {
      "description": "NetBIOS name of the Offline Root CA server (up to 15 characters)",
      "type": "String"
    },
    "QSS3KeyPrefix": {
      "default": "quickstart-microsoft-pki/",
      "description": "S3 key prefix for the Quick Start assets. Quick Start key prefix can include numbers, lowercase letters, uppercase letters, hyphens (-), and forward slash (/).",
      "type": "String"
    },
    "UseS3ForCRL": {
      "description": "Use S3 for Enterprise Root CA CRL location",
      "type": "String"
    },
    "DirectoryType": {
      "description": "Type of Active Directory CA will be integrated with",
      "type": "String"
    },
    "EnableAdvancedAudtingandMetrics": {
      "description": "Enable advanced auditing and metrics",
      "type": "String"
    },
    "OrCaHashAlgorithm": {
      "description": "Offline Root CA Hash Algorithm",
      "type": "String"
    },
    "URLSuffix": {
      "default": "amazonaws.com",
      "description": "AWS URL suffix",
      "type": "String"
    },
    "VPCCIDR": {
      "default": "10.0.0.0/16",
      "description": "CIDR block for private subnet 1 located in Availability Zone 1.",
      "type": "String"
    },
    "QSS3BucketRegion": {
      "default": "us-east-1",
      "description": "The AWS Region where the Quick Start S3 bucket (QSS3BucketName) is hosted. When using your own bucket, you must specify this value.",
      "type": "String"
    },
    "SubCaHashAlgorithm": {
      "description": "Subordinate CA Hash Algorithm",
      "type": "String"
    },
    "S3CRLBucketName": {
      "description": "S3 bucket name for Enterprise Root CA CRL",
      "type": "String"
    },
    "StackName": {
      "description": "Stack Name Input for cfn resource signal",
      "type": "String"
    }
  },
  "mainSteps": [
    {
      "outputs": [
        {
          "Type": "StringList",
          "Name": "InstanceIds",
          "Selector": "$.Reservations..Instances..InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{OrCaServerNetBIOSName}}",
              "{{SubCaServerNetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "CaInstanceIds",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "OrcaInstanceId"
    },
    {
      "outputs": [
        {
          "Type": "String",
          "Name": "InstanceId",
          "Selector": "$.Reservations[0].Instances[0].InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{OrCaServerNetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "OrcaInstanceId",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "SubCaInstanceId"
    },
    {
      "outputs": [
        {
          "Type": "String",
          "Name": "InstanceId",
          "Selector": "$.Reservations[0].Instances[0].InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{SubCaServerNetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "SubCaInstanceId",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "intializeInstances"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12\n\n$S3BucketName = '{{QSS3BucketName}}'\n$S3KeyPrefix = '{{QSS3KeyPrefix}}'\n$S3BucketRegion = '{{QSS3BucketRegion}}'\n\n$CustomModules = @(\n    'Module-Pki.psd1',\n    'Module-Pki.psm1'\n)\n\n$Modules = @(\n    @{\n        Name    = 'NetworkingDsc'\n        Version = '8.2.0'\n    },\n    @{\n        Name    = 'ComputerManagementDsc'\n        Version = '8.5.0'\n    },\n    @{\n        Name = 'AuditPolicyDsc'\n        Version = '1.4.0.0'\n    }\n)\n\nWrite-Output 'Creating AWSQuickstart Directory'\nTry {\n    $Null = New-Item -Path 'C:\\AWSQuickstart\\Module-Pki' -ItemType 'Directory' -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to create AWSQuickstart directory $_\"\n    Exit 1\n}\n\n$S3KeyPrefix = $S3KeyPrefix.Substring(0,$S3KeyPrefix.Length -1)\nWrite-Output 'Downloading Pki PowerShell Module'\nForeach ($CustomModule in $CustomModules) {\n    Try {\n        $Null = Read-S3Object -BucketName $S3BucketName -Key \"$($S3KeyPrefix)/scripts/Modules/Module-Pki/$CustomModule\" -File \"C:\\AWSQuickstart\\Module-Pki\\$CustomModule\" -Region $S3BucketRegion\n    } Catch [System.Exception] {\n        Write-Output \"Failed to read and download $CustomModule.Name from S3 $_\"\n        Exit 1\n    }\n}\n\nWrite-Output 'Installing NuGet Package Provider'\nTry {\n    $Null = Install-PackageProvider -Name 'NuGet' -MinimumVersion '2.8.5' -Force -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to install NuGet Package Provider $_\"\n    Exit 1\n}\n\nWrite-Output 'Setting PSGallery Respository to trusted'\nTry {\n    Set-PSRepository -Name 'PSGallery' -InstallationPolicy 'Trusted' -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to set PSGallery Respository to trusted $_\"\n    Exit 1\n}\n\nWrite-Output 'Installing the needed Powershell DSC modules for this Quick Start'\nForeach ($Module in $Modules) {\n    Try {\n        Install-Module -Name $Module.Name -RequiredVersion $Module.Version -ErrorAction Stop\n    } Catch [System.Exception] {\n        Write-Output \"Failed to Import Modules $_\"\n        Exit 1\n    }\n} "
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{CaInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "intializeInstances",
      "action": "aws:runCommand",
      "nextStep": "configureInstances"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\nNew-VolumeFromRawDisk\nInvoke-PreConfig\nInvoke-LcmConfig"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{CaInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureInstances",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "configureOrCaMof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$EniConfig = Get-EniConfig\nSet-DscConfiguration -CaType Offline -DomainController1IP '{{DomainController1IP}}' -DomainController2IP '{{DomainController2IP}}' -GatewayAddress $EniConfig.GatewayAddress -InstanceNetBIOSName '{{OrCaServerNetBIOSName}}' -IpAddress $EniConfig.IpAddress -MacAddress $EniConfig.MacAddress"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{OrcaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureOrCaMof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "runOrCaMof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\nStart-DscConfiguration 'C:\\AWSQuickstart\\ConfigInstance' -Wait -Verbose -Force\nInvoke-DscStatusCheck"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{OrcaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "runOrCaMof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "InstallOrCa"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$Secret = Get-SecretInfo -Domain '{{DomainDNSName}}' -SecretArn '{{AdministratorSecret}}'\nInvoke-TwoTierOrCaConfig -Credentials $Secret.Credentials -DirectoryType '{{DirectoryType}}' -DomainDNSName '{{DomainDNSName}}' -OrCaCommonName '{{OrCaServerNetBIOSName}}' -OrCaHashAlgorithm '{{OrCaHashAlgorithm}}' -OrCaKeyLength '{{OrCaKeyLength}}' -OrCaValidityPeriodUnits '{{OrCaValidityPeriodUnits}}' -S3CRLBucketName '{{S3CRLBucketName}}' -SubCaServerNetBIOSName '{{SubCaServerNetBIOSName}}' -UseS3ForCRL '{{UseS3ForCRL}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{OrcaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "InstallOrCa",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "configureSubCaMof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$EniConfig = Get-EniConfig\n$Secret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{AdministratorSecret}}'\nSet-DscConfiguration -CaType Enterprise -Credentials $Secret.Credentials -DomainController1IP '{{DomainController1IP}}' -DomainController2IP '{{DomainController2IP}}' -DomainDNSName '{{DomainDNSName}}' -GatewayAddress $EniConfig.GatewayAddress -InstanceNetBIOSName '{{SubCaServerNetBIOSName}}' -IpAddress $EniConfig.IpAddress -MacAddress $EniConfig.MacAddress -UseS3ForCRL '{{UseS3ForCRL}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{SubCaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureSubCaMof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "runSubCaMof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\nStart-DscConfiguration 'C:\\AWSQuickstart\\ConfigInstance' -Wait -Verbose -Force\nInvoke-DscStatusCheck"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{SubCaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "runSubCaMof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "InstallSubCa"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$Secret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{AdministratorSecret}}'\nInvoke-TwoTierSubCaInstall -Credentials $Secret.Credentials -DirectoryType '{{DirectoryType}}' -S3CRLBucketName '{{S3CRLBucketName}}' -SubCaCommonName '{{SubCaServerNetBIOSName}}' -SubCaHashAlgorithm '{{SubCaHashAlgorithm}}' -SubCaKeyLength '{{SubCaKeyLength}}' -SubCaValidityPeriodUnits '{{SubCaValidityPeriodUnits}}' -UseS3ForCRL '{{UseS3ForCRL}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{SubCaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "InstallSubCa",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "CertIssueSubCa"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$Secret = Get-SecretInfo -Domain '{{DomainDNSName}}' -SecretArn '{{AdministratorSecret}}'\nInvoke-TwoTierSubCaCertIssue -Credentials $Secret.Credentials -DirectoryType '{{DirectoryType}}' -DomainDNSName '{{DomainDNSName}}'\n\nIf ('{{EnableAdvancedAudtingandMetrics}}' -eq 'true') {\n  Set-AuditDscConfiguration\n  Set-LogsAndMetricsCollection -Stackname '{{StackName}}'\n}                \n\nInvoke-Cleanup -VPCCIDR '{{VPCCIDR}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{OrcaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "CertIssueSubCa",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "FinalizeSubCa"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-Pki\\Module-Pki.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import Pki PS Module $_\"\n    Exit 1\n}\n$Secret = Get-SecretInfo -Domain {{DomainNetBIOSName}} -SecretArn {{AdministratorSecret}}\nInvoke-TwoTierSubCaConfig -Credentials $Secret.Credentials -DirectoryType '{{DirectoryType}}' -S3CRLBucketName '{{S3CRLBucketName}}' -UseS3ForCRL '{{UseS3ForCRL}}'\n\nIf ('{{EnableAdvancedAudtingandMetrics}}' -eq 'true') {\n  Set-AuditDscConfiguration\n  Set-LogsAndMetricsCollection -Stackname '{{StackName}}'\n}\n\nInvoke-Cleanup -VPCCIDR '{{VPCCIDR}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"
        },
        "InstanceIds": [
          "{{SubCaInstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "FinalizeSubCa",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure"
    },
    {
      "inputs": {
        "Choices": [
          {
            "Not": {
              "StringEquals": "",
              "Variable": "{{StackName}}"
            },
            "NextStep": "signalsuccess"
          },
          {
            "StringEquals": "",
            "Variable": "{{StackName}}",
            "NextStep": "sleepend"
          }
        ]
      },
      "name": "CFNSignalEnd",
      "action": "aws:branch"
    },
    {
      "inputs": {
        "Status": "SUCCESS",
        "UniqueId": "{{SubCaInstanceId.InstanceId}}",
        "LogicalResourceId": "SubCA",
        "Service": "cloudformation",
        "Api": "SignalResource",
        "StackName": "{{StackName}}"
      },
      "name": "signalsuccess",
      "action": "aws:executeAwsApi",
      "isEnd": true
    },
    {
      "inputs": {
        "Duration": "PT1S"
      },
      "name": "sleepend",
      "action": "aws:sleep",
      "isEnd": true
    },
    {
      "inputs": {
        "Status": "FAILURE",
        "UniqueId": "{{SubCaInstanceId.InstanceId}}",
        "LogicalResourceId": "SubCA",
        "Service": "cloudformation",
        "Api": "SignalResource",
        "StackName": "{{StackName}}"
      },
      "name": "signalfailure",
      "action": "aws:executeAwsApi"
    }
  ]
}

---------------------------------------------------------------------------------------------------------------------------------------------------------

## ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-AWSQuickstartActiveDirectoryDS-HjwXn8I2xZuJ

{
  "schemaVersion": "0.3",
  "description": "Deploy AD with SSM Automation",
  "parameters": {
    "QSS3BucketName": {
      "default": "aws-ia-us-east-1",
      "description": "S3 bucket name for the Quick Start assets. Quick Start bucket name can include numbers, lowercase letters, uppercase letters, and hyphens (-). It cannot start or end with a hyphen (-)",
      "type": "String",
      "allowedPattern": "^[a-z0-9]+[a-z0-9\\.\\-]*[a-z0-9]+$"
    },
    "DomainDNSName": {
      "default": "example.com",
      "description": "Fully qualified domain name (FQDN) of the forest root domain e.g. example.com",
      "maxChars": "64",
      "type": "String",
      "allowedPattern": "^([a-zA-Z0-9]+[\\.\\-])+([a-zA-Z0-9])+$",
      "minChars": "2"
    },
    "TombstoneLifetime": {
      "default": "180",
      "description": "The number of days before a deleted object is removed from the directory services",
      "type": "String",
      "allowedPattern": "^[\\d]+$"
    },
    "DomainNetBIOSName": {
      "default": "example",
      "description": "NetBIOS name of the domain (up to 15 characters) for users of earlier versions of Windows e.g. EXAMPLE",
      "maxChars": "15",
      "type": "String",
      "allowedPattern": "^[a-zA-Z0-9]+$",
      "minChars": "1"
    },
    "ADServer1NetBIOSName": {
      "default": "DC1",
      "description": "NetBIOS name of the first Active Directory Domain Controller (up to 15 characters)",
      "maxChars": "15",
      "type": "String",
      "allowedPattern": "^[a-zA-Z0-9]+$",
      "minChars": "1"
    },
    "ADAltUserSecParamName": {
      "description": "AWS Secrets Parameter Name for the account that will be added as Domain Administrator. This is separate from the built-in Administrator account",
      "maxChars": "2048",
      "type": "String",
      "allowedPattern": "^arn:[^:]+:secretsmanager:[^:]+:\\d{12}:secret:[\\w\\/+=.@-]{1,512}$",
      "minChars": "20"
    },
    "QSS3KeyPrefix": {
      "default": "cfn-ps-microsoft-activedirectory/",
      "description": "S3 key prefix for the Quick Start assets. Quick Start key prefix can include numbers, lowercase letters, uppercase letters, hyphens (-), and forward slash (/)",
      "type": "String",
      "allowedPattern": "^[a-zA-Z0-9\\-\\/]+$"
    },
    "ADServer2PrivateIP": {
      "default": "10.0.32.10",
      "description": "Fixed private IP for the second Active Directory Domain Controller located in Availability Zone 2",
      "type": "String",
      "allowedPattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"
    },
    "DeletedObjectLifetime": {
      "default": "180",
      "description": "The number of days before a deleted object is removed from the directory services recycling bin",
      "type": "String",
      "allowedPattern": "^[\\d]+$"
    },
    "CreateDefaultOUs": {
      "allowedValues": [
        "Yes",
        "No"
      ],
      "default": "No",
      "description": "Create Domain Elevated Accounts, Domain Users, Domain Computers, Domain Servers, Domain Service Accounts, and Domain Groups OUs",
      "type": "String"
    },
    "ADServer1PrivateIP": {
      "default": "10.0.0.10",
      "description": "Fixed private IP for the first Active Directory Domain Controller located in Availability Zone 1",
      "type": "String",
      "allowedPattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"
    },
    "ADServer2NetBIOSName": {
      "default": "DC2",
      "description": "NetBIOS name of the second Active Directory Domain Controller (up to 15 characters)",
      "maxChars": "15",
      "type": "String",
      "allowedPattern": "^[a-zA-Z0-9]+$",
      "minChars": "1"
    },
    "EnableAdvancedAudtingandMetrics": {
      "allowedValues": [
        "true",
        "false"
      ],
      "default": "false",
      "description": "Enable advanced auditing and metrics",
      "type": "String"
    },
    "URLSuffix": {
      "default": "amazonaws.com",
      "description": "AWS URL suffix",
      "type": "String",
      "allowedPattern": "^[a-zA-Z0-9\\-\\.]+$"
    },
    "VPCCIDR": {
      "default": "10.0.0.0/16",
      "description": "CIDR Block for the VPC",
      "type": "String",
      "allowedPattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(1[6-9]|2[0-8]))$"
    },
    "QSS3BucketRegion": {
      "default": "us-east-1",
      "description": "The AWS Region where the Quick Start S3 bucket (QSS3BucketName) is hosted. When using your own bucket, you must specify this value",
      "type": "String",
      "allowedPattern": "^[a-z]+\\-[a-z\\-]+\\-[0-9]{1}$"
    },
    "RestoreModeSecParamName": {
      "description": "AWS Secrets Parameter Name for the Active Directory Restore Mode Password",
      "maxChars": "2048",
      "type": "String",
      "allowedPattern": "^arn:[^:]+:secretsmanager:[^:]+:\\d{12}:secret:[\\w\\/+=.@-]{1,512}$",
      "minChars": "20"
    },
    "ADAdminSecParamName": {
      "description": "AWS Secrets Parameter Name that has Password and User namer for the built-in administrator",
      "maxChars": "2048",
      "type": "String",
      "allowedPattern": "^arn:[^:]+:secretsmanager:[^:]+:\\d{12}:secret:[\\w\\/+=.@-]{1,512}$",
      "minChars": "20"
    },
    "StackName": {
      "description": "Stack Name Input for cfn resource signal",
      "maxChars": "128",
      "type": "String",
      "allowedPattern": "^[a-zA-Z][A-Za-z0-9\\-]+$",
      "minChars": "1"
    }
  },
  "mainSteps": [
    {
      "outputs": [
        {
          "Type": "StringList",
          "Name": "InstanceIds",
          "Selector": "$.Reservations..Instances..InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{ADServer1NetBIOSName}}",
              "{{ADServer2NetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "dcsInstanceIds",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "dc1InstanceId"
    },
    {
      "outputs": [
        {
          "Type": "String",
          "Name": "InstanceId",
          "Selector": "$.Reservations[0].Instances[0].InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{ADServer1NetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "dc1InstanceId",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "dc2InstanceId"
    },
    {
      "outputs": [
        {
          "Type": "String",
          "Name": "InstanceId",
          "Selector": "$.Reservations[0].Instances[0].InstanceId"
        }
      ],
      "inputs": {
        "Filters": [
          {
            "Values": [
              "{{ADServer2NetBIOSName}}"
            ],
            "Name": "tag:Name"
          },
          {
            "Values": [
              "{{StackName}}"
            ],
            "Name": "tag:aws:cloudformation:stack-name"
          },
          {
            "Values": [
              "running"
            ],
            "Name": "instance-state-name"
          }
        ],
        "Service": "ec2",
        "Api": "DescribeInstances"
      },
      "name": "dc2InstanceId",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "nextStep": "intializeInstance"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12\n\n$S3BucketName = '{{QSS3BucketName}}'\n$S3KeyPrefix = '{{QSS3KeyPrefix}}'\n$S3BucketRegion = '{{QSS3BucketRegion}}'\n\n$CustomModules = @(\n    'Module-AD.psd1',\n    'Module-AD.psm1'\n)\n\n$Modules = @(\n    @{\n        Name = 'NetworkingDsc'\n        Version = '8.2.0'\n    },\n    @{\n        Name = 'ActiveDirectoryDsc'\n        Version = '6.0.1'\n    },\n    @{\n        Name = 'ComputerManagementDsc'\n        Version = '8.5.0'\n    },\n    @{\n        Name = 'DnsServerDsc'\n        Version = '3.0.0'\n    },\n    @{\n        Name = 'AuditPolicyDsc'\n        Version = '1.4.0.0'\n    }\n)\n\nWrite-Output 'Creating AWSQuickstart Directory'\nTry {\n    $Null = New-Item -Path 'C:\\AWSQuickstart\\Module-AD' -ItemType 'Directory' -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to create AWSQuickstart directory $_\"\n    Exit 1\n}\n\n$S3KeyPrefix = $S3KeyPrefix.Substring(0,$S3KeyPrefix.Length -1)\nWrite-Output 'Downloading AD PowerShell Module'\nForeach ($CustomModule in $CustomModules) {\n    Try {\n        $Null = Read-S3Object -BucketName $S3BucketName -Key \"$($S3KeyPrefix)/scripts/Modules/Module-AD/$CustomModule\" -File \"C:\\AWSQuickstart\\Module-AD\\$CustomModule\" -Region $S3BucketRegion\n    } Catch [System.Exception] {\n        Write-Output \"Failed to read and download $CustomModule.Name from S3 $_\"\n        Exit 1\n    }\n}\n\nWrite-Output 'Installing NuGet Package Provider'\nTry {\n    $Null = Install-PackageProvider -Name 'NuGet' -MinimumVersion '2.8.5' -Force -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to install NuGet Package Provider $_\"\n    Exit 1\n}\n\nWrite-Output 'Setting PSGallery Respository to trusted'\nTry {\n    Set-PSRepository -Name 'PSGallery' -InstallationPolicy 'Trusted' -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to set PSGallery Respository to trusted $_\"\n    Exit 1\n}\n\nWrite-Output 'Installing the needed Powershell DSC modules for this Quick Start'\nForeach ($Module in $Modules) {\n    Try {\n        Install-Module -Name $Module.Name -RequiredVersion $Module.Version -ErrorAction Stop\n    } Catch [System.Exception] {\n        Write-Output \"Failed to Import Modules $_\"\n        Exit 1\n    }\n} "
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dcsInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "intializeInstance",
      "action": "aws:runCommand",
      "nextStep": "configureInstance"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\nNew-VolumeFromRawDisk\nInvoke-PreConfig\nInvoke-LcmConfig"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dcsInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureInstance",
      "action": "aws:runCommand",
      "nextStep": "configureDc1Mof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\n$EniConfig = Get-EniConfig\n$DaSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{ADAdminSecParamName}}'\n$RmSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{RestoreModeSecParamName}}'\n$AltSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{ADAltUserSecParamName}}'\nSet-DscConfiguration -AltAdminCredentials $AltSecret.Credentials -AltAdminUserName $AltSecret.Username -DaCredentials $DaSecret.DomainCredentials -DeploymentType 'FirstDc' -DomainDNSName '{{DomainDNSName}}' -DomainNetBIOSName '{{DomainNetBIOSName}}' -GatewayAddress $EniConfig.GatewayAddress -InstanceIP $EniConfig.IpAddress -InstanceNetBIOSName '{{ADServer1NetBIOSName}}' -LaCredentials $DaSecret.Credentials -MacAddress $EniConfig.MacAddress -RestoreModeCredentials $RmSecret.Credentials -SiteName '{{global:REGION}}' -VPCCIDR '{{VPCCIDR}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dc1InstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureDc1Mof",
      "action": "aws:runCommand",
      "nextStep": "runDc1Mof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\nStart-DscConfiguration 'C:\\AWSQuickstart\\ConfigInstance' -Wait -Verbose -Force\nInvoke-DscStatusCheck"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dc1InstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "runDc1Mof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "configureDc2Mof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\n$EniConfig = Get-EniConfig\n$DaSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{ADAdminSecParamName}}'\n$RmSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{RestoreModeSecParamName}}'\nSet-DscConfiguration -DaCredentials $DaSecret.DomainCredentials -DeploymentType 'SecondaryDC' -DomainDNSName '{{DomainDNSName}}' -DomainNetBIOSName '{{DomainNetBIOSName}}' -ExistingDcIP01 '{{ADServer1PrivateIP}}' -GatewayAddress $EniConfig.GatewayAddress -InstanceIP $EniConfig.IpAddress -InstanceIPDns $EniConfig.DnsIpAddress -InstanceNetBIOSName '{{ADServer2NetBIOSName}}' -MacAddress $EniConfig.MacAddress -RestoreModeCredentials $RmSecret.Credentials"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dc2InstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "configureDc2Mof",
      "action": "aws:runCommand",
      "nextStep": "runDc2Mof"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\nStart-DscConfiguration 'C:\\AWSQuickstart\\ConfigInstance' -Wait -Verbose -Force\nInvoke-DscStatusCheck"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dc2InstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "runDc2Mof",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "DisableFW"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Get-NetFirewallProfile -ErrorAction Stop | Set-NetFirewallProfile -Enabled False -ErrorAction Stop\n} Catch [System.Exception] {\n    Write-Output \"Failed to disable Windows Firewall $_\"\n    Exit 1\n}"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dcsInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "DisableFW",
      "action": "aws:runCommand",
      "nextStep": "DnsConfig"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\n$DaSecret = Get-SecretInfo -Domain '{{DomainNetBIOSName}}' -SecretArn '{{ADAdminSecParamName}}'\nSet-DnsDscConfiguration -AD1Deployment -ADServer1NetBIOSName '{{ADServer1NetBIOSName}}' -ADServer2NetBIOSName '{{ADServer2NetBIOSName}}' -ADServer1PrivateIP '{{ADServer1PrivateIP}}' -ADServer2PrivateIP '{{ADServer2PrivateIP}}' -DomainDNSName '{{DomainDNSName}}' -DaCredentials $DaSecret.Credentials -VPCCIDR '{{VPCCIDR}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dc2InstanceId.InstanceId}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "DnsConfig",
      "action": "aws:runCommand",
      "onFailure": "step:signalfailure",
      "nextStep": "PostConfig"
    },
    {
      "inputs": {
        "Parameters": {
          "commands": "Try {\n    Import-Module -Name 'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1' -Force\n} Catch [System.Exception] {\n    Write-Output \"Failed to import AD PS Module $_\"\n    Exit 1\n}\nSet-PostPromoConfig -S3BucketName '{{QSS3BucketName}}' -S3BucketRegion '{{QSS3BucketRegion}}' -S3KeyPrefix '{{QSS3KeyPrefix}}' -CreateDefaultOUs '{{CreateDefaultOUs}}' -TombstoneLifetime '{{TombstoneLifetime}}' -DeletedObjectLifetime '{{DeletedObjectLifetime}}'\n\nIf ('{{EnableAdvancedAudtingandMetrics}}' -eq 'true') {\n  Set-DcAuditDscConfiguration\n  Set-LogsAndMetricsCollection -Role 'DomainController' -Stackname '{{StackName}}'\n}\n\nInvoke-Cleanup -VPCCIDR '{{VPCCIDR}}'"
        },
        "CloudWatchOutputConfig": {
          "CloudWatchOutputEnabled": true,
          "CloudWatchLogGroupName": "/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"
        },
        "InstanceIds": [
          "{{dcsInstanceIds.InstanceIds}}"
        ],
        "DocumentName": "AWS-RunPowerShellScript"
      },
      "name": "PostConfig",
      "action": "aws:runCommand"
    },
    {
      "maxAttempts": 3,
      "inputs": {
        "HttpTokens": "required",
        "InstanceId": "{{dc1InstanceId.InstanceId}}",
        "Service": "ec2",
        "Api": "ModifyInstanceMetadataOptions",
        "HttpEndpoint": "enabled"
      },
      "name": "configureIMDSv2dc1",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "description": "Set hop limit and configure IMDS version",
      "timeoutSeconds": 300,
      "isCritical": true,
      "isEnd": false
    },
    {
      "maxAttempts": 3,
      "inputs": {
        "HttpTokens": "required",
        "InstanceId": "{{dc2InstanceId.InstanceId}}",
        "Service": "ec2",
        "Api": "ModifyInstanceMetadataOptions",
        "HttpEndpoint": "enabled"
      },
      "name": "configureIMDSv2dc2",
      "action": "aws:executeAwsApi",
      "onFailure": "step:signalfailure",
      "description": "Set hop limit and configure IMDS version",
      "timeoutSeconds": 300,
      "isCritical": true,
      "isEnd": false
    },
    {
      "inputs": {
        "Choices": [
          {
            "Not": {
              "StringEquals": "",
              "Variable": "{{StackName}}"
            },
            "NextStep": "signalsuccess"
          },
          {
            "StringEquals": "",
            "Variable": "{{StackName}}",
            "NextStep": "sleepend"
          }
        ]
      },
      "name": "CFNSignalEnd",
      "action": "aws:branch"
    },
    {
      "inputs": {
        "Status": "SUCCESS",
        "UniqueId": "{{dc2InstanceId.InstanceId}}",
        "LogicalResourceId": "DomainController2",
        "Service": "cloudformation",
        "Api": "SignalResource",
        "StackName": "{{StackName}}"
      },
      "name": "signalsuccess",
      "action": "aws:executeAwsApi",
      "isEnd": true
    },
    {
      "inputs": {
        "Duration": "PT1S"
      },
      "name": "sleepend",
      "action": "aws:sleep",
      "isEnd": true
    },
    {
      "inputs": {
        "Status": "FAILURE",
        "UniqueId": "{{dc2InstanceId.InstanceId}}",
        "LogicalResourceId": "DomainController2",
        "Service": "cloudformation",
        "Api": "SignalResource",
        "StackName": "{{StackName}}"
      },
      "name": "signalfailure",
      "action": "aws:executeAwsApi"
    }
  ]
}

---------------------------------------------------------------------------------------------------------------------------------------------------------

# AWS SSM Automation Document Executions:

#### AWS Systems Manager/Automation/Execution ID: 1dd05417-0638-4790-b69f-ec6a43682318

Execution detail: 

#### ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-AWSQuickstartActiveDirectoryDS-HjwXn8I2xZuJ

| Step ID                                                      | Step # | Step name         | Action            | Status  | Start time                    | End time                      |
| ------------------------------------------------------------ | ------ | ----------------- | ----------------- | ------- | ----------------------------- | ----------------------------- |
| [b1573d3f-0e23-4e6c-abaf-0415ca4493cd](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/1/b1573d3f-0e23-4e6c-abaf-0415ca4493cd?region=us-east-1) | 1      | dcsInstanceIds    | aws:executeAwsApi | Success | Wed, 12 Feb 2025 19:59:06 GMT | Wed, 12 Feb 2025 19:59:06 GMT |
| [258a0335-7763-4012-a8af-59763d09d80c](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/2/258a0335-7763-4012-a8af-59763d09d80c?region=us-east-1) | 2      | dc1InstanceId     | aws:executeAwsApi | Success | Wed, 12 Feb 2025 19:59:06 GMT | Wed, 12 Feb 2025 19:59:07 GMT |
| [cd08002a-6b44-4f8a-8154-a4987947c428](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/3/cd08002a-6b44-4f8a-8154-a4987947c428?region=us-east-1) | 3      | dc2InstanceId     | aws:executeAwsApi | Success | Wed, 12 Feb 2025 19:59:07 GMT | Wed, 12 Feb 2025 19:59:08 GMT |
| [af264164-fccc-4138-bd50-9515f014cf76](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/4/af264164-fccc-4138-bd50-9515f014cf76?region=us-east-1) | 4      | intializeInstance | aws:runCommand    | Success | Wed, 12 Feb 2025 19:59:08 GMT | Wed, 12 Feb 2025 20:02:18 GMT |
| [dbb27cd7-66d4-4bec-a59d-45dba0efcecc](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/5/dbb27cd7-66d4-4bec-a59d-45dba0efcecc?region=us-east-1) | 5      | configureInstance | aws:runCommand    | Success | Wed, 12 Feb 2025 20:02:18 GMT | Wed, 12 Feb 2025 20:03:07 GMT |
| [8ace0a90-78d5-435e-b398-847c7084fb05](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/6/8ace0a90-78d5-435e-b398-847c7084fb05?region=us-east-1) | 6      | configureDc1Mof   | aws:runCommand    | Success | Wed, 12 Feb 2025 20:03:07 GMT | Wed, 12 Feb 2025 20:05:11 GMT |
| [41ae2634-4372-4909-a140-a271ee3c1672](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/7/41ae2634-4372-4909-a140-a271ee3c1672?region=us-east-1) | 7      | runDc1Mof         | aws:runCommand    | Success | Wed, 12 Feb 2025 20:05:12 GMT | Wed, 12 Feb 2025 20:16:33 GMT |
| [4d1ffa5c-e33a-4e89-9ba2-70d08994765b](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/8/4d1ffa5c-e33a-4e89-9ba2-70d08994765b?region=us-east-1) | 8      | configureDc2Mof   | aws:runCommand    | Success | Wed, 12 Feb 2025 20:16:33 GMT | Wed, 12 Feb 2025 20:18:23 GMT |
| [ee29bb08-ee64-497c-bf22-9c4e3bd65947](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/9/ee29bb08-ee64-497c-bf22-9c4e3bd65947?region=us-east-1) | 9      | runDc2Mof         | aws:runCommand    | Success | Wed, 12 Feb 2025 20:18:23 GMT | Wed, 12 Feb 2025 20:31:25 GMT |
| [c3bc5c66-7341-4673-bd8a-95345f62a177](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/10/c3bc5c66-7341-4673-bd8a-95345f62a177?region=us-east-1) | 10     | DisableFW         | aws:runCommand    | Success | Wed, 12 Feb 2025 20:31:25 GMT | Wed, 12 Feb 2025 20:31:36 GMT |

|                                                              |      |                    |                   |         |                               |                               |
| ------------------------------------------------------------ | ---- | ------------------ | ----------------- | ------- | ----------------------------- | ----------------------------- |
| [1dc53035-ee6b-4539-ac73-cae736af880e](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/11/1dc53035-ee6b-4539-ac73-cae736af880e?region=us-east-1) | 11   | DnsConfig          | aws:runCommand    | Success | Wed, 12 Feb 2025 20:31:36 GMT | Wed, 12 Feb 2025 20:33:54 GMT |
| [277dfe02-b33d-4f2b-984a-321bdf6753e8](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/12/277dfe02-b33d-4f2b-984a-321bdf6753e8?region=us-east-1) | 12   | PostConfig         | aws:runCommand    | Success | Wed, 12 Feb 2025 20:33:54 GMT | Wed, 12 Feb 2025 20:35:39 GMT |
| [00925f8c-c05c-40de-9e1f-ae631db7ce43](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/13/00925f8c-c05c-40de-9e1f-ae631db7ce43?region=us-east-1) | 13   | configureIMDSv2dc1 | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:35:40 GMT | Wed, 12 Feb 2025 20:35:40 GMT |
| [460a07ad-3bba-40a8-a815-7289c9c63eac](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/14/460a07ad-3bba-40a8-a815-7289c9c63eac?region=us-east-1) | 14   | configureIMDSv2dc2 | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:35:40 GMT | Wed, 12 Feb 2025 20:35:41 GMT |
| [10b29593-2bef-4050-bcf6-eff240d36329](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/15/10b29593-2bef-4050-bcf6-eff240d36329?region=us-east-1) | 15   | CFNSignalEnd       | aws:branch        | Success | Wed, 12 Feb 2025 20:35:41 GMT | Wed, 12 Feb 2025 20:35:41 GMT |
| [2273300e-bdf6-4417-a02a-88b5fab7f743](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/16/2273300e-bdf6-4417-a02a-88b5fab7f743?region=us-east-1) | 16   | signalsuccess      | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:35:42 GMT | Wed, 12 Feb 2025 20:35:42 GMT |
| [94d36e08-789c-4d9a-b5f3-00836ba5201d](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/17/94d36e08-789c-4d9a-b5f3-00836ba5201d?region=us-east-1) | 17   | sleepend           | aws:sleep         | Pending | -                             | -                             |
| [37c016f5-c828-48e8-8add-9db07028badb](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/1dd05417-0638-4790-b69f-ec6a43682318/step/18/37c016f5-c828-48e8-8add-9db07028badb?region=us-east-1) | 18   | signalfailure      | aws:executeAwsApi | Pending | -                             | -                             |



---------------------------------------------------------------------------------------------------------------------------------------------------------

#### AWS Systems Manager/Automation/Execution ID: 89860f94-2719-4634-a8b3-af8406b3a7d8

Execution detail: 

#### ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G-AWSQuickstartCA-22VfwSPFVdjw

| Step ID                                                      | Step # | Step name          | Action            | Status  | Start time                    | End time                      |
| ------------------------------------------------------------ | ------ | ------------------ | ----------------- | ------- | ----------------------------- | ----------------------------- |
| [433f606d-32e8-474e-b299-85f3915d51be](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/1/433f606d-32e8-474e-b299-85f3915d51be?region=us-east-1) | 1      | CaInstanceIds      | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:43:03 GMT | Wed, 12 Feb 2025 20:43:03 GMT |
| [f2ed6583-9759-4408-bd89-31f3df8b4bbf](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/2/f2ed6583-9759-4408-bd89-31f3df8b4bbf?region=us-east-1) | 2      | OrcaInstanceId     | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:43:03 GMT | Wed, 12 Feb 2025 20:43:04 GMT |
| [be255e1b-4aaa-4d9b-8f06-f2bad8a0ed66](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/3/be255e1b-4aaa-4d9b-8f06-f2bad8a0ed66?region=us-east-1) | 3      | SubCaInstanceId    | aws:executeAwsApi | Success | Wed, 12 Feb 2025 20:43:04 GMT | Wed, 12 Feb 2025 20:43:05 GMT |
| [81f06f34-29e5-4e50-8109-f95cd5fbd2f1](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/4/81f06f34-29e5-4e50-8109-f95cd5fbd2f1?region=us-east-1) | 4      | intializeInstances | aws:runCommand    | Success | Wed, 12 Feb 2025 20:43:05 GMT | Wed, 12 Feb 2025 20:46:27 GMT |
| [b9e45dec-480a-49ed-976b-b086d37f6611](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/5/b9e45dec-480a-49ed-976b-b086d37f6611?region=us-east-1) | 5      | configureInstances | aws:runCommand    | Success | Wed, 12 Feb 2025 20:46:27 GMT | Wed, 12 Feb 2025 20:47:30 GMT |
| [e321b12e-9edd-4d93-9a7c-08e602b5dc3c](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/6/e321b12e-9edd-4d93-9a7c-08e602b5dc3c?region=us-east-1) | 6      | configureOrCaMof   | aws:runCommand    | Success | Wed, 12 Feb 2025 20:47:31 GMT | Wed, 12 Feb 2025 20:48:55 GMT |
| [7437f864-37ac-4b40-a8ae-b9af316ec6eb](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/7/7437f864-37ac-4b40-a8ae-b9af316ec6eb?region=us-east-1) | 7      | runOrCaMof         | aws:runCommand    | Success | Wed, 12 Feb 2025 20:48:55 GMT | Wed, 12 Feb 2025 20:55:27 GMT |
| [04a03cfc-4827-41fe-8e71-bdf78371029a](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/8/04a03cfc-4827-41fe-8e71-bdf78371029a?region=us-east-1) | 8      | InstallOrCa        | aws:runCommand    | Success | Wed, 12 Feb 2025 20:55:27 GMT | Wed, 12 Feb 2025 20:57:53 GMT |
| [5d66c70c-e2c9-4a34-b804-ab8fb945051e](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/9/5d66c70c-e2c9-4a34-b804-ab8fb945051e?region=us-east-1) | 9      | configureSubCaMof  | aws:runCommand    | Success | Wed, 12 Feb 2025 20:57:53 GMT | Wed, 12 Feb 2025 21:01:20 GMT |
| [fd1ceaea-f55d-47a4-8c1c-27732392c72f](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/10/fd1ceaea-f55d-47a4-8c1c-27732392c72f?region=us-east-1) | 10     | runSubCaMof        | aws:runCommand    | Success | Wed, 12 Feb 2025 21:01:20 GMT | Wed, 12 Feb 2025 21:09:24 GMT |

|                                                              |      |                |                   |         |                               |                               |
| ------------------------------------------------------------ | ---- | -------------- | ----------------- | ------- | ----------------------------- | ----------------------------- |
| [7cf8ea45-a973-4e48-b02d-6138cb782e9a](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/11/7cf8ea45-a973-4e48-b02d-6138cb782e9a?region=us-east-1) | 11   | InstallSubCa   | aws:runCommand    | Success | Wed, 12 Feb 2025 21:09:24 GMT | Wed, 12 Feb 2025 21:12:55 GMT |
| [4944cfb7-175e-414a-85c5-5b38fac70358](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/12/4944cfb7-175e-414a-85c5-5b38fac70358?region=us-east-1) | 12   | CertIssueSubCa | aws:runCommand    | Success | Wed, 12 Feb 2025 21:12:56 GMT | Wed, 12 Feb 2025 21:15:21 GMT |
| [b423e989-138b-4b66-a3dd-062758b49a5f](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/13/b423e989-138b-4b66-a3dd-062758b49a5f?region=us-east-1) | 13   | FinalizeSubCa  | aws:runCommand    | Success | Wed, 12 Feb 2025 21:15:21 GMT | Wed, 12 Feb 2025 21:20:20 GMT |
| [886c2472-7f21-46db-9bf0-a1101dc60276](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/14/886c2472-7f21-46db-9bf0-a1101dc60276?region=us-east-1) | 14   | CFNSignalEnd   | aws:branch        | Success | Wed, 12 Feb 2025 21:20:20 GMT | Wed, 12 Feb 2025 21:20:20 GMT |
| [15d994b7-5135-4398-8bd2-122ca6011a75](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/15/15d994b7-5135-4398-8bd2-122ca6011a75?region=us-east-1) | 15   | signalsuccess  | aws:executeAwsApi | Success | Wed, 12 Feb 2025 21:20:20 GMT | Wed, 12 Feb 2025 21:20:21 GMT |
| [b613b6de-8f3f-4b18-af2a-7c380d6bebf5](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/16/b613b6de-8f3f-4b18-af2a-7c380d6bebf5?region=us-east-1) | 16   | sleepend       | aws:sleep         | Pending | -                             | -                             |
| [dd4036c1-34af-4d51-8925-382569a4e1c9](https://us-east-1.console.aws.amazon.com/systems-manager/automation/execution/89860f94-2719-4634-a8b3-af8406b3a7d8/step/17/dd4036c1-34af-4d51-8925-382569a4e1c9?region=us-east-1) | 17   | signalfailure  | aws:executeAwsApi | Pending | -                             | -                             |

---------------------------------------------------------------------------------------------------------------------------------------------------------

#### aws ssm get-automation-execution --automation-execution-id 1dd05417-0638-4790-b69f-ec6a43682318 --region us-east-1 > ad_automation_details.json

{

​    "AutomationExecution": {

​        "AutomationExecutionId": "1dd05417-0638-4790-b69f-ec6a43682318",

​        "DocumentName": "ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-AWSQuickstartActiveDirectoryDS-HjwXn8I2xZuJ",

​        "DocumentVersion": "1",

​        "ExecutionStartTime": "2025-02-12T14:59:05.719000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:35:42.494000-05:00",

​        "AutomationExecutionStatus": "Success",

​        "StepExecutions": [

​            {

​                "StepName": "dcsInstanceIds",

​                "Action": "aws:executeAwsApi",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T14:59:06.154000-05:00",

​                "ExecutionEndTime": "2025-02-12T14:59:06.685000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"DescribeInstances\"",

​                    "Filters": "[{\"Values\":[\"QUICKSILVERDC1\",\"QUICKSILVERDC2\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​                    "Service": "\"ec2\""

​                },

​                "Outputs": {

​                    "InstanceIds": [

​                        "i-06aafc571abe82f37",

​                        "i-07da7ede6f65300df"

​                    ]

​                },

​                "StepExecutionId": "b1573d3f-0e23-4e6c-abaf-0415ca4493cd",

​                "OverriddenParameters": {},

​                "NextStep": "dc1InstanceId",

​                "ValidNextSteps": [

​                    "dc1InstanceId"

​                ]

​            },

​            {

​                "StepName": "dc1InstanceId",

​                "Action": "aws:executeAwsApi",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T14:59:06.891000-05:00",

​                "ExecutionEndTime": "2025-02-12T14:59:07.380000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"DescribeInstances\"",

​                    "Filters": "[{\"Values\":[\"QUICKSILVERDC1\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​                    "Service": "\"ec2\""

​                },

​                "Outputs": {

​                    "InstanceId": [

​                        "i-07da7ede6f65300df"

​                    ]

​                },

​                "StepExecutionId": "258a0335-7763-4012-a8af-59763d09d80c",

​                "OverriddenParameters": {},

​                "NextStep": "dc2InstanceId",

​                "ValidNextSteps": [

​                    "dc2InstanceId"

​                ]

​            },

​            {

​                "StepName": "dc2InstanceId",

​                "Action": "aws:executeAwsApi",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T14:59:07.612000-05:00",

​                "ExecutionEndTime": "2025-02-12T14:59:08.059000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"DescribeInstances\"",

​                    "Filters": "[{\"Values\":[\"QUICKSILVERDC2\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​                    "Service": "\"ec2\""

​                },

​                "Outputs": {

​                    "InstanceId": [

​                        "i-06aafc571abe82f37"

​                    ]

​                },

​                "StepExecutionId": "cd08002a-6b44-4f8a-8154-a4987947c428",

​                "OverriddenParameters": {},

​                "NextStep": "intializeInstance",

​                "ValidNextSteps": [

​                    "intializeInstance"

​                ]

​            },

​            {

​                "StepName": "intializeInstance",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T14:59:08.251000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:02:18.526000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\",\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12\\n\\n$S3BucketName = 'quicksilver-aws-ia'\\n$S3KeyPrefix = 'cfn-ps-microsoft-activedirectory/'\\n$S3BucketRegion = 'us-east-1'\\n\\n$CustomModules = @(\\n    'Module-AD.psd1',\\n    'Module-AD.psm1'\\n)\\n\\n$Modules = @(\\n    @{\\n        Name = 'NetworkingDsc'\\n        Version = '8.2.0'\\n    },\\n    @{\\n        Name = 'ActiveDirectoryDsc'\\n        Version = '6.0.1'\\n    },\\n    @{\\n        Name = 'ComputerManagementDsc'\\n        Version = '8.5.0'\\n    },\\n    @{\\n        Name = 'DnsServerDsc'\\n        Version = '3.0.0'\\n    },\\n    @{\\n        Name = 'AuditPolicyDsc'\\n        Version = '1.4.0.0'\\n    }\\n)\\n\\nWrite-Output 'Creating AWSQuickstart Directory'\\nTry {\\n    $Null = New-Item -Path 'C:\\\\AWSQuickstart\\\\Module-AD' -ItemType 'Directory' -ErrorAction Stop\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to create AWSQuickstart directory $_\\\"\\n    Exit 1\\n}\\n\\n$S3KeyPrefix = $S3KeyPrefix.Substring(0,$S3KeyPrefix.Length -1)\\nWrite-Output 'Downloading AD PowerShell Module'\\nForeach ($CustomModule in $CustomModules) {\\n    Try {\\n        $Null = Read-S3Object -BucketName $S3BucketName -Key \\\"$($S3KeyPrefix)/scripts/Modules/Module-AD/$CustomModule\\\" -File \\\"C:\\\\AWSQuickstart\\\\Module-AD\\\\$CustomModule\\\" -Region $S3BucketRegion\\n    } Catch [System.Exception] {\\n        Write-Output \\\"Failed to read and download $CustomModule.Name from S3 $_\\\"\\n        Exit 1\\n    }\\n}\\n\\nWrite-Output 'Installing NuGet Package Provider'\\nTry {\\n    $Null = Install-PackageProvider -Name 'NuGet' -MinimumVersion '2.8.5' -Force -ErrorAction Stop\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to install NuGet Package Provider $_\\\"\\n    Exit 1\\n}\\n\\nWrite-Output 'Setting PSGallery Respository to trusted'\\nTry {\\n    Set-PSRepository -Name 'PSGallery' -InstallationPolicy 'Trusted' -ErrorAction Stop\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to set PSGallery Respository to trusted $_\\\"\\n    Exit 1\\n}\\n\\nWrite-Output 'Installing the needed Powershell DSC modules for this Quick Start'\\nForeach ($Module in $Modules) {\\n    Try {\\n        Install-Module -Name $Module.Name -RequiredVersion $Module.Version -ErrorAction Stop\\n    } Catch [System.Exception] {\\n        Write-Output \\\"Failed to Import Modules $_\\\"\\n        Exit 1\\n    }\\n} \"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "4a96cfbf-9063-44b5-bb20-ada8bd7f2b68"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"CommandId\":\"4a96cfbf-9063-44b5-bb20-ada8bd7f2b68\"}"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "af264164-fccc-4138-bd50-9515f014cf76",

​                "OverriddenParameters": {},

​                "NextStep": "configureInstance",

​                "ValidNextSteps": [

​                    "configureInstance"

​                ]

​            },

​            {

​                "StepName": "configureInstance",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T15:02:18.730000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:03:07.554000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\",\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\nNew-VolumeFromRawDisk\\nInvoke-PreConfig\\nInvoke-LcmConfig\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "0a18d6b7-e1b0-4482-847e-3441e16244a1"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"CommandId\":\"0a18d6b7-e1b0-4482-847e-3441e16244a1\"}"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "dbb27cd7-66d4-4bec-a59d-45dba0efcecc",

​                "OverriddenParameters": {},

​                "NextStep": "configureDc1Mof",

​                "ValidNextSteps": [

​                    "configureDc1Mof"

​                ]

​            },

​            {

​                "StepName": "configureDc1Mof",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T15:03:07.756000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:05:11.913000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\n$EniConfig = Get-EniConfig\\n$DaSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM'\\n$RmSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:RestoreModeSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-53GwA9'\\n$AltSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B'\\nSet-DscConfiguration -AltAdminCredentials $AltSecret.Credentials -AltAdminUserName $AltSecret.Username -DaCredentials $DaSecret.DomainCredentials -DeploymentType 'FirstDc' -DomainDNSName 'quicksilver.aws.dev' -DomainNetBIOSName 'QUICKSILVER' -GatewayAddress $EniConfig.GatewayAddress -InstanceIP $EniConfig.IpAddress -InstanceNetBIOSName 'QUICKSILVERDC1' -LaCredentials $DaSecret.Credentials -MacAddress $EniConfig.MacAddress -RestoreModeCredentials $RmSecret.Credentials -SiteName 'us-east-1' -VPCCIDR '10.2.0.0/16'\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "ca54ee47-087f-4185-a08c-21fe94e51537"

​                    ],

​                    "Output": [

​                        "Getting the DSC encryption certificate thumbprint to secure the MOF file\r\nCreating configuration data block that has the certificate information for DSC configuration processing\r\nGenerating MOF file\r\n\r\n\r\n    Directory: C:\\AWSQuickstart\\ConfigInstance\r\n\r\n\r\nMode                 LastWriteTime         Length Name                                                                 \r\n----                 -------------         ------ ----                                                                 \r\n-a----         2/12/2025   8:05 PM          39128 LocalHost.mof                                                        \r\n\r\n\r\n"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting the DSC encryption certificate thumbprint to secure the MOF file\\r\\nCreating configuration data block that has the certificate information for DSC configuration processing\\r\\nGenerating MOF file\\r\\n\\r\\n\\r\\n    Directory: C:\\\\AWSQuickstart\\\\ConfigInstance\\r\\n\\r\\n\\r\\nMode                 LastWriteTime         Length Name                                                                 \\r\\n----                 -------------         ------ ----                                                                 \\r\\n-a----         2/12/2025   8:05 PM          39128 LocalHost.mof                                                        \\r\\n\\r\\n\\r\\n\",\"CommandId\":\"ca54ee47-087f-4185-a08c-21fe94e51537\"}"

​                    ],

​                    "ResponseCode": [

​                        "0"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "8ace0a90-78d5-435e-b398-847c7084fb05",

​                "OverriddenParameters": {},

​                "NextStep": "runDc1Mof",

​                "ValidNextSteps": [

​                    "runDc1Mof"

​                ]

​            },

​            {

​                "StepName": "runDc1Mof",

​                "Action": "aws:runCommand",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T15:05:12.112000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:16:33.228000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\nStart-DscConfiguration 'C:\\\\AWSQuickstart\\\\ConfigInstance' -Wait -Verbose -Force\\nInvoke-DscStatusCheck\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "3fcb05a4-7354-41fa-9f0b-b6c5936029f5"

​                    ],

​                    "Output": [

​                        "VERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = \r\nSendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = \r\nroot/Microsoft/Windows/DesiredStateConfiguration'.\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-TFEKDJ4 with user sid S-1-5-18.\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Set      ]\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Resource ]  [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nTesting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nFinding network adapter matching search criteria.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nnetwork adapter Name 'Ethernet 3' does not match the adapter 'Primary' that was found. Rename required.\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ End    Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]  in 1.3000 seconds.\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Set      ]  [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \r\nSetting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\n---Output truncated---"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"VERBOSE: Perform operation \\u0027Invoke CimMethod\\u0027 with following parameters, \\u0027\\u0027methodName\\u0027 \\u003d \\r\\nSendConfigurationApply,\\u0027className\\u0027 \\u003d MSFT_DSCLocalConfigurationManager,\\u0027namespaceName\\u0027 \\u003d \\r\\nroot/Microsoft/Windows/DesiredStateConfiguration\\u0027.\\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-TFEKDJ4 with user sid S-1-5-18.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Set      ]\\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Resource ]  [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nTesting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nFinding network adapter matching search criteria.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nnetwork adapter Name \\u0027Ethernet 3\\u0027 does not match the adapter \\u0027Primary\\u0027 that was found. Rename required.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ End    Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]  in 1.3000 seconds.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]: LCM:  [ Start  Set      ]  [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \\r\\nSetting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-TFEKDJ4]:                            [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\\n---Output truncated---\",\"CommandId\":\"3fcb05a4-7354-41fa-9f0b-b6c5936029f5\"}"

​                    ],

​                    "ResponseCode": [

​                        "0"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "41ae2634-4372-4909-a140-a271ee3c1672",

​                "OverriddenParameters": {},

​                "NextStep": "configureDc2Mof",

​                "ValidNextSteps": [

​                    "configureDc2Mof"

​                ]

​            },

​            {

​                "StepName": "configureDc2Mof",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T15:16:33.433000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:18:23.760000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\n$EniConfig = Get-EniConfig\\n$DaSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM'\\n$RmSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:RestoreModeSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-53GwA9'\\nSet-DscConfiguration -DaCredentials $DaSecret.DomainCredentials -DeploymentType 'SecondaryDC' -DomainDNSName 'quicksilver.aws.dev' -DomainNetBIOSName 'QUICKSILVER' -ExistingDcIP01 '10.2.0.10' -GatewayAddress $EniConfig.GatewayAddress -InstanceIP $EniConfig.IpAddress -InstanceIPDns $EniConfig.DnsIpAddress -InstanceNetBIOSName 'QUICKSILVERDC2' -MacAddress $EniConfig.MacAddress -RestoreModeCredentials $RmSecret.Credentials\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "4b7e797a-bc54-479c-b0ba-ccb0497390eb"

​                    ],

​                    "Output": [

​                        "Getting the DSC encryption certificate thumbprint to secure the MOF file\r\nCreating configuration data block that has the certificate information for DSC configuration processing\r\nGenerating MOF file\r\n\r\n\r\n    Directory: C:\\AWSQuickstart\\ConfigInstance\r\n\r\n\r\nMode                 LastWriteTime         Length Name                                                                 \r\n----                 -------------         ------ ----                                                                 \r\n-a----         2/12/2025   8:18 PM          21876 LocalHost.mof                                                        \r\n\r\n\r\n"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting the DSC encryption certificate thumbprint to secure the MOF file\\r\\nCreating configuration data block that has the certificate information for DSC configuration processing\\r\\nGenerating MOF file\\r\\n\\r\\n\\r\\n    Directory: C:\\\\AWSQuickstart\\\\ConfigInstance\\r\\n\\r\\n\\r\\nMode                 LastWriteTime         Length Name                                                                 \\r\\n----                 -------------         ------ ----                                                                 \\r\\n-a----         2/12/2025   8:18 PM          21876 LocalHost.mof                                                        \\r\\n\\r\\n\\r\\n\",\"CommandId\":\"4b7e797a-bc54-479c-b0ba-ccb0497390eb\"}"

​                    ],

​                    "ResponseCode": [

​                        "0"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "4d1ffa5c-e33a-4e89-9ba2-70d08994765b",

​                "OverriddenParameters": {},

​                "NextStep": "runDc2Mof",

​                "ValidNextSteps": [

​                    "runDc2Mof"

​                ]

​            },

​            {

​                "StepName": "runDc2Mof",

​                "Action": "aws:runCommand",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T15:18:23.972000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:31:25.517000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\nStart-DscConfiguration 'C:\\\\AWSQuickstart\\\\ConfigInstance' -Wait -Verbose -Force\\nInvoke-DscStatusCheck\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "e1dd8c76-c1f6-4313-96db-9c59e35d608f"

​                    ],

​                    "Output": [

​                        "VERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = \r\nSendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = \r\nroot/Microsoft/Windows/DesiredStateConfiguration'.\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-1V6GANT with user sid S-1-5-18.\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Set      ]\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Resource ]  [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nTesting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nFinding network adapter matching search criteria.\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the pa\n---Output truncated---\n----------ERROR-------\nComputer 'EC2AMAZ-1V6GANT' was successfully joined to the new domain 'quicksilver.aws.dev', but renaming it to \r\n'QUICKSILVERDC2' failed with the following error message: The directory service is busy.\r\n    + CategoryInfo          : OperationStopped: (EC2AMAZ-1V6GANT:) [], CimException\r\n    + FullyQualifiedErrorId : FailToRenameAfterJoinDomain,Microsoft.PowerShell.Commands.AddComputerCommand\r\n    + PSComputerName        : LocalHost\r\n \r\nThe PowerShell DSC resource '[Computer]JoinDomain' with SourceInfo \r\n'C:\\AWSQuickstart\\Module-AD\\Module-AD.psm1::490::21::Computer' threw one or more non-terminating errors while running \r\nthe Set-TargetResource functionality. These errors are logged to the ETW channel called \r\nMicrosoft-Windows-DSC/Operational. Refer to this channel for more details.\r\n    + CategoryInfo          : InvalidOperation: (:) [], CimException\r\n    + FullyQualifiedErrorId : NonTerminatingErrorFromProvider\r\n    + PSComputerName        : LocalHost\r\n \r\nThe SendConfigurationApply function did not succeed.\r\n    + CategoryInfo          : NotSpecified: (root/Microsoft/...gurationManager:String) [], CimException\r\n    + FullyQualifiedErrorId : MI RESULT 1\r\n    + PSComputerName        : LocalHost\r\n \r\n"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"VERBOSE: Perform operation \\u0027Invoke CimMethod\\u0027 with following parameters, \\u0027\\u0027methodName\\u0027 \\u003d \\r\\nSendConfigurationApply,\\u0027className\\u0027 \\u003d MSFT_DSCLocalConfigurationManager,\\u0027namespaceName\\u0027 \\u003d \\r\\nroot/Microsoft/Windows/DesiredStateConfiguration\\u0027.\\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-1V6GANT with user sid S-1-5-18.\\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Set      ]\\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Resource ]  [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-1V6GANT]: LCM:  [ Start  Test     ]  [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nTesting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nFinding network adapter matching search criteria.\\nVERBOSE: [EC2AMAZ-1V6GANT]:                            [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the pa\\n---Output truncated---\\n----------ERROR-------\\nComputer \\u0027EC2AMAZ-1V6GANT\\u0027 was successfully joined to the new domain \\u0027quicksilver.aws.dev\\u0027, but renaming it to \\r\\n\\u0027QUICKSILVERDC2\\u0027 failed with the following error message: The directory service is busy.\\r\\n    + CategoryInfo          : OperationStopped: (EC2AMAZ-1V6GANT:) [], CimException\\r\\n    + FullyQualifiedErrorId : FailToRenameAfterJoinDomain,Microsoft.PowerShell.Commands.AddComputerCommand\\r\\n    + PSComputerName        : LocalHost\\r\\n \\r\\nThe PowerShell DSC resource \\u0027[Computer]JoinDomain\\u0027 with SourceInfo \\r\\n\\u0027C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1::490::21::Computer\\u0027 threw one or more non-terminating errors while running \\r\\nthe Set-TargetResource functionality. These errors are logged to the ETW channel called \\r\\nMicrosoft-Windows-DSC/Operational. Refer to this channel for more details.\\r\\n    + CategoryInfo          : InvalidOperation: (:) [], CimException\\r\\n    + FullyQualifiedErrorId : NonTerminatingErrorFromProvider\\r\\n    + PSComputerName        : LocalHost\\r\\n \\r\\nThe SendConfigurationApply function did not succeed.\\r\\n    + CategoryInfo          : NotSpecified: (root/Microsoft/...gurationManager:String) [], CimException\\r\\n    + FullyQualifiedErrorId : MI RESULT 1\\r\\n    + PSComputerName        : LocalHost\\r\\n \\r\\n\",\"CommandId\":\"e1dd8c76-c1f6-4313-96db-9c59e35d608f\"}"

​                    ],

​                    "ResponseCode": [

​                        "0"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "ee29bb08-ee64-497c-bf22-9c4e3bd65947",

​                "OverriddenParameters": {},

​                "NextStep": "DisableFW",

​                "ValidNextSteps": [

​                    "DisableFW"

​                ]

​            },

​            {

​                "StepName": "DisableFW",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T15:31:25.702000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:31:36.002000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\",\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Get-NetFirewallProfile -ErrorAction Stop | Set-NetFirewallProfile -Enabled False -ErrorAction Stop\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to disable Windows Firewall $_\\\"\\n    Exit 1\\n}\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "e4892b9b-36ee-45de-8cd7-962ed4300c3d"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"CommandId\":\"e4892b9b-36ee-45de-8cd7-962ed4300c3d\"}"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "c3bc5c66-7341-4673-bd8a-95345f62a177",

​                "OverriddenParameters": {},

​                "NextStep": "DnsConfig",

​                "ValidNextSteps": [

​                    "DnsConfig"

​                ]

​            },

​            {

​                "StepName": "DnsConfig",

​                "Action": "aws:runCommand",

​                "OnFailure": "step:signalfailure",

​                "ExecutionStartTime": "2025-02-12T15:31:36.231000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:33:54.595000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\n$DaSecret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM'\\nSet-DnsDscConfiguration -AD1Deployment -ADServer1NetBIOSName 'QUICKSILVERDC1' -ADServer2NetBIOSName 'QUICKSILVERDC2' -ADServer1PrivateIP '10.2.0.10' -ADServer2PrivateIP '10.2.1.10' -DomainDNSName 'quicksilver.aws.dev' -DaCredentials $DaSecret.Credentials -VPCCIDR '10.2.0.0/16'\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "44de1b0c-6244-4e4e-99a0-3bb9187d26fa"

​                    ],

​                    "Output": [

​                        "Formatting Computer names as FQDN\r\nSetting Cim Sessions for Each Host\r\nVERBOSE: Operation '' complete.\nVERBOSE: Operation '' complete.\nGenerating MOF File\r\n\r\n\r\n    Directory: C:\\AWSQuickstart\\DnsConfig\r\n\r\n\r\nMode                 LastWriteTime         Length Name                                                                 \r\n----                 -------------         ------ ----                                                                 \r\n-a----         2/12/2025   8:33 PM           5334 QUICKSILVERDC1.quicksilver.aws.dev.mof                               \r\n-a----         2/12/2025   8:33 PM           3148 QUICKSILVERDC2.quicksilver.aws.dev.mof                               \r\nProcessing Configuration from Script utilizing pre-created Cim Sessions\r\nVERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = \r\nSendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = \r\nroot/Microsoft/Windows/DesiredStateConfiguration'.\nVERBOSE: An LCM method call arrived from computer QUICKSILVERDC1 with user sid \r\nS-1-5-21-2013733642-4141054244-2028022997-500.\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Set      ]\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Resource ]  [[DnsServerAddress]DnsServerAddress]\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Test     ]  [[DnsServerAddress]DnsServerAddress]\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Test-TargetResource: \r\nChecking the DNS server addresses.\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] \r\nGet-DnsClientServerStaticAddress: Getting staticly assigned DNS server IPv4 address for interface alias 'Primary'.\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] \r\nGet-DnsClientServerStaticAddress: Statically assigned DNS server IPv4 address for interface alias 'Primary' is \r\n'127.0.0.1,169.254.169.253'.\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Test-TargetResource: DNS \r\nserver addresses are not correct. Expected \"10.2.1.10,10.2.0.10,127.0.0.1\", actual \"127.0.0.1,169.254.169.253\".\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ End    Test     ]  [[DnsServerAddress]DnsServerAddress]  in 1.1880 seconds.\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Set      ]  [[DnsServerAddress]DnsServerAddress]\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Se\n---Output truncated---"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Formatting Computer names as FQDN\\r\\nSetting Cim Sessions for Each Host\\r\\nVERBOSE: Operation \\u0027\\u0027 complete.\\nVERBOSE: Operation \\u0027\\u0027 complete.\\nGenerating MOF File\\r\\n\\r\\n\\r\\n    Directory: C:\\\\AWSQuickstart\\\\DnsConfig\\r\\n\\r\\n\\r\\nMode                 LastWriteTime         Length Name                                                                 \\r\\n----                 -------------         ------ ----                                                                 \\r\\n-a----         2/12/2025   8:33 PM           5334 QUICKSILVERDC1.quicksilver.aws.dev.mof                               \\r\\n-a----         2/12/2025   8:33 PM           3148 QUICKSILVERDC2.quicksilver.aws.dev.mof                               \\r\\nProcessing Configuration from Script utilizing pre-created Cim Sessions\\r\\nVERBOSE: Perform operation \\u0027Invoke CimMethod\\u0027 with following parameters, \\u0027\\u0027methodName\\u0027 \\u003d \\r\\nSendConfigurationApply,\\u0027className\\u0027 \\u003d MSFT_DSCLocalConfigurationManager,\\u0027namespaceName\\u0027 \\u003d \\r\\nroot/Microsoft/Windows/DesiredStateConfiguration\\u0027.\\nVERBOSE: An LCM method call arrived from computer QUICKSILVERDC1 with user sid \\r\\nS-1-5-21-2013733642-4141054244-2028022997-500.\\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Set      ]\\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Resource ]  [[DnsServerAddress]DnsServerAddress]\\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Test     ]  [[DnsServerAddress]DnsServerAddress]\\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Test-TargetResource: \\r\\nChecking the DNS server addresses.\\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] \\r\\nGet-DnsClientServerStaticAddress: Getting staticly assigned DNS server IPv4 address for interface alias \\u0027Primary\\u0027.\\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] \\r\\nGet-DnsClientServerStaticAddress: Statically assigned DNS server IPv4 address for interface alias \\u0027Primary\\u0027 is \\r\\n\\u0027127.0.0.1,169.254.169.253\\u0027.\\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Test-TargetResource: DNS \\r\\nserver addresses are not correct. Expected \\\"10.2.1.10,10.2.0.10,127.0.0.1\\\", actual \\\"127.0.0.1,169.254.169.253\\\".\\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ End    Test     ]  [[DnsServerAddress]DnsServerAddress]  in 1.1880 seconds.\\nVERBOSE: [QUICKSILVERDC1]: LCM:  [ Start  Set      ]  [[DnsServerAddress]DnsServerAddress]\\nVERBOSE: [QUICKSILVERDC1]:                            [[DnsServerAddress]DnsServerAddress] Se\\n---Output truncated---\",\"CommandId\":\"44de1b0c-6244-4e4e-99a0-3bb9187d26fa\"}"

​                    ],

​                    "ResponseCode": [

​                        "0"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "1dc53035-ee6b-4539-ac73-cae736af880e",

​                "OverriddenParameters": {},

​                "NextStep": "PostConfig",

​                "ValidNextSteps": [

​                    "PostConfig"

​                ]

​            },

​            {

​                "StepName": "PostConfig",

​                "Action": "aws:runCommand",

​                "ExecutionStartTime": "2025-02-12T15:33:54.822000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:35:39.889000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"cloudWatchOutputEnabled\":true}",

​                    "DocumentName": "\"AWS-RunPowerShellScript\"",

​                    "InstanceIds": "[\"i-06aafc571abe82f37\",\"i-07da7ede6f65300df\"]",

​                    "Parameters": "{\"commands\":\"Try {\\n    Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-AD\\\\Module-AD.psm1' -Force\\n} Catch [System.Exception] {\\n    Write-Output \\\"Failed to import AD PS Module $_\\\"\\n    Exit 1\\n}\\nSet-PostPromoConfig -S3BucketName 'quicksilver-aws-ia' -S3BucketRegion 'us-east-1' -S3KeyPrefix 'cfn-ps-microsoft-activedirectory/' -CreateDefaultOUs 'No' -TombstoneLifetime '180' -DeletedObjectLifetime '180'\\n\\nIf ('false' -eq 'true') {\\n  Set-DcAuditDscConfiguration\\n  Set-LogsAndMetricsCollection -Role 'DomainController' -Stackname 'ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver'\\n}\\n\\nInvoke-Cleanup -VPCCIDR '10.2.0.0/16'\"}"

​                },

​                "Outputs": {

​                    "CommandId": [

​                        "3c9ff415-3bb8-44c1-a2a3-16aaf5debdf2"

​                    ],

​                    "OutputPayload": [

​                        "{\"Status\":\"Success\",\"CommandId\":\"3c9ff415-3bb8-44c1-a2a3-16aaf5debdf2\"}"

​                    ],

​                    "Status": [

​                        "Success"

​                    ]

​                },

​                "StepExecutionId": "277dfe02-b33d-4f2b-984a-321bdf6753e8",

​                "OverriddenParameters": {},

​                "ValidNextSteps": [

​                    "configureIMDSv2dc1"

​                ]

​            },

​            {

​                "StepName": "configureIMDSv2dc1",

​                "Action": "aws:executeAwsApi",

​                "TimeoutSeconds": 300,

​                "OnFailure": "step:signalfailure",

​                "MaxAttempts": 3,

​                "ExecutionStartTime": "2025-02-12T15:35:40.120000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:35:40.761000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"ModifyInstanceMetadataOptions\"",

​                    "HttpEndpoint": "\"enabled\"",

​                    "HttpTokens": "\"required\"",

​                    "InstanceId": "\"i-07da7ede6f65300df\"",

​                    "Service": "\"ec2\""

​                },

​                "Outputs": {},

​                "StepExecutionId": "00925f8c-c05c-40de-9e1f-ae631db7ce43",

​                "OverriddenParameters": {},

​                "IsEnd": false,

​                "IsCritical": true,

​                "ValidNextSteps": [

​                    "configureIMDSv2dc2"

​                ]

​            },

​            {

​                "StepName": "configureIMDSv2dc2",

​                "Action": "aws:executeAwsApi",

​                "TimeoutSeconds": 300,

​                "OnFailure": "step:signalfailure",

​                "MaxAttempts": 3,

​                "ExecutionStartTime": "2025-02-12T15:35:40.978000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:35:41.609000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"ModifyInstanceMetadataOptions\"",

​                    "HttpEndpoint": "\"enabled\"",

​                    "HttpTokens": "\"required\"",

​                    "InstanceId": "\"i-06aafc571abe82f37\"",

​                    "Service": "\"ec2\""

​                },

​                "Outputs": {},

​                "StepExecutionId": "460a07ad-3bba-40a8-a815-7289c9c63eac",

​                "OverriddenParameters": {},

​                "IsEnd": false,

​                "IsCritical": true,

​                "ValidNextSteps": [

​                    "CFNSignalEnd"

​                ]

​            },

​            {

​                "StepName": "CFNSignalEnd",

​                "Action": "aws:branch",

​                "ExecutionStartTime": "2025-02-12T15:35:41.808000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:35:41.939000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Choices": "[{\"Not\":{\"StringEquals\":\"\",\"Variable\":\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\"},\"NextStep\":\"signalsuccess\"},{\"StringEquals\":\"\",\"Variable\":\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\",\"NextStep\":\"sleepend\"}]"

​                },

​                "Outputs": {

​                    "NextStep": [

​                        "signalsuccess"

​                    ],

​                    "OutputPayload": [

​                        "{\"NextStep\":\"signalsuccess\"}"

​                    ]

​                },

​                "StepExecutionId": "10b29593-2bef-4050-bcf6-eff240d36329",

​                "OverriddenParameters": {},

​                "ValidNextSteps": [

​                    "signalsuccess"

​                ]

​            },

​            {

​                "StepName": "signalsuccess",

​                "Action": "aws:executeAwsApi",

​                "ExecutionStartTime": "2025-02-12T15:35:42.151000-05:00",

​                "ExecutionEndTime": "2025-02-12T15:35:42.448000-05:00",

​                "StepStatus": "Success",

​                "Inputs": {

​                    "Api": "\"SignalResource\"",

​                    "LogicalResourceId": "\"DomainController2\"",

​                    "Service": "\"cloudformation\"",

​                    "StackName": "\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver\"",

​                    "Status": "\"SUCCESS\"",

​                    "UniqueId": "\"i-06aafc571abe82f37\""

​                },

​                "Outputs": {},

​                "StepExecutionId": "2273300e-bdf6-4417-a02a-88b5fab7f743",

​                "OverriddenParameters": {},

​                "IsEnd": true

​            },

​            {

​                "StepName": "sleepend",

​                "Action": "aws:sleep",

​                "StepStatus": "Pending",

​                "Inputs": {},

​                "StepExecutionId": "94d36e08-789c-4d9a-b5f3-00836ba5201d",

​                "OverriddenParameters": {},

​                "IsEnd": true

​            },

​            {

​                "StepName": "signalfailure",

​                "Action": "aws:executeAwsApi",

​                "StepStatus": "Pending",

​                "Inputs": {},

​                "StepExecutionId": "37c016f5-c828-48e8-8add-9db07028badb",

​                "OverriddenParameters": {}

​            }

​        ],

​        "StepExecutionsTruncated": false,

​        "Parameters": {

​            "ADAdminSecParamName": [

​                "arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAdministratorSecret-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-MfftSM"

​            ],

​            "ADAltUserSecParamName": [

​                "arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B"

​            ],

​            "ADServer1NetBIOSName": [

​                "QUICKSILVERDC1"

​            ],

​            "ADServer1PrivateIP": [

​                "10.2.0.10"

​            ],

​            "ADServer2NetBIOSName": [

​                "QUICKSILVERDC2"

​            ],

​            "ADServer2PrivateIP": [

​                "10.2.1.10"

​            ],

​            "CreateDefaultOUs": [

​                "No"

​            ],

​            "DeletedObjectLifetime": [

​                "180"

​            ],

​            "DomainDNSName": [

​                "quicksilver.aws.dev"

​            ],

​            "DomainNetBIOSName": [

​                "QUICKSILVER"

​            ],

​            "EnableAdvancedAudtingandMetrics": [

​                "false"

​            ],

​            "QSS3BucketName": [

​                "quicksilver-aws-ia"

​            ],

​            "QSS3BucketRegion": [

​                "us-east-1"

​            ],

​            "QSS3KeyPrefix": [

​                "cfn-ps-microsoft-activedirectory/"

​            ],

​            "RestoreModeSecParamName": [

​                "arn:aws:secretsmanager:us-east-1:396913736034:secret:RestoreModeSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-53GwA9"

​            ],

​            "StackName": [

​                "ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver"

​            ],

​            "TombstoneLifetime": [

​                "180"

​            ],

​            "URLSuffix": [

​                "amazonaws.com"

​            ],

​            "VPCCIDR": [

​                "10.2.0.0/16"

​            ]

​        },

​        "Outputs": {},

​        "Mode": "Auto",

​        "ExecutedBy": "arn:aws:sts::396913736034:assumed-role/ActiveDirectory-SharedServices-10-2-0--ADServerRole-DR6gnZgCmoaX/i-06aafc571abe82f37",

​        "Targets": [],

​        "ResolvedTargets": {

​            "ParameterValues": [],

​            "Truncated": false

​        }

​    }

}



---------------------------------------------------------------------------------------------------------------------------------------------------------

#### aws ssm get-automation-execution --automation-execution-id 89860f94-2719-4634-a8b3-af8406b3a7d8 --region us-east-1 > ad_automation_details.json

{

  "AutomationExecution": {

​    "AutomationExecutionId": "89860f94-2719-4634-a8b3-af8406b3a7d8",

​    "DocumentName": "ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G-AWSQuickstartCA-22VfwSPFVdjw",

​    "DocumentVersion": "1",

​    "ExecutionStartTime": "2025-02-12T15:43:02.612000-05:00",

​    "ExecutionEndTime": "2025-02-12T16:20:21.193000-05:00",

​    "AutomationExecutionStatus": "Success",

​    "StepExecutions": [

​      {

​        "StepName": "CaInstanceIds",

​        "Action": "aws:executeAwsApi",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:43:03.047000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:43:03.600000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "Api": "\"DescribeInstances\"",

​          "Filters": "[{\"Values\":[\"QUICKSILVERCA1\",\"QUICKSILVERCA2\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​          "Service": "\"ec2\""

​        },

​        "Outputs": {

​          "InstanceIds": [

​            "i-0cd0026f159056c20",

​            "i-0c705b20f40469720"

​          ]

​        },

​        "StepExecutionId": "433f606d-32e8-474e-b299-85f3915d51be",

​        "OverriddenParameters": {},

​        "NextStep": "OrcaInstanceId",

​        "ValidNextSteps": [

​          "OrcaInstanceId"

​        ]

​      },

​      {

​        "StepName": "OrcaInstanceId",

​        "Action": "aws:executeAwsApi",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:43:03.819000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:43:04.416000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "Api": "\"DescribeInstances\"",

​          "Filters": "[{\"Values\":[\"QUICKSILVERCA1\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​          "Service": "\"ec2\""

​        },

​        "Outputs": {

​          "InstanceId": [

​            "i-0cd0026f159056c20"

​          ]

​        },

​        "StepExecutionId": "f2ed6583-9759-4408-bd89-31f3df8b4bbf",

​        "OverriddenParameters": {},

​        "NextStep": "SubCaInstanceId",

​        "ValidNextSteps": [

​          "SubCaInstanceId"

​        ]

​      },

​      {

​        "StepName": "SubCaInstanceId",

​        "Action": "aws:executeAwsApi",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:43:04.634000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:43:05.140000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "Api": "\"DescribeInstances\"",

​          "Filters": "[{\"Values\":[\"QUICKSILVERCA2\"],\"Name\":\"tag:Name\"},{\"Values\":[\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\"],\"Name\":\"tag:aws:cloudformation:stack-name\"},{\"Values\":[\"running\"],\"Name\":\"instance-state-name\"}]",

​          "Service": "\"ec2\""

​        },

​        "Outputs": {

​          "InstanceId": [

​            "i-0c705b20f40469720"

​          ]

​        },

​        "StepExecutionId": "be255e1b-4aaa-4d9b-8f06-f2bad8a0ed66",

​        "OverriddenParameters": {},

​        "NextStep": "intializeInstances",

​        "ValidNextSteps": [

​          "intializeInstances"

​        ]

​      },

​      {

​        "StepName": "intializeInstances",

​        "Action": "aws:runCommand",

​        "ExecutionStartTime": "2025-02-12T15:43:05.319000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:46:27.375000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\",\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12\\n\\n$S3BucketName = 'quicksilver-aws-ia'\\n$S3KeyPrefix = 'cfn-ps-microsoft-activedirectory/submodules/cfn-ps-microsoft-pki/'\\n$S3BucketRegion = 'us-east-1'\\n\\n$CustomModules = @(\\n  'Module-Pki.psd1',\\n  'Module-Pki.psm1'\\n)\\n\\n$Modules = @(\\n  @{\\n    Name  = 'NetworkingDsc'\\n    Version = '8.2.0'\\n  },\\n  @{\\n    Name  = 'ComputerManagementDsc'\\n    Version = '8.5.0'\\n  },\\n  @{\\n    Name = 'AuditPolicyDsc'\\n    Version = '1.4.0.0'\\n  }\\n)\\n\\nWrite-Output 'Creating AWSQuickstart Directory'\\nTry {\\n  $Null = New-Item -Path 'C:\\\\AWSQuickstart\\\\Module-Pki' -ItemType 'Directory' -ErrorAction Stop\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to create AWSQuickstart directory $_\\\"\\n  Exit 1\\n}\\n\\n$S3KeyPrefix = $S3KeyPrefix.Substring(0,$S3KeyPrefix.Length -1)\\nWrite-Output 'Downloading Pki PowerShell Module'\\nForeach ($CustomModule in $CustomModules) {\\n  Try {\\n    $Null = Read-S3Object -BucketName $S3BucketName -Key \\\"$($S3KeyPrefix)/scripts/Modules/Module-Pki/$CustomModule\\\" -File \\\"C:\\\\AWSQuickstart\\\\Module-Pki\\\\$CustomModule\\\" -Region $S3BucketRegion\\n  } Catch [System.Exception] {\\n    Write-Output \\\"Failed to read and download $CustomModule.Name from S3 $_\\\"\\n    Exit 1\\n  }\\n}\\n\\nWrite-Output 'Installing NuGet Package Provider'\\nTry {\\n  $Null = Install-PackageProvider -Name 'NuGet' -MinimumVersion '2.8.5' -Force -ErrorAction Stop\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to install NuGet Package Provider $_\\\"\\n  Exit 1\\n}\\n\\nWrite-Output 'Setting PSGallery Respository to trusted'\\nTry {\\n  Set-PSRepository -Name 'PSGallery' -InstallationPolicy 'Trusted' -ErrorAction Stop\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to set PSGallery Respository to trusted $_\\\"\\n  Exit 1\\n}\\n\\nWrite-Output 'Installing the needed Powershell DSC modules for this Quick Start'\\nForeach ($Module in $Modules) {\\n  Try {\\n    Install-Module -Name $Module.Name -RequiredVersion $Module.Version -ErrorAction Stop\\n  } Catch [System.Exception] {\\n    Write-Output \\\"Failed to Import Modules $_\\\"\\n    Exit 1\\n  }\\n} \"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "53a1ae1f-bde0-41ef-8b8d-cfb737bdf7ac"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"CommandId\":\"53a1ae1f-bde0-41ef-8b8d-cfb737bdf7ac\"}"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "81f06f34-29e5-4e50-8109-f95cd5fbd2f1",

​        "OverriddenParameters": {},

​        "NextStep": "configureInstances",

​        "ValidNextSteps": [

​          "configureInstances"

​        ]

​      },

​      {

​        "StepName": "configureInstances",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:46:27.564000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:47:30.997000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\",\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\nNew-VolumeFromRawDisk\\nInvoke-PreConfig\\nInvoke-LcmConfig\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "45be52c0-8448-4e84-b613-3fa618f47e3b"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"CommandId\":\"45be52c0-8448-4e84-b613-3fa618f47e3b\"}"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "b9e45dec-480a-49ed-976b-b086d37f6611",

​        "OverriddenParameters": {},

​        "NextStep": "configureOrCaMof",

​        "ValidNextSteps": [

​          "configureOrCaMof"

​        ]

​      },

​      {

​        "StepName": "configureOrCaMof",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:47:31.194000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:48:55.189000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$EniConfig = Get-EniConfig\\nSet-DscConfiguration -CaType Offline -DomainController1IP '10.2.0.10' -DomainController2IP '10.2.1.10' -GatewayAddress $EniConfig.GatewayAddress -InstanceNetBIOSName 'QUICKSILVERCA1' -IpAddress $EniConfig.IpAddress -MacAddress $EniConfig.MacAddress\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "0a54e606-da67-43ee-b414-b786705e7a9e"

​          ],

​          "Output": [

​            "Getting the DSC encryption certificate thumbprint to secure the MOF file\r\nCreating configuration data block that has the certificate information for DSC configuration processing\r\nGenerating MOF file\r\n\r\n\r\n  Directory: C:\\AWSQuickstart\\ConfigInstance\r\n\r\n\r\nMode         LastWriteTime     Length Name                                 \r\n----         -------------     ------ ----                                 \r\n-a----     2/12/2025  8:48 PM      8116 LocalHost.mof                            \r\n\r\n\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting the DSC encryption certificate thumbprint to secure the MOF file\\r\\nCreating configuration data block that has the certificate information for DSC configuration processing\\r\\nGenerating MOF file\\r\\n\\r\\n\\r\\n  Directory: C:\\\\AWSQuickstart\\\\ConfigInstance\\r\\n\\r\\n\\r\\nMode         LastWriteTime     Length Name                                 \\r\\n----         -------------     ------ ----                                 \\r\\n-a----     2/12/2025  8:48 PM      8116 LocalHost.mof                            \\r\\n\\r\\n\\r\\n\",\"CommandId\":\"0a54e606-da67-43ee-b414-b786705e7a9e\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "e321b12e-9edd-4d93-9a7c-08e602b5dc3c",

​        "OverriddenParameters": {},

​        "NextStep": "runOrCaMof",

​        "ValidNextSteps": [

​          "runOrCaMof"

​        ]

​      },

​      {

​        "StepName": "runOrCaMof",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:48:55.390000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:55:27.517000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\nStart-DscConfiguration 'C:\\\\AWSQuickstart\\\\ConfigInstance' -Wait -Verbose -Force\\nInvoke-DscStatusCheck\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "9c5a41d1-d793-45c2-9137-94e81fc2c785"

​          ],

​          "Output": [

​            "VERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = \r\nSendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = \r\nroot/Microsoft/Windows/DesiredStateConfiguration'.\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-4FR69MV with user sid S-1-5-18.\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Set   ]\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Resource ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Test   ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nTesting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nFinding network adapter matching search criteria.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nnetwork adapter Name 'Ethernet 3' does not match the adapter 'Primary' that was found. Rename required.\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ End  Test   ] [[NetAdapterName]RenameNetAdapterPrimary] in 2.0730 seconds.\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Set   ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \r\nSetting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\n---Output truncated---"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"VERBOSE: Perform operation \\u0027Invoke CimMethod\\u0027 with following parameters, \\u0027\\u0027methodName\\u0027 \\u003d \\r\\nSendConfigurationApply,\\u0027className\\u0027 \\u003d MSFT_DSCLocalConfigurationManager,\\u0027namespaceName\\u0027 \\u003d \\r\\nroot/Microsoft/Windows/DesiredStateConfiguration\\u0027.\\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-4FR69MV with user sid S-1-5-18.\\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Set   ]\\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Resource ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Test   ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nTesting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nFinding network adapter matching search criteria.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nnetwork adapter Name \\u0027Ethernet 3\\u0027 does not match the adapter \\u0027Primary\\u0027 that was found. Rename required.\\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ End  Test   ] [[NetAdapterName]RenameNetAdapterPrimary] in 2.0730 seconds.\\nVERBOSE: [EC2AMAZ-4FR69MV]: LCM: [ Start Set   ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \\r\\nSetting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-4FR69MV]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\\n---Output truncated---\",\"CommandId\":\"9c5a41d1-d793-45c2-9137-94e81fc2c785\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "7437f864-37ac-4b40-a8ae-b9af316ec6eb",

​        "OverriddenParameters": {},

​        "NextStep": "InstallOrCa",

​        "ValidNextSteps": [

​          "InstallOrCa"

​        ]

​      },

​      {

​        "StepName": "InstallOrCa",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:55:27.702000-05:00",

​        "ExecutionEndTime": "2025-02-12T15:57:53.519000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$Secret = Get-SecretInfo -Domain 'quicksilver.aws.dev' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B'\\nInvoke-TwoTierOrCaConfig -Credentials $Secret.Credentials -DirectoryType 'SelfManaged' -DomainDNSName 'quicksilver.aws.dev' -OrCaCommonName 'QUICKSILVERCA1' -OrCaHashAlgorithm 'SHA256' -OrCaKeyLength '2048' -OrCaValidityPeriodUnits '10' -S3CRLBucketName 'examplebucket' -SubCaServerNetBIOSName 'QUICKSILVERCA2' -UseS3ForCRL 'No'\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "0c96b84d-2f2e-46d8-812f-81b4542ca9ff"

​          ],

​          "Output": [

​            "Creating PKI directories\r\nCreating CAPolicy.inf\r\nInstalling Offline Root CA\r\nConfiguring CRL distro points\r\nConfiguring AIA distro points\r\nConfiguring Offline Root CA\r\nRestarting CA service\r\nPublishing CRL\r\nCopying CRL to PKI folder\r\nRestarting CA service\r\nCreating Update CRL Scheduled Task\r\nRunning CRL Scheduled Task\r\nRestarting CA service\r\nCreating PkiSysvolPSDrive\r\nCreating the PkiRootCA SYSVOL folder\r\nCopying CertEnroll contents to SYSVOL PkiRootCA folder\r\nRemoving PkiSysvolPSDrive\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Creating PKI directories\\r\\nCreating CAPolicy.inf\\r\\nInstalling Offline Root CA\\r\\nConfiguring CRL distro points\\r\\nConfiguring AIA distro points\\r\\nConfiguring Offline Root CA\\r\\nRestarting CA service\\r\\nPublishing CRL\\r\\nCopying CRL to PKI folder\\r\\nRestarting CA service\\r\\nCreating Update CRL Scheduled Task\\r\\nRunning CRL Scheduled Task\\r\\nRestarting CA service\\r\\nCreating PkiSysvolPSDrive\\r\\nCreating the PkiRootCA SYSVOL folder\\r\\nCopying CertEnroll contents to SYSVOL PkiRootCA folder\\r\\nRemoving PkiSysvolPSDrive\\r\\n\",\"CommandId\":\"0c96b84d-2f2e-46d8-812f-81b4542ca9ff\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "04a03cfc-4827-41fe-8e71-bdf78371029a",

​        "OverriddenParameters": {},

​        "NextStep": "configureSubCaMof",

​        "ValidNextSteps": [

​          "configureSubCaMof"

​        ]

​      },

​      {

​        "StepName": "configureSubCaMof",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T15:57:53.708000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:01:20.268000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$EniConfig = Get-EniConfig\\n$Secret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B'\\nSet-DscConfiguration -CaType Enterprise -Credentials $Secret.Credentials -DomainController1IP '10.2.0.10' -DomainController2IP '10.2.1.10' -DomainDNSName 'quicksilver.aws.dev' -GatewayAddress $EniConfig.GatewayAddress -InstanceNetBIOSName 'QUICKSILVERCA2' -IpAddress $EniConfig.IpAddress -MacAddress $EniConfig.MacAddress -UseS3ForCRL 'No'\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "000c4232-f5d5-4335-9fd0-66488db61220"

​          ],

​          "Output": [

​            "Getting the DSC encryption certificate thumbprint to secure the MOF file\r\nCreating configuration data block that has the certificate information for DSC configuration processing\r\nGenerating MOF file\r\n\r\n\r\n  Directory: C:\\AWSQuickstart\\ConfigInstance\r\n\r\n\r\nMode         LastWriteTime     Length Name                                 \r\n----         -------------     ------ ----                                 \r\n-a----     2/12/2025  9:01 PM     14414 LocalHost.mof                            \r\n\r\n\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting the DSC encryption certificate thumbprint to secure the MOF file\\r\\nCreating configuration data block that has the certificate information for DSC configuration processing\\r\\nGenerating MOF file\\r\\n\\r\\n\\r\\n  Directory: C:\\\\AWSQuickstart\\\\ConfigInstance\\r\\n\\r\\n\\r\\nMode         LastWriteTime     Length Name                                 \\r\\n----         -------------     ------ ----                                 \\r\\n-a----     2/12/2025  9:01 PM     14414 LocalHost.mof                            \\r\\n\\r\\n\\r\\n\",\"CommandId\":\"000c4232-f5d5-4335-9fd0-66488db61220\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "5d66c70c-e2c9-4a34-b804-ab8fb945051e",

​        "OverriddenParameters": {},

​        "NextStep": "runSubCaMof",

​        "ValidNextSteps": [

​          "runSubCaMof"

​        ]

​      },

​      {

​        "StepName": "runSubCaMof",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T16:01:20.481000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:09:24.675000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\nStart-DscConfiguration 'C:\\\\AWSQuickstart\\\\ConfigInstance' -Wait -Verbose -Force\\nInvoke-DscStatusCheck\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "00ffe0fc-31a6-42ea-961b-88aedf6f6dfe"

​          ],

​          "Output": [

​            "VERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = \r\nSendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = \r\nroot/Microsoft/Windows/DesiredStateConfiguration'.\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-T194Q02 with user sid S-1-5-18.\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Set   ]\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Resource ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Test   ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nTesting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nFinding network adapter matching search criteria.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \r\nnetwork adapter Name 'Ethernet 3' does not match the adapter 'Primary' that was found. Rename required.\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ End  Test   ] [[NetAdapterName]RenameNetAdapterPrimary] in 1.8790 seconds.\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Set   ] [[NetAdapterName]RenameNetAdapterPrimary]\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \r\nSetting the network adapter Name 'Primary'.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \r\nFinding network adapters matching the parameters.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\r\n network adapters were found matching the parameters.\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\n---Output truncated---"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"VERBOSE: Perform operation \\u0027Invoke CimMethod\\u0027 with following parameters, \\u0027\\u0027methodName\\u0027 \\u003d \\r\\nSendConfigurationApply,\\u0027className\\u0027 \\u003d MSFT_DSCLocalConfigurationManager,\\u0027namespaceName\\u0027 \\u003d \\r\\nroot/Microsoft/Windows/DesiredStateConfiguration\\u0027.\\nVERBOSE: An LCM method call arrived from computer EC2AMAZ-T194Q02 with user sid S-1-5-18.\\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Set   ]\\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Resource ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Test   ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nTesting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nFinding network adapter matching search criteria.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Test-TargetResource: \\r\\nnetwork adapter Name \\u0027Ethernet 3\\u0027 does not match the adapter \\u0027Primary\\u0027 that was found. Rename required.\\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ End  Test   ] [[NetAdapterName]RenameNetAdapterPrimary] in 1.8790 seconds.\\nVERBOSE: [EC2AMAZ-T194Q02]: LCM: [ Start Set   ] [[NetAdapterName]RenameNetAdapterPrimary]\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetResource: \\r\\nSetting the network adapter Name \\u0027Primary\\u0027.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: \\r\\nFinding network adapters matching the parameters.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Find-NetworkAdapter: 1\\r\\n network adapters were found matching the parameters.\\nVERBOSE: [EC2AMAZ-T194Q02]:              [[NetAdapterName]RenameNetAdapterPrimary] Set-TargetReso\\n---Output truncated---\",\"CommandId\":\"00ffe0fc-31a6-42ea-961b-88aedf6f6dfe\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "fd1ceaea-f55d-47a4-8c1c-27732392c72f",

​        "OverriddenParameters": {},

​        "NextStep": "InstallSubCa",

​        "ValidNextSteps": [

​          "InstallSubCa"

​        ]

​      },

​      {

​        "StepName": "InstallSubCa",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T16:09:24.877000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:12:55.957000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$Secret = Get-SecretInfo -Domain 'QUICKSILVER' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B'\\nInvoke-TwoTierSubCaInstall -Credentials $Secret.Credentials -DirectoryType 'SelfManaged' -S3CRLBucketName 'examplebucket' -SubCaCommonName 'QUICKSILVERCA2' -SubCaHashAlgorithm 'SHA256' -SubCaKeyLength '2048' -SubCaValidityPeriodUnits '5' -UseS3ForCRL 'No'\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "ca2f2435-d641-4f62-af07-67c2743ee53e"

​          ],

​          "Output": [

​            "Getting AD domain information\r\nGetting a Domain Controller to perform actions against\r\nAdding computer account to elevated permission group for install\r\nSleeping to ensure replication of group membership has completed\r\nClearing all SYSTEM Kerberos tickets\r\nCreating PKI CNAME record\r\nPKI CNAME record missing.\r\nCreating PKI folders\r\nSharing PKI folder\r\nCreating PKI IIS virtual directory\r\nSetting PKI IIS virtual directory requestFiltering\r\nSetting PKI IIS virtual directory directoryBrowse\r\nSetting PKI folder file system ACLs\r\nResetting IIS service\r\nCreating CAPolicy.inf\r\nCreating SubPkiSysvolPSDrive\r\nCreating the PkiSubCA SYSVOL folder\r\nCopying the SYSVOL PkiRootCA Contents to local folder\r\nPublishing Offline CA certificates and CRLs\r\nInstalling Subordinate CA\r\n\r\nErrorId ErrorString                                                  \r\n------- -----------                                                  \r\n  398 The Active Directory Certificate Services installation is incomplete. To complete the installation, use the ...\r\nCopying SubCa.req to PkiSubCA SYSVOL folder\r\nRemoving SubPkiSysvolPSDrive\r\n\r\n\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting AD domain information\\r\\nGetting a Domain Controller to perform actions against\\r\\nAdding computer account to elevated permission group for install\\r\\nSleeping to ensure replication of group membership has completed\\r\\nClearing all SYSTEM Kerberos tickets\\r\\nCreating PKI CNAME record\\r\\nPKI CNAME record missing.\\r\\nCreating PKI folders\\r\\nSharing PKI folder\\r\\nCreating PKI IIS virtual directory\\r\\nSetting PKI IIS virtual directory requestFiltering\\r\\nSetting PKI IIS virtual directory directoryBrowse\\r\\nSetting PKI folder file system ACLs\\r\\nResetting IIS service\\r\\nCreating CAPolicy.inf\\r\\nCreating SubPkiSysvolPSDrive\\r\\nCreating the PkiSubCA SYSVOL folder\\r\\nCopying the SYSVOL PkiRootCA Contents to local folder\\r\\nPublishing Offline CA certificates and CRLs\\r\\nInstalling Subordinate CA\\r\\n\\r\\nErrorId ErrorString                                                  \\r\\n------- -----------                                                  \\r\\n  398 The Active Directory Certificate Services installation is incomplete. To complete the installation, use the ...\\r\\nCopying SubCa.req to PkiSubCA SYSVOL folder\\r\\nRemoving SubPkiSysvolPSDrive\\r\\n\\r\\n\\r\\n\",\"CommandId\":\"ca2f2435-d641-4f62-af07-67c2743ee53e\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "7cf8ea45-a973-4e48-b02d-6138cb782e9a",

​        "OverriddenParameters": {},

​        "NextStep": "CertIssueSubCa",

​        "ValidNextSteps": [

​          "CertIssueSubCa"

​        ]

​      },

​      {

​        "StepName": "CertIssueSubCa",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T16:12:56.155000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:15:21.352000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0cd0026f159056c20\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$Secret = Get-SecretInfo -Domain 'quicksilver.aws.dev' -SecretArn 'arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B'\\nInvoke-TwoTierSubCaCertIssue -Credentials $Secret.Credentials -DirectoryType 'SelfManaged' -DomainDNSName 'quicksilver.aws.dev'\\n\\nIf ('false' -eq 'true') {\\n Set-AuditDscConfiguration\\n Set-LogsAndMetricsCollection -Stackname 'ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G'\\n}        \\n\\nInvoke-Cleanup -VPCCIDR '10.2.0.0/16'\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "4c7150e0-d7f0-4061-9728-95f6dfb155e8"

​          ],

​          "Output": [

​            "Creating IssuePkiSysvolPSDrive\r\nCopying SubCa.req from PkiSubCA SYSVOL folder\r\nSubmitting, issuing and retrieving the SubCA certificate\r\nCopying SubCa.cer to PkiSubCA SYSVOL folder\r\nRemoving IssuePkiSysvolPSDrive\r\nRemoving SubCA certificate request files\r\nSetting Windows Firewall WinRM Public rule to allow VPC CIDR traffic\r\nRemoving DSC configuration\r\nRe-enabling Windows Firewall\r\nRemoving QuickStart build files\r\nRemoving self signed cert\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Creating IssuePkiSysvolPSDrive\\r\\nCopying SubCa.req from PkiSubCA SYSVOL folder\\r\\nSubmitting, issuing and retrieving the SubCA certificate\\r\\nCopying SubCa.cer to PkiSubCA SYSVOL folder\\r\\nRemoving IssuePkiSysvolPSDrive\\r\\nRemoving SubCA certificate request files\\r\\nSetting Windows Firewall WinRM Public rule to allow VPC CIDR traffic\\r\\nRemoving DSC configuration\\r\\nRe-enabling Windows Firewall\\r\\nRemoving QuickStart build files\\r\\nRemoving self signed cert\\r\\n\",\"CommandId\":\"4c7150e0-d7f0-4061-9728-95f6dfb155e8\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "4944cfb7-175e-414a-85c5-5b38fac70358",

​        "OverriddenParameters": {},

​        "NextStep": "FinalizeSubCa",

​        "ValidNextSteps": [

​          "FinalizeSubCa"

​        ]

​      },

​      {

​        "StepName": "FinalizeSubCa",

​        "Action": "aws:runCommand",

​        "OnFailure": "step:signalfailure",

​        "ExecutionStartTime": "2025-02-12T16:15:21.550000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:20:20.289000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "CloudWatchOutputConfig": "{\"cloudWatchLogGroupName\":\"/aws/Quick_Start/ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"cloudWatchOutputEnabled\":true}",

​          "DocumentName": "\"AWS-RunPowerShellScript\"",

​          "InstanceIds": "[\"i-0c705b20f40469720\"]",

​          "Parameters": "{\"commands\":\"Try {\\n  Import-Module -Name 'C:\\\\AWSQuickstart\\\\Module-Pki\\\\Module-Pki.psm1' -Force\\n} Catch [System.Exception] {\\n  Write-Output \\\"Failed to import Pki PS Module $_\\\"\\n  Exit 1\\n}\\n$Secret = Get-SecretInfo -Domain QUICKSILVER -SecretArn arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B\\nInvoke-TwoTierSubCaConfig -Credentials $Secret.Credentials -DirectoryType 'SelfManaged' -S3CRLBucketName 'examplebucket' -UseS3ForCRL 'No'\\n\\nIf ('false' -eq 'true') {\\n Set-AuditDscConfiguration\\n Set-LogsAndMetricsCollection -Stackname 'ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G'\\n}\\n\\nInvoke-Cleanup -VPCCIDR '10.2.0.0/16'\"}"

​        },

​        "Outputs": {

​          "CommandId": [

​            "f2b6875c-fc94-4c67-91db-20965049e98c"

​          ],

​          "Output": [

​            "Getting AD domain information\r\nGetting a Domain Controller to perform actions against\r\nCreating CertPkiSysvolPSDrive\r\nCopying SubCa.cer from PkiSubCA SYSVOL folder\r\nInstalling SubCA certificate\r\nStarting CA service\r\nConfiguring CRL distro points\r\nConfiguring AIA distro points\r\nConfiguring Subordinate Enterprise CA\r\nRestarting CA service\r\nPublishing CRL\r\nCopying CRL to PKI folder\r\nRestarting CA service\r\nCreating LdapOverSSL-QS certificate template\r\nEnabling CredSSP\r\nSetting CredSSP registry entry CredentialsDelegation\r\nSetting CredSSP registry entry AllowFreshCredentials\r\nSetting CredSSP registry entry AllowFreshCredentialsWhenNTLMOnly\r\nSleeping to ensure replication of certificate template has completed\r\nCleaning up ACLs on LdapOverSSL-QS certificate template\r\nPublishing LdapOverSSL-QS template to allow enrollment\r\nLdapOverSSL-QS template missing adding it.\r\nSleeping to ensure replication of certificate template publish has completed\r\nDisabling CredSSP\r\nRemoving CredSSP registry entries\r\nGetting domain controllers\r\nRunning Group Policy update against all domain controllers\r\nCreating Update CRL Scheduled Task\r\nRunning CRL Scheduled Task\r\nRestarting CA service\r\nRemoving Subordinate CA Cert request files\r\nRemoving the PkiSubCA and PKIRootCA SYSVOL folders\r\nRemoving computer account from elevated groups\r\nClearing all SYSTEM kerberos tickets\r\nSetting Windows Firewall WinRM Public rule to allow VPC CIDR traffic\r\nRemoving DSC configuration\r\nRe-enabling Windows Firewall\r\nRemoving QuickStart build files\r\nRemoving self signed cert\r\n"

​          ],

​          "OutputPayload": [

​            "{\"Status\":\"Success\",\"ResponseCode\":0,\"Output\":\"Getting AD domain information\\r\\nGetting a Domain Controller to perform actions against\\r\\nCreating CertPkiSysvolPSDrive\\r\\nCopying SubCa.cer from PkiSubCA SYSVOL folder\\r\\nInstalling SubCA certificate\\r\\nStarting CA service\\r\\nConfiguring CRL distro points\\r\\nConfiguring AIA distro points\\r\\nConfiguring Subordinate Enterprise CA\\r\\nRestarting CA service\\r\\nPublishing CRL\\r\\nCopying CRL to PKI folder\\r\\nRestarting CA service\\r\\nCreating LdapOverSSL-QS certificate template\\r\\nEnabling CredSSP\\r\\nSetting CredSSP registry entry CredentialsDelegation\\r\\nSetting CredSSP registry entry AllowFreshCredentials\\r\\nSetting CredSSP registry entry AllowFreshCredentialsWhenNTLMOnly\\r\\nSleeping to ensure replication of certificate template has completed\\r\\nCleaning up ACLs on LdapOverSSL-QS certificate template\\r\\nPublishing LdapOverSSL-QS template to allow enrollment\\r\\nLdapOverSSL-QS template missing adding it.\\r\\nSleeping to ensure replication of certificate template publish has completed\\r\\nDisabling CredSSP\\r\\nRemoving CredSSP registry entries\\r\\nGetting domain controllers\\r\\nRunning Group Policy update against all domain controllers\\r\\nCreating Update CRL Scheduled Task\\r\\nRunning CRL Scheduled Task\\r\\nRestarting CA service\\r\\nRemoving Subordinate CA Cert request files\\r\\nRemoving the PkiSubCA and PKIRootCA SYSVOL folders\\r\\nRemoving computer account from elevated groups\\r\\nClearing all SYSTEM kerberos tickets\\r\\nSetting Windows Firewall WinRM Public rule to allow VPC CIDR traffic\\r\\nRemoving DSC configuration\\r\\nRe-enabling Windows Firewall\\r\\nRemoving QuickStart build files\\r\\nRemoving self signed cert\\r\\n\",\"CommandId\":\"f2b6875c-fc94-4c67-91db-20965049e98c\"}"

​          ],

​          "ResponseCode": [

​            "0"

​          ],

​          "Status": [

​            "Success"

​          ]

​        },

​        "StepExecutionId": "b423e989-138b-4b66-a3dd-062758b49a5f",

​        "OverriddenParameters": {},

​        "ValidNextSteps": [

​          "CFNSignalEnd"

​        ]

​      },

​      {

​        "StepName": "CFNSignalEnd",

​        "Action": "aws:branch",

​        "ExecutionStartTime": "2025-02-12T16:20:20.496000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:20:20.631000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "Choices": "[{\"Not\":{\"StringEquals\":\"\",\"Variable\":\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\"},\"NextStep\":\"signalsuccess\"},{\"StringEquals\":\"\",\"Variable\":\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\",\"NextStep\":\"sleepend\"}]"

​        },

​        "Outputs": {

​          "NextStep": [

​            "signalsuccess"

​          ],

​          "OutputPayload": [

​            "{\"NextStep\":\"signalsuccess\"}"

​          ]

​        },

​        "StepExecutionId": "886c2472-7f21-46db-9bf0-a1101dc60276",

​        "OverriddenParameters": {},

​        "ValidNextSteps": [

​          "signalsuccess"

​        ]

​      },

​      {

​        "StepName": "signalsuccess",

​        "Action": "aws:executeAwsApi",

​        "ExecutionStartTime": "2025-02-12T16:20:20.855000-05:00",

​        "ExecutionEndTime": "2025-02-12T16:20:21.145000-05:00",

​        "StepStatus": "Success",

​        "Inputs": {

​          "Api": "\"SignalResource\"",

​          "LogicalResourceId": "\"SubCA\"",

​          "Service": "\"cloudformation\"",

​          "StackName": "\"ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G\"",

​          "Status": "\"SUCCESS\"",

​          "UniqueId": "\"i-0c705b20f40469720\""

​        },

​        "Outputs": {},

​        "StepExecutionId": "15d994b7-5135-4398-8bd2-122ca6011a75",

​        "OverriddenParameters": {},

​        "IsEnd": **true**

​      },

​      {

​        "StepName": "sleepend",

​        "Action": "aws:sleep",

​        "StepStatus": "Pending",

​        "Inputs": {},

​        "StepExecutionId": "b613b6de-8f3f-4b18-af2a-7c380d6bebf5",

​        "OverriddenParameters": {},

​        "IsEnd": **true**

​      },

​      {

​        "StepName": "signalfailure",

​        "Action": "aws:executeAwsApi",

​        "StepStatus": "Pending",

​        "Inputs": {},

​        "StepExecutionId": "dd4036c1-34af-4d51-8925-382569a4e1c9",

​        "OverriddenParameters": {}

​      }

​    ],

​    "StepExecutionsTruncated": **false**,

​    "Parameters": {

​      "AdministratorSecret": [

​        "arn:aws:secretsmanager:us-east-1:396913736034:secret:ADAltUserSecrets-ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-SSbL8B"

​      ],

​      "DirectoryType": [

​        "SelfManaged"

​      ],

​      "DomainController1IP": [

​        "10.2.0.10"

​      ],

​      "DomainController2IP": [

​        "10.2.1.10"

​      ],

​      "DomainDNSName": [

​        "quicksilver.aws.dev"

​      ],

​      "DomainNetBIOSName": [

​        "QUICKSILVER"

​      ],

​      "EnableAdvancedAudtingandMetrics": [

​        "false"

​      ],

​      "OrCaHashAlgorithm": [

​        "SHA256"

​      ],

​      "OrCaKeyLength": [

​        "2048"

​      ],

​      "OrCaServerNetBIOSName": [

​        "QUICKSILVERCA1"

​      ],

​      "OrCaValidityPeriodUnits": [

​        "10"

​      ],

​      "QSS3BucketName": [

​        "quicksilver-aws-ia"

​      ],

​      "QSS3BucketRegion": [

​        "us-east-1"

​      ],

​      "QSS3KeyPrefix": [

​        "cfn-ps-microsoft-activedirectory/submodules/cfn-ps-microsoft-pki/"

​      ],

​      "S3CRLBucketName": [

​        "examplebucket"

​      ],

​      "StackName": [

​        "ActiveDirectory-SharedServices-10-2-0-0-16-QuickSilver-TwoTierCAStack-1UGJGQWV2MW8G"

​      ],

​      "SubCaHashAlgorithm": [

​        "SHA256"

​      ],

​      "SubCaKeyLength": [

​        "2048"

​      ],

​      "SubCaServerNetBIOSName": [

​        "QUICKSILVERCA2"

​      ],

​      "SubCaValidityPeriodUnits": [

​        "5"

​      ],

​      "URLSuffix": [

​        "amazonaws.com"

​      ],

​      "UseS3ForCRL": [

​        "No"

​      ],

​      "VPCCIDR": [

​        "10.2.0.0/16"

​      ]

​    },

​    "Outputs": {},

​    "Mode": "Auto",

​    "ExecutedBy": "arn:aws:sts::396913736034:assumed-role/ActiveDirectory-SharedServices-10-2-0--InstanceRole-eslNmXaNfXDE/i-0c705b20f40469720",

​    "Targets": [],

​    "ResolvedTargets": {

​      "ParameterValues": [],

​      "Truncated": **false**

​    }

  }

}

