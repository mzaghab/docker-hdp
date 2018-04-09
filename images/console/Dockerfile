FROM centos:7

LABEL maintainer="Mounir ZAGHAB"

ENV ANSIBLE_VERSION 2.5.0

# TODO install ansible

# Install pip
RUN yum install -y epel-release && \
  yum install -y python2-pip && \ 
  pip install --upgrade pip

RUN yum groupinstall -y "Development Tools"
RUN yum install -y python-devel 

# Pre-requis Ansible
RUN yum install -y openssl-devel python-cffi python-jinja2 libffi libffi-devel

#pip install setuptools --upgrade
#pip install pbr
#pip install positional 
#pip install importlib 

# Ansible
RUN pip install ansible==$ANSIBLE_VERSION

#RUN groupadd --non-unique -g ${GROUP_ID} ${USER_NAME}
#RUN useradd -g ${GROUP_ID} -u ${USER_ID} -k /root -m ${USER_NAME}
RUN useradd -k /root -m deploy_user

CMD [ "/bin/bash" ]


