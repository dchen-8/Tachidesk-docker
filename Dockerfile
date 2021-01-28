FROM openjdk:latest
RUN mkdir Tachidesk
RUN curl -o /Tachidesk/latest.jar https://raw.githubusercontent.com/AriaMoradi/Tachidesk/repo/Tachidesk-latest.jar 
EXPOSE 4567
CMD ["java","-jar","/Tachidesk/latest.jar"]
