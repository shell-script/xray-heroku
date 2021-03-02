FROM teddysun/xray:1.3.1

ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh