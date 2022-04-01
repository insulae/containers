# docker build -t lara:1

FROM  bitnami/laravel:9

# Install dependencies
RUN apt-get update && apt-get install -y \
ghostscript \
nano

RUN apt-get clean autoclean
RUN apt-get autoremove --yes
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/

