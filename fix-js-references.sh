#!/bin/bash

# Script to fix JavaScript references in all HTML files

echo "Fixing JavaScript references..."

# Replace script references patterns
find . -name "*.html" -type f -not -path "./backup_english/*" -exec sed -i '' -e 's|<script src=".*base-url.js"></script>.*<script src=".*fix-paths.js"></script>|<script src="/haidy/js/site-paths.js"></script>|g' {} \;

# Also catch any potential relative paths
find . -name "*.html" -type f -not -path "./backup_english/*" -exec sed -i '' -e 's|<script src="../js/base-url.js"></script>.*<script src="../js/fix-paths.js"></script>|<script src="/haidy/js/site-paths.js"></script>|g' {} \;
find . -name "*.html" -type f -not -path "./backup_english/*" -exec sed -i '' -e 's|<script src="../../js/base-url.js"></script>.*<script src="../../js/fix-paths.js"></script>|<script src="/haidy/js/site-paths.js"></script>|g' {} \;

echo "JavaScript references fixed!"