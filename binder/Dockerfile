FROM gcr.io/kaggle-images/python:v60

RUN apt-get texlive && \
    texlive-latex-base &&\
    texlive-latex-recommended &&\
    texlive-science &&\
    texlive-latex-extra &&\
    texlive-fonts-recommended &&\
    texlive-fonts-extra &&\
    dvipng &&\
    lmodern &&\
    ghostscript &&\
    context &&\
    texlive-xetex &&\
    texlive-luatex &&\
    fonts-lato &&\
    vim &&\
    qrencode

# install the notebook and nbgitpuller packages
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook && \
    pip install --no-cache cbayes && \
    pip install --no-cache jupyterlab>=0.35 && \
    pip install --no-cache jupyterlab-git && \
    pip install --no-cache jupyterlab_latex>=0.4.1 && \
    pip install --no-cache nbgitpuller

RUN jupyter serverextension enable --py nbgitpuller --sys-prefix
RUN jupyter labextension install @jupyterlab/git
RUN jupyter serverextension enable --py jupyterlab_git --sys-prefix
RUN jupyter labextension install @jupyterlab/latex@0.6.1
RUN jupyter labextension enable --py @jupyterlab/latex@0.6.1 --sys-prefix
RUN jupyter lab build

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}
USER ${USER}
RUN git config --global credential.helper "cache --timeout 144000"
