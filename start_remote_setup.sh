# import config file
source 'config.txt'

# copy key for jupyter
scp -i $pemfile ./jupyter.pem ubuntu@$remote_host:~/

# copy code and data
scp -i $pemfile example.ipynb ubuntu@$remote_host:~/

# copy script for install and run it
ssh -i $pemfile ubuntu@$remote_host 'bash -s' < remote_setup.sh $jupyter_password
