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
  chmod u+x ~/.scripts/$filename
done
for filename in *.py;
  do echo "${filename}";
  cp $filename ~/.scripts/$filename
  chmod u+x ~/.scripts/$filename
done
if [ -f ~/.bashrc ]; then
  sed '/USEFUL_SCRIPTS-1/,/USEFUL_SCRIPTS-2/d' ~/.bashrc > ~/tempbashrc;
  mv ~/tempbashrc ~/.bashrc;
  echo '#USEFUL_SCRIPTS-1' >> ~/.bashrc;
  echo 'export PATH=$PATH:~/.scripts' >> ~/.bashrc
  for filename in *.sh; do echo alias ${filename%.*}=""${filename}"">>~/.bashrc; done;
  echo '#USEFUL_SCRIPTS-2' >> ~/.bashrc;
  source ~/.bashrc
else
  sed '/USEFUL_SCRIPTS-1/,/USEFUL_SCRIPTS-2/d' ~/.bash_profile >> ~/tempbashprofile;
  mv ~/tempbashprofile ~/.bash_profile;
  echo '#USEFUL_SCRIPTS-1' >> ~/.bash_profile;
  echo 'export PATH=$PATH:~/.scripts' >> ~/.bash_profile
  for filename in *.sh; do echo alias ${filename%.*}=""${filename}"">>~/.bash_profile; done;
  echo '#USEFUL_SCRIPTS-2' >> ~/.bash_profile;
  source ~/.bash_profile
fi
echo "======================"
echo "Done!";
