# KhoaDD6 Udacity Capstone Project

## Setup Environment

1. Create an EC2 (Ubuntu 22.02)
2. SSH to this EC2
3. Update packages

```sh
$ sudo apt update -y
```

4. Install **hadolint**

```sh
$ wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
$ chmod +x /bin/hadolint
```

5. Install **kubectl**

```sh
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
$ kubectl version --client
```

6. Install **eksctl**

```sh
$ curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/ download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
$ sudo mv /tmp/eksctl /usr/local/bin
$ eksctl version
```

7. Install **Docker**

```sh
$ sudo apt update
```

```sh
$ sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

```sh
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

```sh
$ echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

```sh
$ sudo apt update
```

```sh
$ apt-cache policy docker-ce
```

```sh
$ sudo apt install docker-ce
```

```sh
$ sudo systemctl status docker
```

```sh
$ sudo usermod -aG docker ubuntu
```

```sh
$ docker version
```

## Docker

Build Docker Image

```sh
$ docker build --tag khoadd6-devops-capstone-project .
```

Push Docker Image

```sh
$ docker login -u dinhdangkhoa0201
$ docker tag khoadd6-devops-capstone-project dinhdangkhoa0201/khoadd6-devops-capstone-project:latest0
$ docker push dinhdangkhoa0201/khoadd6-devops-capstone-project:latest
```

Run Docker Image

```sh
$ docker run -p 80:80 dinhdangkhoa0201/khoadd6-devops-capstone-project:latest
```

## Kubernetes

Create an EKS Cluster

```sh
$ eksctl create cluster --config-file=cluster.yml
```

Deploy Kubernetes sources

```sh
$ kubectl create deployment udacity-app --image=dinhdangkhoa0201/khoadd6-devops-capstone-project:latest --replicas=4
```

Expose PORT

```sh
$ kubectl expose deployment/udacity-app --type="LoadBalancer" --port 80
```

List Deployments

```sh
$ kubectl get deployments -o wide
```

List Services

```sh
$ kubectl get services -o wide
```

List Pods

```sh
$ kubectl get pods -o wide
```

Cleanup Resources

```sh
$ kubectl delete services udacity-app
$ kubectl delete deployments udacity-app
```
