FROM ubuntu:18.04

RUN apt update && apt -y install curl unzip

RUN curl -LO http://blzdistsc2-a.akamaihd.net/Linux/SC2.4.7.1.zip && \
    unzip -P "iagreetotheeula" ./SC2.4.7.1.zip

CMD [ "./StarCraftII/Versions/Base70154/SC2_x64", "-listen", "127.0.0.1", "-port", "5000" ]
