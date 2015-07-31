RED='\033[0;31m'
NC='\033[0m'
if [ -d "~/.scripts" ]; then
  echo "Scripts directory exists, moving on."
else
  echo "Creating scripts directory"
  mkdir ~/.scripts
fi
printf "${RED}Giving permissions to:${NC}\n"
echo "======================"
for filename in *.sh;
  do echo "${filename}";
  cp $filename ~/.scripts/$filename
done
if [ -f ~/.bashrc ]; then
  echo 'export PATH=$PATH:~/.scripts' >> ~/.bashrc
else
  echo 'export PATH=$PATH:~/.scripts' >> ~/.bash_profile
fi
echo "======================"
echo "Done!";
