#!/bin/sh

# 关闭swap（临时，重启恢复）
swapoff -a

# 关闭SELinux，修改配置永久生效，需重启
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
setenforce 0

#关闭防火墙 
systemctl stop firewalld && systemctl disable firewalld

# 开启路由转发
sysctl -w net.ipv4.ip_forward=1

# 确保iptables不被绕过
cat <<EOF >  /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system
