FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN mkdir -p /usr/local/bin/CoiniumServ/Release

ADD http://www.blinkdynamics.uk:10999/Coiniumserv/Release/ /usr/local/bin/CoiniumServ/
RUN chmod u+x -R /usr/local/bin/CoiniumServ/*

CMD ["mono", "/usr/local/bin/CoiniumServ/Release/CoiniumServ.exe"]
