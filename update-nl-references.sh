#\!/bin/bash

# Update references in English files
find ./trainings -name "*.html" -not -path "./nl/*" -exec sed -i '' 's#href="./ai-strategy-development.nl.html"#href="/nl/trainings/ai-strategy-development.html"#g' {} \;
find ./trainings -name "*.html" -not -path "./nl/*" -exec sed -i '' 's#href="./index.nl.html"#href="/nl/trainings/"#g' {} \;

# Update references in news files
find ./news -name "*.html" -not -path "./nl/*" -not -path "./news/nl/*" -exec sed -i '' 's#href="/index.nl.html"#href="/nl/"#g' {} \;
find ./news -name "*.html" -not -path "./nl/*" -not -path "./news/nl/*" -exec sed -i '' 's#href="/news/evolution-of-business-management.nl.html"#href="/nl/news/evolution-of-business-management.html"#g' {} \;

# Update news.html
sed -i '' 's#href="news.nl.html"#href="/nl/news/"#g' ./news.html

# Update sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/index.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/index.html</loc>#g' ./sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/news/index.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/news/index.html</loc>#g' ./sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/news/evolution-of-business-management.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/news/evolution-of-business-management.html</loc>#g' ./sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/news/the-future-of-ai-in-business-operations.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/news/the-future-of-ai-in-business-operations.html</loc>#g' ./sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/trainings/index.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/trainings/index.html</loc>#g' ./sitemap.xml
sed -i '' 's#<loc>https://businessdatasolutions.github.io/haidy/trainings/ai-strategy-development.nl.html</loc>#<loc>https://businessdatasolutions.github.io/haidy/nl/trainings/ai-strategy-development.html</loc>#g' ./sitemap.xml

# Update Dutch files
find ./nl -name "*.html" -exec sed -i '' 's#href="/index.nl.html"#href="/nl/"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="/news/index.nl.html"#href="/nl/news/"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="/news/the-future-of-ai-in-business-operations.nl.html"#href="/nl/news/the-future-of-ai-in-business-operations.html"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="/news/evolution-of-business-management.nl.html"#href="/nl/news/evolution-of-business-management.html"#g' {} \;

# Update any references to news.nl.html
find ./nl -name "*.html" -exec sed -i '' 's#href="../news.nl.html"#href="/nl/news/"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="../../index.nl.html"#href="/nl/"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="../../index.nl.html#services"#href="/nl/#services"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="../../index.nl.html#about"#href="/nl/#about"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="../../index.nl.html#contact"#href="/nl/#contact"#g' {} \;

# Update canonical URLs and OG URLs in Dutch files
find ./nl -name "*.html" -exec sed -i '' 's#content="https://businessdatasolutions.github.io/haidy/trainings/ai-strategy-development.nl.html"#content="https://businessdatasolutions.github.io/haidy/nl/trainings/ai-strategy-development.html"#g' {} \;
find ./nl -name "*.html" -exec sed -i '' 's#href="https://businessdatasolutions.github.io/haidy/trainings/ai-strategy-development.nl.html"#href="https://businessdatasolutions.github.io/haidy/nl/trainings/ai-strategy-development.html"#g' {} \;

echo "Update completed."
