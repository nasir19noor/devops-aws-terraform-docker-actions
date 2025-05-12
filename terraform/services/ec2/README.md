# AWS EC2 Instance Terraform module

After provisioning the EC2 instance, you may access the server securely through AWS Systems Manager (SSM), switch to root user and proceed with the following administrative tasks:
1. Add User
```
adduser <username>
```
You will getting prompt to fill some information like password, name, etc.

2. Grant username with root access
Open /etc/sudoers and add following line
```
<username>   ALL=(ALL:ALL) ALL
```
3. Add Authorized Key