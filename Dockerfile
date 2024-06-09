FROM oraclelinux:9

ARG TARGETPLATFORM
RUN case ${TARGETPLATFORM} in \
         "linux/amd64")  TINI_ARCH=x86_64  ;; \
         "linux/arm64")  TINI_ARCH=aarch64  ;; \
         "linux/arm/v7") TINI_ARCH=armhf  ;; \
         "linux/arm/v6") TINI_ARCH=armel  ;; \
         "linux/386")    TINI_ARCH=i386   ;; \
    esac \
     && yum install -y https://downloads.mysql.com/archives/get/p/43/file/mysql-shell-8.0.36-1.el9.${TINI_ARCH}.rpm \
     && yum clean all

ADD ./mysqlsh.sh /mysqlsh.sh

RUN chmod +x /mysqlsh.sh

ENTRYPOINT [ "/mysqlsh.sh" ]

CMD ["mysqlsh"]