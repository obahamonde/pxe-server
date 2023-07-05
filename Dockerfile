FROM ubuntu:20.04
RUN apt-get update && apt-get install -y dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 67/udp 69/udp
CMD ["dnsmasq", "-d"]
