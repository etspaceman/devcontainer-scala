FROM eclipse-temurin:21

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano vim-tiny git gnupg2 curl wget unzip zip htop -y

# Install Scala + SBT
RUN curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup -y
