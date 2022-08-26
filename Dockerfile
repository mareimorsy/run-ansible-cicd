FROM amazon/aws-cli

# COPY aws /bin/aws

# ENV PATH=~/.local/bin

RUN /bin/yum update -y && \
    /bin/yum install -y python3
RUN /bin/python3 -m pip install --user ansible

ENV PATH=~/.local/bin

ENTRYPOINT [ "" ]