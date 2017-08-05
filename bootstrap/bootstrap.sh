sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install libudev-dev libpcap-dev npm node -y
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb

# install dasher
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 8
git clone https://github.com/maddox/dasher.git
cd dasher
npm install
cd ..

sudo pip3 install sqlalchemy phue python_openzwave homeassistant
