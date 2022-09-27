# Dockerfile with telepresence and its prerequisites
FROM alpine:3.13

# Install Telepresence prerequisites
RUN apk add --no-cache curl iproute2 sshfs

# Download and install the telepresence binary
RUN curl -fL https://app.getambassador.io/download/tel2/linux/amd64/latest/telepresence -o telepresence && \
   install -o root -g root -m 0755 telepresence /usr/local/bin/telepresence