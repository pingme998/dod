FROM ubuntu
EXPOSE 8080
RUN apt update -y  && \
    apt install curl -y  && \
    apt install unrar -y  && \
    apt install unzip -y  && \
    apt install tor -y && \
    apt install proxychains4 -y &&\
    apt-get install procps -y
#RUN echo 'socks5 127.0.0.1 $PORT' >>/etc/proxychains4.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
