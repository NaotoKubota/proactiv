###############################################################
# Dockerfile to build container images for proActiv
# Based on Debian, r-base 4.1.1
################################################################

FROM r-base:4.1.1

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <n.kubota@bioreg.kyushu-u.ac.jp>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies first
RUN apt-get -qq update && \
	apt-get -qq -y install libssl-dev/unstable libcurl4-openssl-dev libxml2-dev \
	vim less wget procps

# Install proActiv
RUN R -e "install.packages('BiocManager')" && \
	R -e "BiocManager::install('proActiv')"

# Set working directory
WORKDIR /home
