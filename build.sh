docker build -t pxe-server .
docker network create --driver bridge isolated_network
docker run -d --network=isolated_network -v ./:/pxe-server -v ./windows:/var/tftpboot:rw pxe-server