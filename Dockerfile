FROM debian:jessie
MAINTAINER William Durand <will+git@drnd.me>

RUN apt-get update
RUN apt-get install --no-install-recommends -y php-pear man

RUN pear install doc.php.net/pman
RUN pear upgrade doc.php.net/pman

ENTRYPOINT [ "/usr/bin/pman" ]
