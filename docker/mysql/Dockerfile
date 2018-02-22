ARG MYSQL_VERSION=8.0
FROM mysql:${MYSQL_VERSION}

RUN apt-get update && \
    apt-get install less && \
    rm -rf /var/lib/apt/lists/*

RUN echo "\\\timing\n\\pset pager on\n\\setenv LESS '-iMSx4 -FX'\n" > ~/.mysqlrc

#####################################
# Set Timezone
#####################################

ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql/

ADD my.cnf /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

EXPOSE 3306
