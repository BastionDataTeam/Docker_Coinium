FROM mono:3.12

EXPOSE 80
EXPOSE 3333

RUN apt-get update && apt-get install -y \
    wget \
    nano

RUN mkdir /usr/local/bin/CoiniumServ/ && cd /usr/local/bin/CoiniumServ/ && wget -np -nH -r http://www.blinkdynamics.uk/build/

CMD ["mono", "/usr/local/bin/CoiniumServ/CoiniumServ.exe"]
