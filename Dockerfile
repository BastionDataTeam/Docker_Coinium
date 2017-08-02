FROM mono:3.12

ADD http://www.blinkdynamics.uk /usr/local/bin/CoiniumServ/

RUN chmod u+x /usr/local/bin/CoiniumServ

EXPOSE 80
EXPOSE 3333

CMD ["mono", "/usr/local/bin/CoiniumServ/CoiniumServ.exe"]
