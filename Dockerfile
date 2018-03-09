FROM ubuntu:16.04

MAINTAINER Abdullah Ahsan <ahsan.abdulah@gmail.com>

RUN apt-get update
RUN apt-get install -y texlive

ARG workdir=/projects/latex/
RUN mkdir -p ${workdir}
WORKDIR ${workdir}

COPY hello.tex /projects/latex-sample/

CMD ["pdflatex", "/projects/latex-sample/hello.tex"]
