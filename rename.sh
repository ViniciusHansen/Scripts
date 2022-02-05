#!/bin/bash

for filename in ./*; do
  newFilename=$(sed 's/.m4a//' <<< "$filename")
  mv "$filename" "$newFilename"
done
