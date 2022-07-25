FROM python

ARG version

RUN apt update && apt install fzf

COPY dist/dataflow-meta-${version}.tar.gz dataflow-meta.tar.gz

RUN pip3 install dataflow-meta.tar.gz
