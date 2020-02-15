# 修改腾讯云默认的git账户
git config --global user.name a595859893
git config --global user.email 595859893@qq.com
# 安装nginx并配置用户
sudo apt-get update
sudo apt-get install bison ed gawk gcc libc6-dev make -y
sudo apt-get install nginx -y
sudo /usr/sbin/groupadd www
sudo /usr/sbin/useradd -g www www
# 二级域名解析反向代理配置
sudo cp ./chatbot.conf /etc/nginx/sites-enabled/
sudo service nginx restart
# 安装docker并配置镜像加速
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo cp ./daemon.json /etc/docker/
sudo systemctl daemon-reload
sudo systemctl restart docker
# 安装docker compose
sudo curl -L "https://get.daocloud.io/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

