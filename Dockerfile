FROM amazon/aws-cli

# COPY aws /bin/aws

# ENV PATH=~/.local/bin

RUN /bin/yum update -y && \
    /bin/yum install -y python3
RUN /bin/python3 -m pip install --user ansible
RUN /bin/yum install -y openssh-clients

ENV PATH=$PATH:~/.local/bin:/bin

ENTRYPOINT [ "" ]