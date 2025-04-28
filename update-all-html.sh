#!/bin/bash

# Script to update all HTML files with base-url.js and fix-paths.js scripts

# Find all HTML files in the project
find "$(dirname "$0")" -name "*.html" | while read -r file; do
    echo "Processing $file..."
    
    # Get directory depth relative to project root
    relative_path=$(realpath --relative-to="$(dirname "$0")" "$(dirname "$file")")
    js_path_prefix=""
    
    # Calculate path to js directory based on file location
    if [[ "$relative_path" == "." ]]; then
        js_path_prefix="./"
    else
        # Count directory levels and add proper path prefix
        depth=$(echo "$relative_path" | tr -cd '/' | wc -c)
        for ((i=0; i<depth+1; i++)); do
            js_path_prefix="../$js_path_prefix"
        done
    fi
    
    # Remove trailing slash if present
    js_path_prefix="${js_path_prefix%/}"
    
    # Check if base-url.js is already included
    if ! grep -q "base-url.js" "$file"; then
        # Find where to insert the script (after Tailwind or before closing head tag)
        if grep -q "cdn.tailwindcss.com" "$file"; then
            # Add our scripts after Tailwind
            sed -i.bak "s#<script src=\"https://cdn.tailwindcss.com\"></script>#<script src=\"https://cdn.tailwindcss.com\"></script>\n\t\t<!-- Base URL Script -->\n\t\t<script src=\"${js_path_prefix}js/base-url.js\"></script>\n\t\t<script src=\"${js_path_prefix}js/fix-paths.js\"></script>#" "$file"
        else
            # Add before closing head tag
            sed -i.bak "s#</head>#\t<!-- Base URL Script -->\n\t<script src=\"${js_path_prefix}js/base-url.js\"></script>\n\t<script src=\"${js_path_prefix}js/fix-paths.js\"></script>\n</head>#" "$file"
        fi
    elif ! grep -q "fix-paths.js" "$file"; then
        # If base-url.js exists but fix-paths.js doesn't, add fix-paths.js after base-url.js
        sed -i.bak "s#<script src=\"[^\"]*base-url.js\"></script>#<script src=\"${js_path_prefix}js/base-url.js\"></script>\n\t\t<script src=\"${js_path_prefix}js/fix-paths.js\"></script>#" "$file"
    fi
    
    # Update meta tags for dynamic URLs
    if grep -q "property=\"og:url\"" "$file"; then
        sed -i.bak 's#content="https://businessdatasolutions.nl[^"]*"#content="" id="ogUrl"#' "$file"
    fi
    
    if grep -q "rel=\"canonical\"" "$file"; then
        sed -i.bak 's#href="https://businessdatasolutions.nl[^"]*"#href="" id="canonicalUrl"#' "$file"
    fi
    
    # Update schema.org data if present
    if grep -q "application/ld+json" "$file"; then
        sed -i.bak 's#type="application/ld+json">#type="application/ld+json" id="schemaOrgData">#' "$file"
    fi
    
    # Clean up backup files
    rm -f "$file.bak"
done

echo "All HTML files have been updated!"