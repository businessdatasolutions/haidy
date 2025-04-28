#!/bin/bash

# Fix double haidy paths in all HTML files
find . -name "*.html" -type f -exec sed -i '' -e 's|/haidy/haidy/|/haidy/|g' {} \;

echo "Fixed double haidy paths in HTML files."