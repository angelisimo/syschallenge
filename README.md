# Syschallenge
SysAdmin Challenge microservice with reverse proxy

Scripts that will create two docker containers, 1 with a python application using flask framework that will server internally in port 8080, and a nginx reverse proxy which will redirect the traffic from port 80/443.
Flask was used for simplicity given the requirements of the challenge. 

install.sh, will install docker and docker-compose, then it will run the compose file.

Requirements:

- Linux debian
- git
= listening in port 80


Instructions
- Clone the repo
- run install.sh



