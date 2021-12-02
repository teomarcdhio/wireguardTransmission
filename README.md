# wireguardTransmission

Copy your Wireguard configuration settings inside the wg0.conf file 

Change the volumes path in teh docker-compose file to match your host

From within the repository root folder:

run ``dcoker build -t transmission .`` to build the container

run ``docker-compose up -d`` to start the container 