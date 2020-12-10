#!/bin/sh

docker pull k8s.gcr.io/kube-apiserver:v1.19.4
docker tag k8s.gcr.io/kube-apiserver:v1.19.4 yipengh/kube-apiserver:v1.19.4
docker push yipengh/kube-apiserver:v1.19.4

docker pull k8s.gcr.io/kube-controller-manager:v1.19.4
docker tag k8s.gcr.io/kube-controller-manager:v1.19.4 yipengh/kube-controller-manager:v1.19.4
docker push yipengh/kube-controller-manager:v1.19.4

docker pull k8s.gcr.io/kube-scheduler:v1.19.4
docker tag k8s.gcr.io/kube-scheduler:v1.19.4 yipengh/kube-scheduler:v1.19.4
docker push yipengh/kube-scheduler:v1.19.4

docker pull k8s.gcr.io/kube-proxy:v1.19.4
docker tag k8s.gcr.io/kube-proxy:v1.19.4 yipengh/kube-proxy:v1.19.4
docker push yipengh/kube-proxy:v1.19.4

docker pull k8s.gcr.io/pause:3.2
docker tag k8s.gcr.io/pause:3.2 yipengh/pause:3.2
docker push yipengh/pause:3.2

docker pull k8s.gcr.io/etcd:3.4.13-0
docker tag k8s.gcr.io/etcd:3.4.13-0 yipengh/etcd:3.4.13-0
docker push yipengh/etcd:3.4.13-0

docker pull k8s.gcr.io/coredns:1.7.0
docker tag k8s.gcr.io/coredns:1.7.0 yipengh/coredns:1.7.0
docker push yipengh/coredns:1.7.0
