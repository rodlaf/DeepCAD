#
# CPU inference container
#

FROM miniconda

# install torch separately due to extra-index-url quirkiness
RUN pip install torch==1.13.0+cpu --extra-index-url https://download.pytorch.org/whl/cpu

# install other dependencies
RUN pip install -e .

# weird error
ENV PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION python

# install OCC (TODO)
 