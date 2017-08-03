FROM mono:latest

EXPOSE 80
EXPOSE 3333

RUN apt-get update && apt-get install -y \
    wget 

RUN mkdir /CoiniumServ && cd /CoiniumServ && wget -np -nH -r http://www.blinkdynamics.uk/bin/

CMD ["mono", "/CoiniumServ/bin/Release/CoiniumServ.exe"]
