
REMOTE_URL="https://github.com/dirtbirb/"
MODULE_DIR="modules/"

apt-get install -y -q $(awk '{print $1'} requirements.txt)

# git submodule add ${REMOTE_URL}labgui-gui ${MODULE_DIR}gui
# git submodule add ${REMOTE_URL}labgui-hardware ${MODULE_DIR}hardware
git submodule update --init ${MODULE_DIR}*
# git submodule update --init ${MODULE_DIR}hardware
