#!/bin/bash

# Fix remaining path issues after Dutch conversion

# Fix JS paths in Dutch news article
echo "Fixing JS paths in nl news article..."
find ./news/nl -name "*.html" -type f -exec sed -i '' -e 's|src="../../../js/|src="/haidy/js/|g' {} \;

# Ensure consistent absolute paths in all HTML files
echo "Ensuring consistent absolute paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|href="./|href="/haidy/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|href="../|href="/haidy/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|href="../../|href="/haidy/|g' {} \;

# Ensure consistent image paths
echo "Ensuring consistent image paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|src="./images/|src="/haidy/images/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|src="../images/|src="/haidy/images/|g' {} \;

# Update schema.org URLs
echo "Updating schema.org URLs..."
find . -name "*.html" -type f -exec sed -i '' -e 's|"url": "https://businessdatasolutions.github.io/haidy|"url": "https://businessdatasolutions.github.io/haidy"|g' {} \;

echo "All remaining issues fixed!"