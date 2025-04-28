# Hove AI Dynamics Website

This repository contains the website for Hove AI Dynamics, a consultancy focused on AI strategy, implementation, and training services.

## Features

- Dutch language website (previously bilingual)
- Responsive design with TailwindCSS
- Optimized for GitHub Pages deployment

## Structure

- `index.html` - Main homepage (Dutch)
- `/news` - News and articles section
- `/trainings` - Training programs information
- `/images` - Website images
- `/js` - JavaScript files for path handling and other functionality
- `/backup_english` - Backup of original English website pages (kept for reference)

## GitHub Pages Setup

This site is optimized for GitHub Pages with:

- `/haidy/` repository name in paths
- Dynamic base URL handling via JavaScript
- Proper sitemap and robots.txt configuration
- Custom 404 page

### Path Handling

A single JavaScript file handles all path management for GitHub Pages:

`js/site-paths.js`: Handles base URL detection and updates all paths, links, and metadata to ensure proper functionality in the GitHub Pages environment

## Development

The site uses:

- HTML5
- TailwindCSS (via CDN)
- Vanilla JavaScript
- Google Fonts (Wix Madefor Text)

## Utility Scripts

Several utility scripts were created during development:

- `make-dutch-primary.sh`: Converted the website from bilingual to Dutch-only
- `fix-paths.sh`: Fixed path references for GitHub Pages
- `fix-schema-json.sh`: Fixed schema.org JSON data issues
- `verify-github-paths.sh`: Verifies all paths are correct for GitHub Pages
- `clean-code.sh`: Removes unnecessary language elements and fixes path inconsistencies
- `update-scripts.sh`: Updates JavaScript references to use the combined path handling script

All JavaScript path handling is now consolidated in `js/site-paths.js` which replaces the previously separate `base-url.js` and `fix-paths.js` files.

## Deployment

To deploy this site:

1. Push to GitHub
2. Enable GitHub Pages in repository settings
3. Set source to main branch
4. (Optional) Configure a custom domain

## Contact

For inquiries about this website, contact:
witek@businessdatasolutions.nl

## GitHub Pages URL

This site is accessible at:
https://businessdatasolutions.github.io/haidy/