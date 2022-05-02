# How to use
1. Clone this repository and change the folder name to the intern's initials
2. cd fastaidockercompose (or the intern's initials)
3. Set the JUPYTER_TOKEN in the docker-compose.yml file; in the terminal try --> openssl rand -hex 32

    this will be the token used to access the jupyter lab server
    
4. Mount the relevant folders in docker-compose.yml volumes; usually the data folder and experiment folder
5. Specify docker-compose.yml ports; usually between 8880-8890 or 18880-18890, the port IN the container used for jupyter lab will always be 8888
6. Finally run the service by terminal:

    docker-compose up --build

    or

    nohup docker-compose up --build &

# make sure to...
0. sudo ufw allow $PORT/tcp
1. access the jupyterlab server by opening https://$IP:$PORT  make sure it is https! not http. 

    this dockercontainer takes advantage of a self-signed certificate

# based on 
latest fastai docker found at fastai/fastai:latest
latest jupyterlab installation via pip install jupyterlab