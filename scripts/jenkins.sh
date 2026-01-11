#!/bin/bash

echo "========== Jenkins Installation Started =========="

# Update system
sudo apt update -y

# Install Java (Jenkins needs Java)
sudo apt install -y openjdk-17-jdk

# Add Jenkins repository key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key \
| sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add Jenkins repo
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ \
| sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update again
sudo apt update -y

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins --no-pager

echo "========== Jenkins Installed Successfully =========="
echo "Open Jenkins at: http://<YOUR-SERVER-IP>:8080"

# Show admin password
echo
echo "========== Jenkins Admin Initial Password =========="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
