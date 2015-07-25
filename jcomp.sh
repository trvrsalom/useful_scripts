RED='\033[0;31m'
GRE='\033[0;32m';
NC='\033[0m'
if [ ! "$1" == "" ]; then
  echo "Compiling..."
  RESP= $(javac $1.java)
  if [[ "$RESP" == "" ]]; then
      printf "${GRE}Success!${NC}\nRunning Program:\n"
      echo "======================"
      java $1
      find . -name '*.class' -delete
  else
      printf "${RED}Looks like you have errors...${NC}\n"
      echo "======================"
      echo "$RESP";

  fi
else
  printf "${RED}Please provide an existing java file without the .java extension. (./jcomp.sh yourjavafile)${NC}\n"
fi
