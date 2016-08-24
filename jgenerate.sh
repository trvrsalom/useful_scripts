#!/bin/bash
read -p 'Class Name: ' classname
touch "${classname}.java"
echo -e "class ${classname} {
\t public static void main(String[] args) {
\t }
}" >> "${classname}.java"
