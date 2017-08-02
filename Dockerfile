FROM mono:3.12

ADD http://www.blinkdynamics.uk/bin/ /usr/local/bin/CoiniumServ/

EXPOSE 80
EXPOSE 3333

CMD ["mono", "/usr/local/bin/CoiniumServ/bin/Release/CoiniumServ.exe"]
