FROM harbor.baijiahulian.com/basic/nginx:1.14.0

MAINTAINER op-notice "op-notice@baijiahulian.com"

COPY ./prophet.baijiahulian.com.conf /tmp/
COPY ./prophet.baijiahulian.com.tgz /tmp/
COPY ./logFormat.conf /tmp/

EXPOSE 80 443

CMD ["/bin/bash", "/root/run.sh","jcjs","prophet.baijiahulian.com"]
