#!/bin/bash

# Load configuration from file
source config.sh

# Clone the repository to the local directory
git clone "http://$USERNAME:$SSHTOKEN@github.com/$USERNAME/$REPO.git" $LOCAL_DIR

# Loop through all files in the cloned repository
find $LOCAL_DIR -type f | while read file

do           
        content=$(cat $file)

        # Escape the content variable using jq
        escaped_content=$(jq -Rs . <<<"$content")
        echo $escaped_content
        # Execute the curl command with the $content variable
        response=$(curl -sS https://api.openai.com/v1/chat/completions \
        -H 'Content-Type: application/json' \
        -H 'Authorization: Bearer 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' \
        -d "{
        \"model\": \"gpt-3.5-turbo\",
        \"messages\": [{\"role\": \"user\", \"content\": $escaped_content}]
        }")

        echo $response
        # Extract the content using jq and sed commands
        content=$(echo $response | jq '.choices[0].message.content')

        # Replace escaped newlines with actual line breaks using sed
        echo -e $content | sed 's/\\n/\n/g' > result.txt
    
done