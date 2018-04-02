FROM moritzheiber/alpine-base
LABEL maintainer="Moritz Heiber <hello@heiber.im>"

RUN apk --no-cache add duplicity py-paramiko

VOLUME ["/root/.cache/duplicity"]

ENTRYPOINT /usr/bin/duplicity
CMD ["--help"]
