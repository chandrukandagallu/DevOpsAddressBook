# Update system
sudo dnf update -y

# Install Java 17 (Amazon Linux 2023 supports java-17 not java-11)
sudo dnf install java-17-amazon-corretto -y

# Go to /opt directory
cd /opt

# Download Tomcat 9 (correct link for tar.gz)
sudo curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz

# Extract Tomcat
sudo tar -xvzf apache-tomcat-9.0.93.tar.gz

# Rename for simplicity
sudo mv apache-tomcat-9.0.93 tomcat9

# Give execute permissions
sudo chmod +x /opt/tomcat9/bin/*.sh

# Start Tomcat
/opt/tomcat9/bin/startup.sh
