FROM mono:3.12

RUN yum -y update \
 && yum -y install wget \
 && wget -np -nH -r http://www.blinkdynamics.uk/bin/ /usr/local/bin/CoiniumSer

RUN chmod u+x /usr/local/bin/CoiniumServ

EXPOSE 80
EXPOSE 3333

CMD ["mono", "/usr/local/bin/CoiniumServ/CoiniumServ.exe"]
