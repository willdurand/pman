FROM debian:stretch
MAINTAINER William Durand <will+git@drnd.me>

RUN apt-get update && apt-get install --no-install-recommends -y php-pear man

RUN pear install doc.php.net/pman
RUN pear upgrade doc.php.net/pman
