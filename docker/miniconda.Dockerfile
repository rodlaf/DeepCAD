#
#   Base miniconda image with python 3.8
#

FROM debian:11

WORKDIR /

# install debian packages
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    && rm -rf /var/lib/apt/lists/*

# install miniconda
ENV CONDA_DIR /opt/conda
RUN wget \
        --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
        -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH