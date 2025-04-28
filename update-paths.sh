#!/bin/bash

# Update all HTML files to use /haidy/ in paths for GitHub Pages
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/|href="/haidy/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|src="/|src="/haidy/|g' {} \;

# Fix any email addresses that may have been accidentally changed
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/mailto:|href="mailto:|g' {} \;

# Fix any external links that may have been accidentally changed
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/https:|href="https:|g' {} \;

echo "Path updates completed."