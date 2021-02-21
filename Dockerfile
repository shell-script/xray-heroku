FROM alpine:latest

RUN apk update && apk add --no-cache ca-certificates curl unzip && \
    curl -L -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip /tmp/xray.zip -d / && \
    chmod +x /xray


ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh