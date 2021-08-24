# create Ubuntu as base image
FROM ubuntu:20.04

# install packages
RUN apt-get update && apt-get install -y git python3.8 python3-pip
#RUN pip install jupyterlab pymc3 Theano-PyMC
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

EXPOSE 8888

CMD ["jupyter-notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

