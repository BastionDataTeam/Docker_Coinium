FROM mono:latest



RUN apt -y upgrade
RUN apt -y install wget

EXPOSE 80
EXPOSE 3333
RUN mkdir /CoiniumServ
RUN cd /CoiniumServ
RUN wget http://www.blinkdynamics.uk/bin/

CMD ["mono", "/CoiniumServ/bin/Release/CoiniumServ.exe"]
