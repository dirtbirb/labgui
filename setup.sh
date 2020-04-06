
REMOTE_URL="https://github.com/dirtbirb/"
MODULE_DIR="modules/"

echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
apt-get install -y $(awk '{print $1'} requirements.txt)
git submodule update --init ${MODULE_DIR}*
