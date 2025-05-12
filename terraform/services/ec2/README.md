# AWS EC2 Configuration

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
3. Modify /etc/ssh/sshd_config
- Uncomment 
```
PubkeyAuthentication yes
```
- Comment
```
#PasswordAuthentication yes
```
- Add following line
```
PubkeyAcceptedAlgorithms +ssh-rsa
```
3. Add Authorized Key
- Navigate to /home/\<username>\ directory
- Create and configure .ssh direcroy
```
mkdir .ssh
chmod 700 .ssh
chmod -R go= .ssh
chown -R <username>:<username> .ssh
```
- Create and configure authorized_keys file. Navigate to /home/\<username>\/.ssh/ directory
```
touch authorized_keys
chmod 600 authorized_keys
```
- Copy paste your public key that you created previously to this file