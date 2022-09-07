FROM openjdk:8u342-jdk
WORKDIR /work
RUN curl -O -L https://github.com/stevespringett/nist-data-mirror/releases/download/nist-data-mirror-1.6.0/nist-data-mirror.jar \
    && java -jar nist-data-mirror.jar /work/nvdmirror
    
RUN ls /work -R
