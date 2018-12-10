FROM mysql

RUN groupadd -g 1000 user && \
    useradd -r -u 1000 -g user user
#USER user

ADD docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
