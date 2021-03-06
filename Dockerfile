# Alex' GPU tools
#
# Alexander Ecker
# 2015-05-09

FROM bethgelab/jupyter-deeplearning-x:cuda8.0-cudnn5
MAINTAINER Alexander Ecker "alexander.ecker@uni-tuebingen.de"

#install datajoint and dependencies
RUN pip3 install --upgrade pip
RUN pip3 install pymysql pandas networkx
RUN pip3 install git+https://github.com/datajoint/datajoint-python

#install python profiling tool
RUN pip3 install line_profiler

RUN cd /tmp && \
    git clone https://github.com/atlab/commons.git && \
    python3 commons/python/setup.py install

RUN apt-get update -qq && \
    apt-get install -yq python3-dev python3-setuptools && \
    apt-get install -yq libtiff4-dev libjpeg8-dev zlib1g-dev \
        libfreetype6-dev liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk && \
    apt-get install -yq python3-pip && \
    pip3 install Pillow && \
    apt-get install -yq imagemagick && \
    ln -s /usr/bin/display /usr/bin/xv

RUN pip3 install ipywidgets
RUN pip3 install mpld3 sh yapf imageio

# Older version of matplotlib, which works better with Seaborn
#RUN pip3 uninstall -y matplotlib
#RUN pip3 install matplotlib==1.5

RUN pip3 install tqdm

RUN pip3 install python-dateutil

RUN cd /tmp && \
    git clone https://github.com/pdollar/coco.git && \
    cd coco/PythonAPI && \
    python3 setup.py build_ext install && \
    rm -rf /tmp/coco

RUN apt-get install -y locate && updatedb

