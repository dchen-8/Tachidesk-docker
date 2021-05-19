FROM openjdk:latest

LABEL maintainer "arbuild"

RUN useradd -ms /bin/sh arbuilder

RUN mkdir -p /home/arbuilder && chown -R arbuilder:arbuilder /home/arbuilder

USER arbuilder

WORKDIR /home/arbuilder

RUN curl -s --create-dirs -L https://raw.githubusercontent.com/arbuilder/Tachidesk-docker/main/startup_script.sh -o /home/arbuilder/startup/startup_script.sh

RUN curl -L $(curl -s https://api.github.com/repos/Suwayomi/Tachidesk/releases/latest | grep -o "https.*jar") -o /home/arbuilder/startup/tachidesk_latest.jar

EXPOSE 4567

CMD ["/bin/sh", "/home/arbuilder/startup/startup_script.sh"]
