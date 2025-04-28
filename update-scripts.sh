#!/bin/bash

# Script to update JavaScript references in HTML files

echo "Updating JavaScript references in HTML files..."

# Replace the two separate script references with one combined script
find . -name "*.html" -type f -exec sed -i '' -e 's|<script src="/haidy/js/base-url.js"></script>\s*<script src="/haidy/js/fix-paths.js"></script>|<script src="/haidy/js/site-paths.js"></script>|g' {} \;

# Also catch other variations
find . -name "*.html" -type f -exec sed -i '' -e 's|<script src="../js/base-url.js"></script>\s*<script src="../js/fix-paths.js"></script>|<script src="/haidy/js/site-paths.js"></script>|g' {} \;

echo "JavaScript references updated!"
