# Base docker image
FROM infomaniac50/docker-gl
MAINTAINER Derek Chafin <infomaniac50@gmail.com>

# Install Mozilla Firefox
RUN apt-get install -y firefox

CMD ["firefox"]