#!/bin/bash

# Set the number of words
WORDS=5

#  list of words from dictionary
words=$(cat /usr/share/dict/words | grep -x '[a-z]*' | shuf --random-source=/dev/urandom -n ${WORDS})

# Join the words with a hyphen
password=$(echo "${words}" | paste -sd "-")

# Echo password
echo "$password"
