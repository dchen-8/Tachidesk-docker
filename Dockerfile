FROM openjdk:latest
ADD https://raw.githubusercontent.com/AriaMoradi/Tachidesk/repo/Tachidesk-latest.jar /Tachidesk/latest.jar
EXPOSE 4567
CMD ["java","-jar","/Tachidesk/latest.jar"]
