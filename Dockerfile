FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt install ansible -y && \
    apt install openssh-server && \
    mkdir /var/run/sshd && \
    useradd -m -s /bin/bash ubuntu

USER ubuntu
RUN mkdir /home/ubuntu/playbook && \
    ssh-keygen -t rsa -f /home/ubuntu/.ssh/id_rsa -N ''

WORKDIR /home/ubuntu/playbook

ENTRYPOINT [ "ansible-playbook"]
