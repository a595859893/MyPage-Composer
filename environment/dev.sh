# nodejs
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g cnpm --registry=https://registry.npm.taobao.org
# python3
sudo apt install python3
sudo apt install python3-pip
# golang
wget https://studygolang.com/dl/golang/go1.13.8.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.13.8.linux-amd64.tar.gz
sudo rm go1.13.8.linux-amd64.tar.gz
sudo echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
sudo echo "export GO111MODULE=on" >> ~/.bashrc
sudo echo "export GOPROXY=https://goproxy.io" >> ~/.bashrc
# source $HOME/.profile
sudo reboot