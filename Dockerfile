FROM openjdk:latest
RUN mkdir Tachidesk
RUN wget https://raw.githubusercontent.com/AriaMoradi/Tachidesk/repo/Tachidesk-latest.jar /Tachidesk/latest.jar
EXPOSE 4567
CMD ["java","-jar","/Tachidesk/latest.jar"]
