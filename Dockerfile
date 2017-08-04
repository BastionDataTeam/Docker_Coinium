FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN mkdir -p /usr/local/bin/Coiniumserv

RUN apt-get update && apt-get -y install curl

RUN curl -o /usr/local/bin/Coiniumserv http://www.blinkdynamics.uk:10999/Coiniumserv/coiniumserv.tar.gz | tar zx

CMD ["mono", "/usr/local/bin/Coiniumserv/Release/CoiniumServ.exe"]
