#!/bin/bash

# Set the number of words for the password
WORDS=5

# List of words from dictionary, filtered for lowercase alphabetic words
words=$(grep -x '[a-z]*' /usr/share/dict/words | shuf --random-source=/dev/urandom -n "${WORDS}")

# Join the words with a hyphen
password=$(echo "${words}" | paste -sd "-")

# Output the generated password
echo "$password"
