/**
 * Combined site path handling for Hove AI Dynamics website
 * This script handles base URL determination and path fixing in one place
 */

document.addEventListener("DOMContentLoaded", function() {
  // Determine the base URL based on deployment environment
  const isGitHubPages = location.hostname.includes('github.io');
  const baseUrl = isGitHubPages ? '/haidy' : '';
  
  // Add a global baseUrl variable to the window object
  window.baseUrl = baseUrl;
  
  // Fix all navigation links
  document.querySelectorAll('a[href]').forEach(link => {
    // Skip external links, anchor links, and email links
    if (link.href.startsWith('http') || 
        link.href.startsWith('mailto:') || 
        link.getAttribute('href').startsWith('#')) {
      return;
    }
    
    const hrefAttribute = link.getAttribute('href');
    
    // Handle root path and absolute paths
    if (hrefAttribute === '/' || hrefAttribute === './') {
      link.href = baseUrl + '/';
    } else if (hrefAttribute.startsWith('/')) {
      // Ensure we don't double the baseUrl
      if (!hrefAttribute.startsWith('/haidy/')) {
        link.href = baseUrl + hrefAttribute;
      }
    }
  });
  
  // Fix all image sources that start with /
  document.querySelectorAll('img[src^="/"]').forEach(img => {
    const srcAttribute = img.getAttribute('src');
    // Ensure we don't double the baseUrl
    if (!srcAttribute.startsWith('/haidy/')) {
      img.src = baseUrl + srcAttribute;
    }
  });
  
  // Fix canonical URL and Open Graph URL with fully qualified URLs
  const canonicalElement = document.querySelector('link[rel="canonical"]');
  if (canonicalElement) {
    const fullUrl = window.location.protocol + '//' + window.location.host + 
                   baseUrl + window.location.pathname.replace(/^\/haidy/, '');
    canonicalElement.href = fullUrl;
  }
  
  const ogUrlElement = document.querySelector('meta[property="og:url"]');
  if (ogUrlElement) {
    const fullUrl = window.location.protocol + '//' + window.location.host + 
                   baseUrl + window.location.pathname.replace(/^\/haidy/, '');
    ogUrlElement.content = fullUrl;
  }
  
  // Fix Schema.org data
  const schemaElements = document.querySelectorAll('script[type="application/ld+json"]');
  schemaElements.forEach(element => {
    try {
      const data = JSON.parse(element.textContent);
      
      // Update URL properties with current page URL
      if (data.url) {
        data.url = window.location.protocol + '//' + window.location.host + baseUrl;
      }
      
      // Update the element content
      element.textContent = JSON.stringify(data, null, 2);
    } catch (e) {
      console.error('Error processing Schema.org data:', e);
    }
  });
});