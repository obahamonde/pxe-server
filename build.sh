docker build -t pxe-server .
docker run -d --network=host -v ./:/pxe-server pxe-server
