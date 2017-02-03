# docker build -t ptimof/ghost .
#
# Build from the official release
FROM ghost

MAINTAINER Zack <zack@hypercubeplatforms.com>

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL https://recipes2.schollz.com
