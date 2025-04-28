#!/bin/bash

# Script to replace English pages with Dutch versions and update the sitemap

# First, create a backup of current files
mkdir -p backup_english
cp -r index.html news news.html trainings 404.html backup_english/

echo "Backup of English files created in backup_english/"

# Move Dutch files to root directory
echo "Moving Dutch files to root directory..."

# Home page
cp nl/index.html index.html
echo "✓ Moved Dutch homepage"

# News index
cp nl/news/index.html news/index.html
echo "✓ Moved Dutch news index"

# News articles
cp nl/news/evolution-of-business-management.html news/evolution-of-business-management.html
# Use Dutch version with Dutch filename
cp nl/news/de-toekomst-van-ai-in-bedrijfsprocessen.html news/de-toekomst-van-ai-in-bedrijfsprocessen.html
# Remove English version
rm news/the-future-of-ai-in-business-operations.html
echo "✓ Moved Dutch news articles"

# Trainings
cp nl/trainings/index.html trainings/index.html
cp nl/trainings/ai-strategy-development.html trainings/ai-strategy-development.html
echo "✓ Moved Dutch training pages"

# Fix paths in all HTML files to remove /nl/ references
echo "Fixing paths in HTML files..."
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/haidy/nl/|href="/haidy/|g' {} \;
find . -name "*.html" -type f -exec sed -i '' -e 's|href="/haidy/nl/|href="/haidy/|g' {} \;
echo "✓ Fixed navigation paths"

# Update language tags in all HTML files
echo "Updating language tags..."
find . -name "*.html" -type f -exec sed -i '' -e 's|<html lang="en">|<html lang="nl">|g' {} \;
echo "✓ Updated language tags"

# Remove language switcher (optional)
# This would require more specific editing

# Update sitemap.xml
echo "Updating sitemap.xml..."
cat > sitemap.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <!-- Dutch Pages (now primary) -->
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/</loc>
        <lastmod>2024-04-27</lastmod>
        <changefreq>monthly</changefreq>
        <priority>1.0</priority>
    </url>
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/news/</loc>
        <lastmod>2024-04-26</lastmod>
        <changefreq>weekly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/news/evolution-of-business-management.html</loc>
        <lastmod>2024-04-26</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.7</priority>
    </url>
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/news/de-toekomst-van-ai-in-bedrijfsprocessen.html</loc>
        <lastmod>2024-04-26</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.7</priority>
    </url>
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/trainings/</loc>
        <lastmod>2024-04-27</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>https://businessdatasolutions.github.io/haidy/trainings/ai-strategy-development.html</loc>
        <lastmod>2024-04-27</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.8</priority>
    </url>
</urlset>
EOF
echo "✓ Updated sitemap.xml"

# Remove nl directory as it's no longer needed
echo "Cleaning up..."
rm -rf nl
echo "✓ Removed nl directory"

echo "Done! Dutch is now the primary language of the website."