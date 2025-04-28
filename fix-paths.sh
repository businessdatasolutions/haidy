#!/bin/bash

# Script to fix remaining path issues after Dutch conversion

# Fix double haidy paths
echo "Fixing double haidy paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|/haidy/haidy/|/haidy/|g' {} \;

# Fix js paths
echo "Fixing JavaScript paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|src="/haidy/js/|src="/haidy/js/|g' {} \;

# Fix image paths
echo "Fixing image paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|src="/haidy/haidy/images/|src="/haidy/images/|g' {} \;

# Remove language switcher or update it
echo "Updating language switcher..."
# Since there's only one language now, we could either remove or update the language switcher
# For now, let's just hide it with CSS instead of removing it entirely
find . -name "*.html" -type f -exec sed -i '' -e 's|<div class="ml-4">|<div class="ml-4" style="display:none;">|g' {} \;

echo "Paths fixed successfully!"