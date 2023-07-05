FROM ubuntu:20.04
RUN apt-get update && apt-get install -y dnsmasq
RUN mkdir -p /var/tftpboot
COPY pxelinux.cfg /var/tftpboot/pxelinux.cfg
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 67/udp 69/udp
CMD ["dnsmasq", "-d"]
