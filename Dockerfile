# Base docker image
FROM infomaniac50/docker-gl
MAINTAINER Derek Chafin <infomaniac50@gmail.com>

# Install wget and curl
RUN apt-get install -y wget curl

# Install Mozilla Firefox
RUN apt-get install -y firefox

# Fetch Google Chrome signing key
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# Add Google Chrome apt repository
RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# Fetch the new repositories
RUN apt-get update
# Install Google Chrome
RUN apt-get install -y google-chrome-stable

# Fetch Opera signing key
RUN wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
# Add Opera apt repository
RUN sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
# Fetch the new repositories
RUN apt-get update
# Install Opera
RUN yes yes | apt-get install opera-stable

CMD ["firefox"]