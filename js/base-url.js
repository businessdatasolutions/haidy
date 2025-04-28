// Determine the base URL based on deployment environment
const isGitHubPages = location.hostname.includes('github.io');
const baseUrl = isGitHubPages ? '/haidy' : '';

// Add a global baseUrl variable to the window object
window.baseUrl = baseUrl;

// Helper to ensure paths from the HTML are relative to the repository root
function getRepoPath(path) {
  // If already includes /haidy/, return as is
  if (path.includes('/haidy/')) return path;
  
  // If it's a relative path, leave it alone
  if (!path.startsWith('/')) return path;
  
  // Otherwise, prepend baseUrl to absolute paths
  return baseUrl + path;
}