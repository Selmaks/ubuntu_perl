FROM selmaks/mybase:latest
ENV PUID 99
ENV PGID 100
RUN apt-get update && apt-get install -y cron dialog libcam-pdf-perl perl libfurl-perl libxml-simple-perl libclone-perl libdatetime-perl libjson-perl libxml-writer-perl libhtml-tableextract-perl
CMD cron apt-get update && apt-get -y install $packages || : && bash && tail -f /dev/null
ENV TZ Australia/Adelaide
ENV packages mc nano sudo apt-utils
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/scripts
VOLUME /home/abc
