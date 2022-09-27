docker build -t tp-in-docker .

 docker run \
  --cap-add=NET_ADMIN \
  --device /dev/net/tun:/dev/net/tun \
  --network=host \
  -v ~/.kube/config:/root/.kube/config \
  -it --rm tp-in-docker
  
  
  Telepresence connect
  Telepresence status
