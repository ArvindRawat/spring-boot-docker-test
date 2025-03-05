#Maven build container 
FROM maven:3.8.5-openjdk-17 AS maven_build
RUN mkdir -p /opt/service/libs
ENV LIBS_PATH=/opt/service/libs
COPY jar_file/SpringBootApplicatioTest-0.0.1-SNAPSHOT.jar $LIBS_PATH
CMD["java","-jar","/opt/service/libs/SpringBootApplicatioTest-0.0.1-SNAPSHOT.jar"]


