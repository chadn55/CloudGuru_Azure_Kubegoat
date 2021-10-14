sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
minikube start

######kubectl install#######
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubelet kubeadm kubectl

######helm/kubegoat install#######
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectlexport
KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/kubeconfig.yaml
sudo curl -LO https://get.helm.sh/helm-v3.7.0-rc.2-linux-amd64.tar.gz
sudo tar -zxvf helm-v3.7.0-rc.2-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin
cd /usr/local/bin
sudo ln -s helm helm2
cd $HOME
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat/
bash setup-kubernetes-goat.sh
echo "Waiting 2 minutes for containers to start..."
sleep 120
echo "Wait completed"
bash access-kubernetes-goat.sh
