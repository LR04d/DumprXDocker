FROM ubuntu:20.04

RUN apt update && apt install -y software-properties-common
RUN apt install -y python3-pip git sudo
WORKDIR /home
RUN git clone https://github.com/DumprX/DumprX.git
WORKDIR /home/DumprX/
RUN pwd 
RUN sed -i 's/ rar / /' setup.sh
RUN ./setup.sh

ENTRYPOINT [ "/bin/bash"]