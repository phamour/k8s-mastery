#!/bin/sh

docker pull yipengh/kube-apiserver:v1.19.4
docker tag yipengh/kube-apiserver:v1.19.4 k8s.gcr.io/kube-apiserver:v1.19.4
docker rmi yipengh/kube-apiserver:v1.19.4

docker pull yipengh/kube-controller-manager:v1.19.4
docker tag yipengh/kube-controller-manager:v1.19.4 k8s.gcr.io/kube-controller-manager:v1.19.4
docker rmi yipengh/kube-controller-manager:v1.19.4

docker pull yipengh/kube-scheduler:v1.19.4
docker tag yipengh/kube-scheduler:v1.19.4 k8s.gcr.io/kube-scheduler:v1.19.4
docker rmi yipengh/kube-scheduler:v1.19.4

docker pull yipengh/kube-proxy:v1.19.4
docker tag yipengh/kube-proxy:v1.19.4 k8s.gcr.io/kube-proxy:v1.19.4
docker rmi yipengh/kube-proxy:v1.19.4

docker pull yipengh/pause:3.2
docker tag yipengh/pause:3.2 k8s.gcr.io/pause:3.2
docker rmi yipengh/pause:3.2

docker pull yipengh/etcd:3.4.13-0
docker tag yipengh/etcd:3.4.13-0 k8s.gcr.io/etcd:3.4.13-0
docker rmi yipengh/etcd:3.4.13-0

docker pull yipengh/coredns:1.7.0
docker tag yipengh/coredns:1.7.0 k8s.gcr.io/coredns:1.7.0
docker rmi yipengh/coredns:1.7.0
