#!/bin/bash

# Script to fix schema.org JSON data issues

# Fix trailing quote in schema.org URL
echo "Fixing schema.org JSON data in index.html..."
find . -name "*.html" -type f -exec sed -i '' -e 's|https://businessdatasolutions.github.io/haidy"|https://businessdatasolutions.github.io/haidy|g' {} \;

# Fix trailing quote in trainings page
echo "Fixing schema.org JSON data in trainings page..."
find ./trainings -name "*.html" -type f -exec sed -i '' -e 's|https://businessdatasolutions.github.io/haidy/"|https://businessdatasolutions.github.io/haidy|g' {} \;

# Update old index.nl.html references
echo "Updating old index.nl.html references..."
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/index.nl.html|href="/haidy/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/news.nl.html|href="/haidy/news/|g' {} \;

# Fix image paths in news articles
echo "Fixing image paths in news articles..."
find ./news -name "*.html" -type f -exec sed -i '' -e 's|src="../images/|src="/haidy/images/|g' {} \;

echo "All schema.org JSON data and remaining path issues fixed!"