echo "WARNING: Script not compelete"
while true; do
    read -p "Do you want to continue?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Hello $USER"
echo "Updating package list..."
echo
sudo apt update
echo "Getting latest packages..."
echo
sudo apt -y dist-upgrade
echo "Installing pip3..."
echo
sudo apt install -y python3-pip
latest_nvidia_driver=$(ubuntu-drivers list | tail -1)
echo "The latest driver is...${latest_nvidia_driver}"
echo
sudo apt install ${latest_nvidia_driver}
