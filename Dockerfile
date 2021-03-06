# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "akankshabansal27@gmail.com"

# set a health check and 
HEALTHCHECK --interval=5s \
    --timeout=5s \
    CMD curl -f http://3.133.97.78/:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000