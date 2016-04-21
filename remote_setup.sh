sudo locale-gen ru_RU.UTF-8

# miniconda with some libraries
wget -c https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Linux-x86_64.sh
bash Miniconda3-4.0.5-Linux-x86_64.sh -b -p /home/ubuntu/miniconda
export PATH=/home/ubuntu/miniconda/bin:$PATH
conda install -y numpy scipy pandas scikit-learn jupyter matplotlib


# some useful things
sudo apt-get -y install git
sudo apt-get -y install htop


# it is all for xgboost
sudo apt-get -y install make
sudo apt-get update
sudo apt-get -y install gcc
sudo apt-get -y install g++
sudo git clone --recursive https://github.com/dmlc/xgboost
cd xgboost
sudo ./build.sh
cd python-package
sudo ../../miniconda/bin/python setup.py install
cd ../..


# create ipython profile
ipython profile create nbserver

printf "\n# Configuration file for ipython-notebook.\n
c = get_config()\n
# Notebook config\n
c.NotebookApp.password = u'"$1"'\n
c.NotebookApp.ip = '*'\n
c.NotebookApp.open_browser = False\n
c.NotebookApp.port = 8888\n" > ~/.ipython/profile_nbserver/ipython_notebook_config.py

# open ipython (better from new connection)
# jupyter notebook --config="~/.ipython/profile_nbserver/ipython_notebook_config.py" --certfile=jupyter.pem