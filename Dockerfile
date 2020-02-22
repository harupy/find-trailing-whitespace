FROM alpine/git:v2.24

ENV WORKDIR="/find-trailing-whitespace"
WORKDIR ${WORKDIR}

RUN apk add bash
COPY ./entrypoint.sh ${WORKDIR}/entrypoint.sh

ENTRYPOINT bash ${WORKDIR}/entrypoint.sh
