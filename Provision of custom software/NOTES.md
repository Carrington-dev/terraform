## __There are two ways of provisioning software with terraform__

1. Build CUSTOM AMI
    - Bundle your software and files in your base image
    - Packer is the tool to bundle custom AMI
2. Boot standard AMIs and install software on the instance at runtime
    - Using file upload
    - Using remote-exec
    - using tools like Chef, Puppet and Ansible



Which approach is better or which method do you reccommend between the two?

```bash
`Method 1`: I would recommend method 1 because it maintains the same version of the operating system for instance if you develop a software today, in 4 months time yu can still use the same operating system hence there won't be need to alter the software or it's dependenceies
```

## Extra Notes

- __Chef comes installed or integrated in terraform__
- User can run Puppet using Remote-Exec
- For Ansible first terraform and get the host ip then exec Ansible with that <IP>

- For Remote-Exec user needs to run the script (shell script or python are the most preffered)
- Terraform provisioner needs to use SSH/WinRM for windows
- User uses ssh keypairs instead of password to make connection to the host machine

## Generate An SSH Key

```bash
ssh-keygen -f <key_name>
```

## Terraform: DataSource in Terraform

Terraform provides DataSource for Certain Cloud Providers like AWS. 
* DataSource Provides the dynamic Information about entities that are not managed by the current Terraform and configuration. 
* AWS provides a lot of structured data which can be accessed via AWS APIs. 
* Terraform expose this information using DataSources like AMIs, Availability Zones. 
* Referencing a resource defined in a data source won’t create the resource itself, and your plan will fail if you reference nonexistent data or infrastructure. Terraform : Deployment Automation
* DataSource also provides the All IPs in use by AWS. 
* This will help in IP Base Traffic filter. 
* Traffic Filer on AWS can be done via Security Groups. 
* Incoming and Outgoing Traffic can be done via Inbound Rules and Outbound Rules. 
* Rules filter the traffic on the basis of Protocol, IP Range, and Ports.

Will see you in Next Lecture…
See you in next lecture 