#!bash
#Installation de jenkins

sudo apt update -y
sudo apt install openjdk-17-jdk -y
sudo nano /etc/environment
JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
PATH="$PATH:$JAVA_HOME/bin"
source /etc/environment
java --version
echo $JAVA_HOME

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y

#recuperer le password pour l'interface graphic
sudo cat /var/lib/jenkins/secrets/initialAdminPassword



