RED='\033[0;31m'
GRE='\033[0;32m';
NC='\033[0m'
if [ ! "$1" == "" ]; then
  echo "Compiling..."
  RESP= $(mcs $1.cs)
  if [[ "$RESP" == "" ]]; then
      printf "${GRE}Success!${NC}\nRunning Program:\n"
      echo "======================"
      mono $1.exe
      find . -name '*.exe' -delete
  else
      printf "${RED}Looks like you have errors...${NC}\n"
      echo "======================"
      echo "$RESP";

  fi
else
  printf "${RED}Please provide an existing C# file without the .cs extension. (./cscomp.sh yourcsfile)${NC}\n"
fi
