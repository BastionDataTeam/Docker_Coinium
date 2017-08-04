FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN mkdir -p /usr/local/bin/Coiniumserv

ADD http://www.blinkdynamics.uk:10999/Coiniumserv/coiniumserv.tar.gz /usr/local/bin/ && cd /usr/local/bin/
RUN tar -xvf /usr/local/bin/coiniumserv.tar.gz
RUN chmod u+x -R /usr/local/bin/coiniumserv/

CMD ["mono", "/usr/local/bin/coiniumserv/CoiniumServ.exe"]
