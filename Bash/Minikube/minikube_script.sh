# Update package manager
sudo apt-get update

# Install Docker
sudo apt-get install docker.io

# Install the latest version of Minikube
curl -sSL https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
    -o /usr/local/bin/minikube

# Make the binary executable
chmod +x /usr/local/bin/minikube

# Install kubectl
curl -sSL https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    -o /usr/local/bin/kubectl

# Make the binary executable
chmod +x /usr/local/bin/kubectl

#You might need to use this command.
#sudo usermod -aG docker $USER && newgrp docker

# Start Minikube
minikube start --driver=docker
