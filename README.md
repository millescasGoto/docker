----- DOCKER -----

----- basics -----

docker version
docker ps
docker ps -a 
docker images

----- Pull images ----

docker pull <image>

---- Run -----

docker run <images> or <id>
docker run -d <image> or <id>   ----> detach mode 

---- Delete -----

docker rm <images> or <id>   ---> remove images in the exits status 
docker rmi <images> or <id>

---- Inspect -----

docker inspect <image> or <id>