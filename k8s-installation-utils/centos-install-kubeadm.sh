#!/bin/sh

# 配置镜像源
cat > /etc/yum.repos.d/kubernetes.repo <<EOF
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=0
repo_gpgcheck=0
EOF

# 执行安装（docker使用epel源）
yum update -y
yum install -y epel-release
yum install -y docker kubelet kubeadm kubectl kubernetes-cni

# 启动docker和kubelet
systemctl enable docker && systemctl start docker
systemctl enable kubelet && systemctl start kubelet

echo "------"
echo "Ready to kubeadm init!"
echo "  Inside GFW might go with:"
echo "  kubeadm init --image-repository=http://registry.aliyuncs.com/google_containers"
echo "------"
