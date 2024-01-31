#!/bin/bash

# test sudo prev
is_sudo=`groups $USER | grep sudo | wc -l`

if [ ${is_sudo} -eq 1 ]
then
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install tmux vim htop
fi

pip3 install --upgrade pip bpytop jupyterlab \
  jupyter-kite
  

for item in \
  jupyterlab-toc \
  jupyterlab-drawio \
  jupyterlab-execute-time \
  jupyterlab-spreadsheet \
  jupyterlab-topbar-extension \
  jupyterlab-kite \
  jupyterlab-variableInspector \
  jupyter-matplotlib \
  jupyterlab-plotly
do
    jupyter labextension install @jupyterlab/$item
done
