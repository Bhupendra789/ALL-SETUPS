sudo yum update -y
#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y
sudo yum install git -y
sudo yum install java-1.8.0-amazon-corretto
#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#STEP-3: DOWNLOAD JAVA11 AND JENKINS
sudo yum install java-11-amazon-corretto -y
udo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
sudo systemctl start jenkins
sudo systemctl status jenkins
