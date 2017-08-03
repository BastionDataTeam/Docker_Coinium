FROM mono:latest

EXPOSE 80
EXPOSE 3333

RUN apt-get update && apt-get install -y \
    wget 

RUN mkdir /usr/local/bin/CoiniumServ/ && cd /usr/local/bin/CoiniumServ/ && wget -np -nH -r http://www.blinkdynamics.uk/bin/

CMD ["mono", "/usr/local/bin/CoiniumServ/bin/Release/CoiniumServ.exe"]
