FROM node:5.11.0
RUN apt-get update && \
      apt-get -y dist-upgrade && \
      apt-get install -y \
          imagemagick \
          inkscape \
          make \
          texlive-full
RUN npm install madoko -g
RUN apt-get install -y \
      inotify-tools \
      xzdec
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated fonts-noto ttf-mscorefonts-installer
RUN fc-cache -f -v
RUN tlmgr init-usertree
COPY add_user add_user
RUN ./add_user
USER developer
