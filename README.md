docker build -t init .
docker run -it --name init_docker --rm --privileged -v "$PWD":/init init
