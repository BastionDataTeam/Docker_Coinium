FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN apt-get update && apt-get install -y \
    wget \
    nano

ADD http://www.blinkdynamics.uk:10999/Coiniumserv/Release /usr/local/bin/CoiniumServ/
RUN chmod u+x /usr/local/bin/CoiniumServ/Release

CMD ["mono", "/usr/local/bin/CoiniumServ/Release/CoiniumServ.exe"]
