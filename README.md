# docker-node-gyp
# https://blog.logrocket.com/solving-common-issues-node-gyp/

# Run docker
docker ps -a
docker images
docker build .
docker build -t node-gyp .
docker run node-gyp
docker run -it node-gyp
docker run -it node-gyp ls -ltra
docker run -it --rm node-gyp node-gyp ls -ltra
docker run -it --rm node-gyp node-gyp configure
docker run -it --name node-gyp node-gyp ls -ltra
docker run -it --name node-gyp --rm node-gyp ls -ltra
docker run -it --name node-gyp --rm node-gyp node-gyp configure
docker run --name node-gyp node-gyp
docker run --name node-gyp node-gyp ls -ltra
docker run -it --name node-gyp node-gyp
docker run -it --name node-gyp --rm node-gyp ls -ltra
docker run -it --name node-gyp --rm node-gyp node-gyp configure
docker ps -a | grep node-gyp | awk '{print $1}'
docker start 2a7763f1c4a4
docker exec -it 2a7763f1c4a4 ls -ltra
docker exec -it $(docker ps -a | grep node-gyp | awk '{print $1}') bash
docker rm $(docker ps -a | grep node-gyp | awk '{print $1}')
docker rmi $(docker images | grep node-gyp | awk '{print $1}')
