# Base Image
FROM microsoft/vsts-agent

# Update packages and install new ones
RUN sudo apt-get update \
  && sudo apt-get upgrade -y \
  && sudo apt install apt-utils unzip -y

# Install Terraform
RUN curl -O https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip \
  && unzip terraform_0.11.7_linux_amd64.zip -d /usr/local/bin/ \
  && export PATH="$PATH:/usr/local/bin"

# Insntall NPM Package
RUN sudo npm install -g eslint @vue/cli @vue/eslint-config-standard

# Set env variables
ENV VSTS_AGENT='$(hostname)-agent'
ENV VSTS_WORK='/var/vsts/$VSTS_AGENT'

CMD ["./start.sh"]