#!/bin/bash
# a calculator script which supports single-shot or batch calculations
add() {
  echo $(($1 + $2))
}

sub() {
  echo $(($1 - $2))
}

mul() {
  echo $(($1 * $2))
}

div() {
  echo $(($1 / $2))
}

from_file=false

while getopts "f" opt; do
  case $opt in
    'f') while read -a file; do\
           case "${file[1]}" in\
             '+') add "${file[0]}" "${file[2]}";;
             '-') sub "${file[0]}" "${file[2]}";;
             '/') div "${file[0]}" "${file[2]}";;
             'x') mul "${file[0]}" "${file[2]}";;
           esac
         done;\
         from_file=true;;
  esac
done

if [ ${from_file} == false ]; then
  case $2 in
    '+') add $1 $3;;
    '-') sub $1 $3;;
    '/') div $1 $3;;
    'x') mul $1 $3;;
  esac
fi


