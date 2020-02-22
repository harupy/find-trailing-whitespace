FROM alpine/git:v2.24.1

ENV WORKDIR="/find-trailing-whitespace"
WORKDIR ${WORKDIR}

RUN apk add bash
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT bash /entrypoint.sh
