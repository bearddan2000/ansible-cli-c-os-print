FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install ansible git \
    && git clone https://github.com/bearddan2000/ansible-lib-playbooks.git \
    && chmod -R +x ansible-lib-playbooks \
    && ansible-playbook ansible-lib-playbooks/lang/c.yml

COPY bin/ .

RUN gcc -o main *.c \
    && chmod +x main*

CMD "./main"
