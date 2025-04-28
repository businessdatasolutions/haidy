document.addEventListener("DOMContentLoaded", function() {
  // Make sure baseUrl is defined
  const baseUrl = window.baseUrl || '/haidy';
  
  // Fix all navigation links
  document.querySelectorAll('a[href]').forEach(link => {
    // Skip external links and anchor links
    if (link.href.startsWith('http') || link.href.startsWith('mailto:') || 
        (link.getAttribute('href').startsWith('#'))) {
      return;
    }
    
    const hrefAttribute = link.getAttribute('href');
    
    // Handle special cases
    if (hrefAttribute === '/' || hrefAttribute === './' || hrefAttribute === '/index.html') {
      // Root path
      link.href = baseUrl + '/';
    } else if (hrefAttribute.startsWith('/')) {
      // Absolute path within site
      link.href = baseUrl + hrefAttribute;
    } else if (hrefAttribute.startsWith('../')) {
      // Relative path up one directory
      // We need to make sure it works with the repo path
      const pathSegments = window.location.pathname.split('/');
      // If we're in a subdirectory of the repo, adjust the path
      if (pathSegments.includes('haidy') && pathSegments.length > 2) {
        // Get the directory name after haidy
        const dirIndex = pathSegments.indexOf('haidy') + 1;
        if (dirIndex < pathSegments.length) {
          // Only adjust if we're not directly in the repo root
          const currentDir = pathSegments[dirIndex];
          if (currentDir && currentDir !== '') {
            // Convert ../path to /haidy/path
            const newPath = hrefAttribute.replace('../', baseUrl + '/');
            link.href = newPath;
          }
        }
      }
    }
  });
  
  // Fix all image sources that start with /
  document.querySelectorAll('img[src^="/"]').forEach(img => {
    img.src = baseUrl + img.getAttribute('src');
  });
  
  // Fix canonical URL and Open Graph URL
  const canonicalElement = document.querySelector('link[rel="canonical"]');
  if (canonicalElement) {
    const fullUrl = window.location.protocol + '//' + window.location.host + baseUrl + 
                   window.location.pathname.replace(/^\/haidy/, '');
    canonicalElement.href = fullUrl;
  }
  
  const ogUrlElement = document.querySelector('meta[property="og:url"]');
  if (ogUrlElement) {
    const fullUrl = window.location.protocol + '//' + window.location.host + baseUrl + 
                   window.location.pathname.replace(/^\/haidy/, '');
    ogUrlElement.content = fullUrl;
  }
  
  // Fix Schema.org data
  const schemaElements = document.querySelectorAll('script[type="application/ld+json"]');
  schemaElements.forEach(element => {
    try {
      const data = JSON.parse(element.textContent);
      
      // Update URL properties
      if (data.url) {
        const path = window.location.pathname.replace(/^\/haidy/, '');
        data.url = window.location.protocol + '//' + window.location.host + baseUrl + path;
      }
      
      // Handle nested URL properties in itemListElement arrays
      if (data.itemListElement && Array.isArray(data.itemListElement)) {
        data.itemListElement.forEach(item => {
          if (item.url) {
            // Try to get the filename from the URL and append it to the current path
            const urlParts = item.url.split('/');
            const filename = urlParts[urlParts.length - 1];
            
            // Get current directory path
            const currentPath = window.location.pathname.substring(0, 
                               window.location.pathname.lastIndexOf('/') + 1);
                               
            item.url = window.location.protocol + '//' + window.location.host + 
                      baseUrl + currentPath.replace(/^\/haidy/, '') + filename;
          }
        });
      }
      
      // Update the element content
      element.textContent = JSON.stringify(data, null, 2);
    } catch (e) {
      console.error('Error processing Schema.org data:', e);
    }
  });
});