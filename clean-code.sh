#!/bin/bash

# Script to clean up code and remove unnecessary elements

echo "Removing language switcher elements..."
# Remove desktop language switcher divs
find . -name "*.html" -type f -exec sed -i '' -e '/<div class="ml-4".*style="display:none;">/,/<\/div>/d' {} \;

# Remove mobile language switcher links
find . -name "*.html" -type f -exec sed -i '' -e '/<a.*href=".*".*>EN<\/a>/d' {} \;

# Fix incorrect paths
echo "Fixing incorrect paths..."
find . -name "*.html" -type f -exec sed -i '' -e 's|/haidy/ai-strategy-development\.nl\.html|/haidy/trainings/ai-strategy-development.html|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|/haidy/news/the-future-of-ai-in-business-operations\.html|/haidy/news/de-toekomst-van-ai-in-bedrijfsprocessen.html|g' {} \;

# Remove backup_english placeholder references
echo "Cleaning up placeholder links..."
find . -name "*.html" -type f -path "./news/*" -exec sed -i '' -e 's|href="#"|href="/haidy/news/"|g' {} \;

echo "Code cleaning complete!"
