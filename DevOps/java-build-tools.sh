#!/bin/bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Add homewbrew to path
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.bash_profile

#reload bash profile
source /home/$USER/.bash_profile

#Install brew packages
brew install git
brew install wget 
brew install unzip
brew install gradle
brew install maven
brew install gcc

# Install Java
sudo dnf update
sudo dnf install -y openjdk-11-jdk

#find gradle and maven paths
CURRENT_GRADLE="which gradle"
CURRENT_MAVEN="which mvn"
CURRENT_JAVA="which java"

#Add JAVA_HOME to path
echo export JAVA_HOME=$CURRENT_JAVA >> /home/$USER/.bash_profile
echo export PATH=$PATH:$JAVA_HOME/bin >> /home/$USER/.bash_profile

#Add Maven to path
echo export MAVEN_HOME=$CURRENT_MAVEN >> /home/$USER/.bash_profile
echo export PATH=$PATH:$MAVEN_HOME/bin >> /home/$USER/.bash_profile

#Add Gradle to path
echo export GRADLE_HOME=$CURRENT_GRADLE >> /home/$USER/.bash_profile
echo export PATH=$PATH:$GRADLE_HOME/bin >> /home/$USER/.bash_profile


#reload bash profile
source /home/$USER/.bash_profile



# Install Java
sudo apt-get update
sudo apt-get install -y default-jdk

# Install Gradle
wget https://services.gradle.org/distributions/gradle-7.2-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-7.2-bin.zip

export PATH=$PATH:/opt/gradle/gradle-7.2/bin

# Install Maven
sudo apt-get install -y maven

echo "Java, Gradle, and Maven have been installed successfully."