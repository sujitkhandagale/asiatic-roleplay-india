# Use Ubuntu 20.04 as base image
FROM ubuntu:20.04

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    nano \
    wget \
    curl \
    screen \
    vsftpd \
    tar \
    sudo \
    xz-utils

# Set working directory
WORKDIR /app
# Download and extract FXServer inside /app
RUN wget -O fx.tar.xz https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/8633-3c5c9528f63c8aa202eae65309da473642d5604e/fx.tar.xz && \
    tar -xf fx.tar.xz && \
    rm fx.tar.xz

# Install openssh-server (or your chosen SFTP server)
RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

RUN useradd -m -s /bin/bash developer

RUN echo 'developer:developer@password' | chpasswd
# run tmux servere inside container
#port expose for FXServer
EXPOSE 22
EXPOSE 30120/tcp
EXPOSE 30120/udp
EXPOSE 30120
EXPOSE 40120


# Default command
# Copy vsftpd configuration file
COPY vsftpd.conf /etc/vsftpd.conf
# Start vsftpd in standalone mode when the container launches
# Start vsftpd and SSH server, and run your script when the container launches
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
#go to app directory
#permission setup
RUN chown -R developer /home

WORKDIR /app
CMD ["/usr/local/bin/startup.sh"]
