FROM alpine:3.4

# Install dependencies.
RUN apk add --no-cache --update \
    libffi-dev \
    openssl-dev \
    python \
    python-dev \
    py-pip \
    build-base

RUN pip install ansible

# Install Ansible inventory file
RUN mkdir -p /etc/ansible/ && echo $'[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts