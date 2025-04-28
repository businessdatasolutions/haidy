#!/bin/bash

# Script to verify GitHub Pages paths in HTML files

echo "Verifying all HTML files for correct GitHub Pages paths..."

# 1. Check for image paths
echo "Checking image paths..."
grep -r "<img.*src=" --include="*.html" . | grep -v "/haidy/"

# 2. Check for script and CSS paths
echo "Checking script and CSS paths..."
grep -r "src=\"/" --include="*.html" . | grep -v "/haidy/"
grep -r "href=\"/" --include="*.html" . | grep -v "/haidy/" | grep -v "mailto:" | grep -v "http"

# 3. Check for internal links
echo "Checking internal links..."
grep -r "href=\"/" --include="*.html" . | grep -v "/haidy/" | grep -v "mailto:" | grep -v "http"

# 4. Check for double repository paths
echo "Checking for double repository paths..."
grep -r "/haidy/haidy/" --include="*.html" .

# 5. Check for any remaining placeholder links
echo "Checking for placeholder links..."
grep -r "href=\"#\"" --include="*.html" .

echo "Verification complete!"