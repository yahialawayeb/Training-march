#!/bin/bash

# Get the root directory of the Git repository
ROOT=$(git rev-parse --show-toplevel)

# Create a temporary file to hold the list of files to exclude
EXCLUDE_FILE=$(mktemp)

# Write the list of ignored files to the exclude file
git ls-files --others --ignored --exclude-standard --directory > $EXCLUDE_FILE

# Create a zip file of the source directory, excluding the files listed in the exclude file
cd $ROOT && zip -r source.zip . -x@${EXCLUDE_FILE}

# Encrypt the zip file using openssl
read -s -p "Enter password to encrypt the zip file: " PASSWORD

openssl enc -aes-256-cbc -salt -in source.zip -out source.zip.enc -pass pass:$PASSWORD

# Prompt the user to enter the recipient's email address
read -p "Enter the recipient's email address: " EMAIL

# Prompt the user to enter the email subject
read -p "Enter the email subject: " SUBJECT

# Prompt the user to enter the email body
read -p "Enter the email body: " BODY

# Send the email with the encrypted zip file as an attachment
echo "$BODY" | mailx -s "$SUBJECT" -a source.zip.enc $EMAIL

# Remove the unencrypted zip file
rm source.zip

# Remove the temporary exclude file
rm $EXCLUDE_FILE
