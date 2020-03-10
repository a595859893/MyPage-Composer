# It will cost lots of time with the problem of network
sh ./init.sh
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
   && sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo minikube start --image-mirror-country cn \
    --iso-url=https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/minikube-v1.7.3.iso \
    --registry-mirror=https://xxxxxx.mirror.aliyuncs.com