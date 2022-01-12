find . -name "*.txt" -exec sh -c 'mv "$1" "${1%.txt}.md"' _ {} \;
