FROM silsuer/yapi

RUN npm install -g node-gyp

ADD ./data /my-yapi

RUN mkdir -p /data

ADD ./run.sh /data/run.sh

RUN chmod +x /data/run.sh

EXPOSE 3000
EXPOSE 9090
EXPOSE 27017

ENTRYPOINT /data/run.sh
