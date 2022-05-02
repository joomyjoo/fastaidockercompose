# How to use
0. Clone this repository and change the folder name to the intern's initials
1. Set the token variable in the docker-compose file; in the terminal try --> openssl rand -hex 32
2. Mount the relevant folders in docker-compose; usually the data folder and experiment folder
3. Specify Serverside $PORT usually between 8880-8890 or 18880-18890
3. in the terminal docker-compose up --build

# make sure to...
0. sudo ufw allow $PORT/tcp
1. access the jupyterlab server by opening https://$IP:$PORT  make sure it is https! not http. this docker file take advantage of a self-signed certificate

# based on 
latest fastai docker found at fastai/fastai:latest
latest jupyterlab installation via pip install jupyterlab