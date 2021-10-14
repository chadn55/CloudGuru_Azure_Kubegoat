user=$(cat /etc/passwd | grep 1000 | cut -d ":" -f1)
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg \
lsb-release 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $user
echo -e "\e[1;31mPlease log out and log back in to run the second script \e[0m"
