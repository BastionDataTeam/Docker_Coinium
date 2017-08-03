FROM mono:latest

EXPOSE 80
EXPOSE 3333

RUN apt upgrade && apt install wget

RUN mkdir /CoiniumServ && cd /CoiniumServ && wget -np -nH -r http://www.blinkdynamics.uk/bin/

CMD ["mono", "/CoiniumServ/bin/Release/CoiniumServ.exe"]
