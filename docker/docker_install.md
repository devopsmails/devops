Docker installation:
-----------------

sudo apt update -y
sudo apt install docker.io -y
sudo systemctl status docker
docker run hello-world 
      - will not work now
sudo usermod -aG docker ubuntu
    - adds ubuntu to docker group
***Need to refresh to instance or exit & relogin***
docker run hello-world
