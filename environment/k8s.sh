# It will cost lots of time with the problem of network
sh ./init.sh

# kubernet清华镜像
cat > deb /etc/apt/sources.list.d/kubernetes.list<<EOF
deb https://mirrors.tuna.tsinghua.edu.cn/kubernetes/apt kubernetes-stretch main
EOF

sudo apt-get update
sudo apt-get install -y kubectl

# 生产环境(未完成)
# sudo apt-get install -y kubelet kubeadm kubectl
# sudo apt-mark hold kubelet kubeadm kubectl

# Minikube 学习环境
# curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
curl -LO https://mirrors.tuna.tsinghua.edu.cn/github-release/kubernetes/minikube/LatestRelease/minikube-linux-amd64 \
   && sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo minikube start --image-mirror-country cn \
    --iso-url=https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/minikube-v1.7.3.iso \
    --registry-mirror=https://xxxxxx.mirror.aliyuncs.com