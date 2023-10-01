#!/bin/bash

# Read each recipient name from recipients
while read -r name; do
    # Replace RECIPIENT_NAME with the current name in the message template
    sed "s/RECIPIENT_NAME/$name/g" message_template > "message_$name"
done < recipients
