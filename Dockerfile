FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt install ansible -y && \
    apt install sshpass -y
