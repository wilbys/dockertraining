FROM library/debian:stretch
MAINTAINER wilby
RUN    apt-get update && \
       apt-get -y install apache2 
#       ADD / COPY
#       CMD
#       ENTRYPOINT
#       EXPOSE
#COPY myscript.sh /
ENTRYPOINT [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
#ENTRYPOINT [ "/myscript.sh" ]
#ENTRYPOINT [ "/usr/sbin/apachectrl","-D", "FOREGROUND" ]
#ENTRYPOINT [ /bin/bash ]
#CMD [/bin/apachectl -D FOREGROUND -v /data/apache_log:/var/log/apache2]
