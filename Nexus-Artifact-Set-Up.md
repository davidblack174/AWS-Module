# Installing Nexus Repository Manager on a Linux Server

This guide outlines the steps to install and configure Nexus Repository Manager on a Linux server.

### Step 1: Update Your System
Update your package index and upgrade your system packages.

```
sudo apt update && sudo apt upgrade -y

 ```

### Step 2: Verify Java Installation
Ensure Java is installed on your system.
	```java -version ```
### Step 3: Create a Nexus User
Create a dedicated user for running Nexus. Choose one of the following commands:
```
sudo useradd -m -s /bin/bash nexus
```
``or
``
```
sudo adduser nexus
```

### Step 4: Download Nexus Repository Manager
Download the latest Nexus Repository Manager package.
```
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
```

Extract the downloaded file:

```
tar -xvf latest-unix.tar.gz
```

Move the extracted directory to /opt:

```
sudo mv nexus-3* /opt/nexus
```

### Step 5: Configure Nexus
Change the ownership of the Nexus directory to the newly created nexus user.
```
sudo chown -R nexus:nexus /opt/nexus
```

Edit the nexus.rc file to ensure Nexus runs as the nexus user.
```
sudo nano /opt/nexus/bin/nexus.rc
```

Add the following line to set the Nexus user:
```
run_as_user="nexus"
```







