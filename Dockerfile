FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Testando0/Xx/raw/refs/heads/main/aa https://github.com/Testando0/Xx/raw/refs/heads/main/ab https://github.com/Testando0/Xx/raw/refs/heads/main/ac https://github.com/Testando0/Xx/raw/refs/heads/main/ad https://github.com/Testando0/Xx/raw/refs/heads/main/ae
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
COPY . .
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh"]
