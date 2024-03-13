-------------------------------- DOCKER --------------------------------

----- Basics -----

docker version
docker ps
docker ps -a 
docker images

----- Pull images -----

docker pull <images>  ---> without tag will pull the latest 

----- Run  -----

docker run <images:tag> or <id> 
docker run -d <images:tag> or <id>   ----> detach mode 
docker run -it <images:tag> or <id> 

docker stop <images:tag> or <id> 

----- Pause, Unpause and Stop -----

docker pause <name> or <id> 
docker unpause <name> or <id>
docker stop <name> or <id> 


----- Delete -----

docker rm <images> or <id>   ---> remove images in the exits status 
docker rmi <images> or <id>

----- Inspect -----

docker inspect <image> or <id>

----- Build -----

docker build . -f <Dockerfile> -t <image:tag>

----- Volume -----

docker run -it -v <local-folder>:<target-folder> <images:tag>

----- Expose container -----

docker run -d -p <targetport>:<images port> <images:tag>
