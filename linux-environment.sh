#java

sudo apt install -y default-jre 
sudo apt install -y default-jdk 
sudo apt update

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

#maven

sudo apt install -y maven
export M2_HOME=/usr/share/maven
export PATH=$PATH:$M2_HOME/bin

#python

sudo apt install -y python3
sudo apt install -y python3-pip

#docker

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable";
sudo apt update;
apt-cache policy docker-ce;
sudo apt install -y docker-ce;
sudo usermod -aG docker ${USER};


#docker-compose

sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#kubernetes

sudo apt-get update;
sudo apt-get install -y apt-transport-https ca-certificates curl;
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg;
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list;
sudo apt-get update;
sudo apt-get install -y kubectl;

#vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

#instalando extensions vscode
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-python.python
code --install-extension ritwickdey.liveserver
code --install-extension ms-azuretools.vscode-docker
code --install-extension eamodio.gitlens
code --install-extension formulahendry.code-runner
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension abusaidm.html-snippets
code --install-extension zhuangtongfa.material-theme
code --install-extension pkief.material-icon-theme
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

#node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm list-remote
nvm install-latest-npm

#ifconfig
sudo apt install -y net-tools



