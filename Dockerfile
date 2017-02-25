FROM debian:latest

MAINTAINER Andreas Sorge <andsor@mailbox.org>

RUN apt-get update \
  && apt-get install -y --no-install-recommends texlive \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/tex
WORKDIR /var/tex
CMD ["/usr/bin/pdflatex", "--version"]
