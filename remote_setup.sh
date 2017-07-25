sudo locale-gen ru_RU.UTF-8

# install some libraries for standard python
sudo apt-get -y install python-pip
pip install numpy scipy pandas scikit-learn jupyter matplotlib


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


# install vowpal wabbit
sudo apt-get -qq install vowpal-wabbit
