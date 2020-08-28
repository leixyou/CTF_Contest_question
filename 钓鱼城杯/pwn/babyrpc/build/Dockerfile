FROM ubuntu:18.04
RUN sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/ftp.sjtu.edu.cn/g" /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade
RUN mkdir /chall
COPY rpcwrapper /chall/rpcwrapper
COPY babyrpc /chall/babyrpc
COPY flag /flag
RUN chmod 444 /flag
RUN chmod 755 /chall/rpcwrapper
RUN chmod 755 /chall/babyrpc
USER nobody
CMD ["/chall/rpcwrapper","6666","/chall/babyrpc"]
EXPOSE 6666/tcp
