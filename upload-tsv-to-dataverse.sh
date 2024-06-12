#!/bin/bash

# Loop through each file in the current directory
for file in *; do
  # Check if it's a regular file
  if [[ -f "$file" ]]; then
    # Use cURL to make a POST request to localhost:8080 with the file content
    curl http://localhost:8080/api/admin/datasetfield/load -H "Content-type: text/tab-separated-values" -X POST --upload-file "$file"
  fi
done


