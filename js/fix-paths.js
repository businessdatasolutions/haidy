document.addEventListener("DOMContentLoaded", function() {
  // Get base URL from the base-url.js script
  const baseUrl = window.baseUrl || '';
  
  // Fix all absolute paths in href attributes
  document.querySelectorAll('a[href^="/"]').forEach(link => {
    // Skip mailto links
    if (link.href.startsWith('mailto:')) return;
    
    const path = link.getAttribute('href');
    
    // Handle different path types
    if (path === '/') {
      // Root path
      link.href = baseUrl ? baseUrl + '/' : './';
    } else if (path.startsWith('/#')) {
      // Hash links on homepage
      const hash = path.substring(1);
      link.href = (baseUrl ? baseUrl + '/' : './') + hash;
    } else {
      // Other absolute paths
      link.href = baseUrl + path.replace(/^\//, './');
    }
  });
  
  // Fix all absolute paths in image src attributes
  document.querySelectorAll('img[src^="/"]').forEach(img => {
    const path = img.getAttribute('src');
    img.src = baseUrl + path.replace(/^\//, './');
  });
  
  // Fix canonical and OG URLs if they exist and have IDs
  const canonicalUrlElement = document.getElementById('canonicalUrl');
  const ogUrlElement = document.getElementById('ogUrl');
  const schemaOrgData = document.getElementById('schemaOrgData');
  
  if (canonicalUrlElement) {
    canonicalUrlElement.setAttribute('href', window.location.href);
  }
  
  if (ogUrlElement) {
    ogUrlElement.setAttribute('content', window.location.href);
  }
  
  if (schemaOrgData) {
    try {
      const data = JSON.parse(schemaOrgData.textContent);
      if (data.url !== undefined) {
        data.url = window.location.href;
      }
      // Also fix nested URLs in schema.org data
      if (data.itemListElement) {
        data.itemListElement.forEach(item => {
          if (item.url) {
            item.url = window.location.href.replace(/\/[^\/]*$/, '/' + item.url.split('/').pop());
          }
        });
      }
      schemaOrgData.textContent = JSON.stringify(data, null, 2);
    } catch (e) {
      console.error('Error updating schema.org data:', e);
    }
  }
});