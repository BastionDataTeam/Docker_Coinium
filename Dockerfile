FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN mkdir -p /usr/local/bin/Coiniumserv

ADD http://www.blinkdynamics.uk:10999/Coiniumserv /usr/local/bin/
RUN chmod u+x -R /usr/local/bin/Coiniumserv/

CMD ["mono", "/usr/local/bin/Coiniumserv/CoiniumServ.exe"]
