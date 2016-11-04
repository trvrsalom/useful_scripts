echo "This will remove all files with the following extensions in this" 
echo "directory and all subdirectories:"
echo -e "\t .class"
read -r -p "Are you sure? [Y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo "Removing: "
    find . -type f -name "*.class"
    find . -type f -name "*.class" -delete
else
    echo "Exiting."
fi
