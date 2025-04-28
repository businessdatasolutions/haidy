// Determine the base URL based on deployment environment
const isGitHubPages = location.hostname.includes('github.io');
const baseUrl = isGitHubPages ? '/haidy' : '';

// Add a global baseUrl variable to the window object
window.baseUrl = baseUrl;