FROM debian

RUN apt-get update -y
RUN	apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install bzip2 -y
RUN apt-get install wget -y


EXPOSE 9987/udp 10011 30033

RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN tar xfv teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN mv teamspeak3-server_linux_amd64/ /opt/teamspeak/
RUN rm teamspeak3-server_linux_amd64-*

ENTRYPOINT ["/opt/teamspeak/ts3server_minimal_runscript.sh"]

#docker run -d -p 9987:9987/udp -p 10011:10011 -p 30033:30033 --name=ts3-server #name_of_image
