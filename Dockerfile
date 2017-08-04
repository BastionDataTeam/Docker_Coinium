FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN mkdir -p /usr/local/bin/Coiniumserv
RUN apt-get update && apt-get -y install curl
RUN cd /usr/local/bin/
RUN curl http://www.blinkdynamics.uk:10999/Coiniumserv/coiniumserv.tar.gz | tar zx
RUN chmod u+x -R /usr/local/bin/coiniumserv/

CMD ["mono", "/usr/local/bin/coiniumserv/CoiniumServ.exe"]
