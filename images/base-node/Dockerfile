FROM centos:7

LABEL maintainer="Mounir ZAGHAB"

RUN yum install -y wget screen sudo && yum clean all

RUN useradd -m -s /bin/bash deploy_user

RUN mkdir -p /home/deploy_user/.ssh
RUN chmod 0700 /home/deploy_user/.ssh
COPY files/id_rsa.pub /home/deploy_user/.ssh/authorized_keys
RUN chmod 0600 /home/deploy_user/.ssh/authorized_keys
RUN chown -R  deploy_user /home/deploy_user

CMD [ "/bin/bash" ]


