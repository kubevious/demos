FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y \
    curl \
    wget

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin

RUN wget https://github.com/mikefarah/yq/releases/download/v4.18.1/yq_linux_amd64 -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq

RUN apt-get install -y vim

RUN apt-get install unzip -y

WORKDIR /root

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install --update

RUN aws eks update-kubeconfig --region REGION  --name NAME --profile PROFILE

COPY deployment.yaml .
COPY kubeconfig.yaml ./.kube/config

COPY validate.sh .

CMD /bin/bash