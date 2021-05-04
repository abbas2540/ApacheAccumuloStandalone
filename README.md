# Accumulo Standalone With Docker Compose

In this project we are mainly focusing on building a development environment for ready to do built in docker images and docker-compose script which you can run and use the images for speeding up the process of using accumulo.


## Installation

For using this project to setup on your local systems, you would require mainly docker and docker compose which is the main base to setup the project. Also you will require docker account to use docker hub.

```bash
#Once you are done with your docker and 
#docker-compose installation
#If you have docker and docker-compose 
git clone https://github.com/abbas2540/ApacheAccumuloStandalone.git
```

## Usage

```bash
docker-compose up -d
#wait for the containers to start wait for hadoop to get started
#you can verify hadoop by going to localhost:50070 from your browser.
#if you see your NameNode is up and running you can carry forward.
#Now you have to see the container id by
docker ps
#you can see the accumulo image and copy the container id from there
docker exec -it ${container_id} bash
#Now you can initialise the accumulo
accumulo init
#Fill all the details regarding the accumulo initialization
#now you have to start all the accumulo services with 
./bin/start-all.sh 
#Let accumulo initialise all its resources and let master and tserver starts running
#You can verify it by going to localhost:9995 and see if the master is running perfect
#now you can login into accumulo by
accumulo shell -u ${username} -p ${password}
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.