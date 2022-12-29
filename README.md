# docker-node-gyp
# https://blog.logrocket.com/solving-common-issues-node-gyp/

# Run docker
docker ps -a <br />
docker images <br />
docker build . <br />
docker build -t node-gyp . <br />
docker run node-gyp <br />
docker run -it node-gyp <br />
docker run -it node-gyp ls -ltra <br />
docker run -it --rm node-gyp node-gyp ls -ltra <br />
docker run -it --rm node-gyp node-gyp configure <br />
docker run -it --name node-gyp node-gyp ls -ltra <br />
docker run -it --name node-gyp --rm node-gyp ls -ltra <br />
docker run -it --name node-gyp --rm node-gyp node-gyp configure <br />
docker run --name node-gyp node-gyp <br />
docker run --name node-gyp node-gyp ls -ltra <br />
docker run -it --name node-gyp node-gyp <br />
docker run -it --name node-gyp --rm node-gyp ls -ltra <br />
docker run -it --name node-gyp --rm node-gyp node-gyp configure <br />
docker ps -a | grep node-gyp | awk '{print $1}' <br />
docker start 2a7763f1c4a4 <br />
docker exec -it 2a7763f1c4a4 ls -ltra <br />
docker exec -it $(docker ps -a | grep node-gyp | awk '{print $1}') bash <br />
docker rm $(docker ps -a | grep node-gyp | awk '{print $1}') <br />
docker rmi $(docker images | grep node-gyp | awk '{print $1}') <br />

