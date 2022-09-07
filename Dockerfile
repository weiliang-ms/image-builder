FROM openjdk:8u342-jdk AS builder
WORKDIR /work
RUN curl -O -L https://github.com/stevespringett/nist-data-mirror/releases/download/nist-data-mirror-1.6.0/nist-data-mirror.jar \
    && java -jar nist-data-mirror.jar /work/hddocs

FROM sspringett/nvdmirror:1.6.0
COPY --from=builder /work/hddocs /usr/local/apache2/hddocs
RUN ls /usr/local/apache2/hddocs
