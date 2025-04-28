#\!/bin/bash

# Update language switcher in English files

# Update root index.html
echo "Updating index.html"
sed -i '' 's#href="index.nl.html"#href="/nl/"#g' ./index.html

# Update news/index.html
echo "Updating news/index.html"
sed -i '' 's#href="index.nl.html"#href="/nl/news/"#g' ./news/index.html

# Update news article files
echo "Updating news article files"
sed -i '' 's#href="the-future-of-ai-in-business-operations.nl.html"#href="/nl/news/the-future-of-ai-in-business-operations.html"#g' ./news/the-future-of-ai-in-business-operations.html
sed -i '' 's#href="evolution-of-business-management.nl.html"#href="/nl/news/evolution-of-business-management.html"#g' ./news/evolution-of-business-management.html

# Update trainings/index.html
echo "Updating trainings/index.html"
sed -i '' 's#href="index.nl.html"#href="/nl/trainings/"#g' ./trainings/index.html

# Update trainings article files
echo "Updating trainings article files"
sed -i '' 's#href="ai-strategy-development.nl.html"#href="/nl/trainings/ai-strategy-development.html"#g' ./trainings/ai-strategy-development.html

echo "Language switcher updates completed in English files"
