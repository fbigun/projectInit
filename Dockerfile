FROM ubuntu:16.04
MAINTAINER Fbigun <rsdhlz@qq.com>

ADD
WORKDIR

RUN pip install -r requirements.txt && \
    pyinstaller --onefile -y application.py  && \
    mv dist/application /usr/bin/application && rm -r *

EXPOSE 3000

CMD [ "application"]