FROM pandoc/ubuntu-latex:latest

RUN apt-get update && apt-get install -y fonts-dejavu-core fonts-noto-cjk && apt-get -y autoclean

RUN tlmgr update --self && tlmgr update --all && tlmgr install \ 
collection-langcjk \
collection-langchinese \
collection-langkorean \
collection-langjapanese \
collection-langgreek

WORKDIR /data