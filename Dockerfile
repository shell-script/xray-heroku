FROM teddysun/xray:1.4.1

ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh