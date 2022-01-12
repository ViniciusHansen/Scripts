find . -name "*.md" -exec sh -c 'mv "$1" "${1%.md}.txt"' _ {} \;
