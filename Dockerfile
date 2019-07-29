FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y \
    wget \
    ca-certificates \
    apt-transport-https \
    gnupg2 \
    curl \
    software-properties-common

# install powershell
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN add-apt-repository universe
RUN apt-get update -y && apt-get install -y powershell

# install node and gauge
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -y && apt-get install -y nodejs

RUN npm config set unsafe-perm true
RUN npm install -g npm@latest @getgauge/cli
ENV PATH=$HOME/.gauge:$PATH
RUN gauge install js 
RUN gauge install html-report
RUN gauge install xml-report
RUN gauge install screenshot

ENTRYPOINT ["gauge"]
CMD ["-h"]