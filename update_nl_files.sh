#\!/bin/bash

# Update paths in nl/index.html
echo "Updating nl/index.html"
sed -i '' 's#href="../index.html"#href="/"#g' ./nl/index.html
sed -i '' 's#src="../images/#src="/images/#g' ./nl/index.html
sed -i '' 's#href="news/index.html"#href="/nl/news/"#g' ./nl/index.html
sed -i '' 's#href="trainings/index.html"#href="/nl/trainings/"#g' ./nl/index.html
sed -i '' 's#src="../js/#src="/js/#g' ./nl/index.html

# Update paths in nl/news/index.html
echo "Updating nl/news/index.html"
sed -i '' 's#href="../../index.html"#href="/"#g' ./nl/news/index.html
sed -i '' 's#href="../index.html"#href="/nl/"#g' ./nl/news/index.html
sed -i '' 's#src="../../images/#src="/images/#g' ./nl/news/index.html
sed -i '' 's#src="../../js/#src="/js/#g' ./nl/news/index.html
sed -i '' 's#href="evolution-of-business-management.html"#href="/nl/news/evolution-of-business-management.html"#g' ./nl/news/index.html
sed -i '' 's#href="the-future-of-ai-in-business-operations.html"#href="/nl/news/the-future-of-ai-in-business-operations.html"#g' ./nl/news/index.html
sed -i '' 's#href="de-toekomst-van-ai-in-bedrijfsprocessen.html"#href="/nl/news/de-toekomst-van-ai-in-bedrijfsprocessen.html"#g' ./nl/news/index.html

# Update paths in nl/news article files
echo "Updating nl/news article files"
sed -i '' 's#href="../../index.html"#href="/"#g' ./nl/news/*.html
sed -i '' 's#href="../index.html"#href="/nl/"#g' ./nl/news/*.html
sed -i '' 's#href="index.html"#href="/nl/news/"#g' ./nl/news/*.html
sed -i '' 's#src="../../images/#src="/images/#g' ./nl/news/*.html
sed -i '' 's#src="../../js/#src="/js/#g' ./nl/news/*.html

# Update paths in nl/trainings/index.html
echo "Updating nl/trainings/index.html"
sed -i '' 's#href="../../index.html"#href="/"#g' ./nl/trainings/index.html
sed -i '' 's#href="../index.html"#href="/nl/"#g' ./nl/trainings/index.html
sed -i '' 's#src="../../images/#src="/images/#g' ./nl/trainings/index.html
sed -i '' 's#src="../../js/#src="/js/#g' ./nl/trainings/index.html
sed -i '' 's#href="ai-strategy-development.html"#href="/nl/trainings/ai-strategy-development.html"#g' ./nl/trainings/index.html

# Update paths in nl/trainings article files
echo "Updating nl/trainings article files"
sed -i '' 's#href="../../index.html"#href="/"#g' ./nl/trainings/*.html
sed -i '' 's#href="../index.html"#href="/nl/"#g' ./nl/trainings/*.html
sed -i '' 's#href="index.html"#href="/nl/trainings/"#g' ./nl/trainings/*.html
sed -i '' 's#src="../../images/#src="/images/#g' ./nl/trainings/*.html
sed -i '' 's#src="../../js/#src="/js/#g' ./nl/trainings/*.html

echo "Path updates completed in Dutch files"
