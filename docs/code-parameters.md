# AI Business Website Style Guide
_This style guide serves as a foundation for creating a visually stunning and effective website for your AI services business using Tailwind CSS and Wix Madefor Text font. The components and examples provided can be easily adapted to build a cohesive and professional web presence._

## Brand Identity

### Mission Statement
_Empowering businesses through strategic AI implementation, operational optimization, and comprehensive AI training._

### Brand Voice
- **Professional yet approachable**: Technical expertise communicated in clear language
- **Forward-thinking**: Emphasize innovation and cutting-edge solutions
- **Trustworthy**: Convey reliability and expertise
- **Solution-oriented**: Focus on practical benefits and outcomes

## Visual Elements

### Color Palette (Tailwind CSS)

```javascript
// Tailwind Configuration
{
  'steel_blue': { 
    DEFAULT: '#2d7dd2', 
    100: '#09192a', 
    200: '#123254', 
    300: '#1b4b7e', 
    400: '#2464a8', 
    500: '#2d7dd2', 
    600: '#5797db', 
    700: '#81b1e4', 
    800: '#abcbed', 
    900: '#d5e5f6' 
  }, 
  'yellow_green': { 
    DEFAULT: '#97cc04', 
    100: '#1e2901', 
    200: '#3d5202', 
    300: '#5b7b03', 
    400: '#79a403', 
    500: '#97cc04', 
    600: '#bdfa13', 
    700: '#cdfb4e', 
    800: '#defd89', 
    900: '#eefec4' 
  }, 
  'saffron': { 
    DEFAULT: '#eeb902', 
    100: '#2f2500', 
    200: '#5f4b01', 
    300: '#8e7001', 
    400: '#be9502', 
    500: '#eeb902', 
    600: '#fdcf29', 
    700: '#fddb5e', 
    800: '#fee794', 
    900: '#fef3c9' 
  }, 
  'persimmon': { 
    DEFAULT: '#f45d01', 
    100: '#311300', 
    200: '#612600', 
    300: '#923801', 
    400: '#c34b01', 
    500: '#f45d01', 
    600: '#fe7c2c', 
    700: '#fe9d61', 
    800: '#febe95', 
    900: '#ffdeca' 
  }, 
  'davys_gray': { 
    DEFAULT: '#474647', 
    100: '#0e0e0e', 
    200: '#1d1c1d', 
    300: '#2b2a2b', 
    400: '#3a393a', 
    500: '#474647', 
    600: '#6d6b6d', 
    700: '#929092', 
    800: '#b6b5b6', 
    900: '#dbdadb' 
  }
}
```

#### Color Usage Guidelines
- **Steel Blue** (`#2d7dd2`): Primary brand color, use for navigation, important UI elements, and CTAs
- **Yellow Green** (`#97cc04`): Use for success states and growth-related content
- **Saffron** (`#eeb902`): Use for warnings, highlights, and attention-grabbing elements
- **Persimmon** (`#f45d01`): Use for primary CTAs and accent elements
- **Davy's Gray** (`#474647`): Use for text, subtle backgrounds, and UI outlines

### Typography

#### Font Family
- **Wix Madefor Text**: Primary font for all text on the site

#### Implementation
```html
<!-- In HTML Header -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Wix+Madefor+Text:ital,wght@0,400..800;1,400..800&display=swap" rel="stylesheet">
```

```css
/* In CSS */
.wix-madefor-text-text {
  font-family: "Wix Madefor Text", sans-serif;
  font-optical-sizing: auto;
  font-weight: 300;
  font-style: normal;
}

.wix-madefor-text-title {
  font-family: "Wix Madefor Text", sans-serif;
  font-optical-sizing: auto;
  font-weight: 700;
  font-style: normal;
}
```

#### Heading Styles
- Use `.wix-madefor-text-title` for all headings
- **Sizes** (using Tailwind classes):
  - H1: `text-4xl md:text-5xl` (36px/48px)
  - H2: `text-3xl` (30px)
  - H3: `text-2xl` (24px)
  - H4: `text-xl` (20px)
- **Color**: Steel Blue (`text-steel_blue-500`) or White (`text-white`) on dark backgrounds

#### Body Text
- Use `.wix-madefor-text-text` for all body content
- **Size**: `text-base` (16px) for standard text, `text-sm` (14px) for smaller text
- **Line Height**: `leading-relaxed` (1.625)
- **Color**: Davy's Gray (`text-davys_gray-700`) on light backgrounds

### Imagery

#### Photography Style
- High-quality professional images
- Images depicting technology, data visualization, collaboration
- Subtle steel blue overlay (using `steel_blue-200` at 70% opacity) on images for brand consistency
- Clean, well-lit environments with a modern aesthetic

#### Icons
- **Style**: Line icons with consistent stroke width (2px)
- **Color**: Steel Blue (`steel_blue-500`), Yellow Green (`yellow_green-500`), or Saffron (`saffron-500`) depending on section
- **Size**: 24px standard size, scale proportionally as needed
- **Recommended Icon Sets**: Phosphor Icons, Feather Icons, or custom icons following these guidelines

#### Illustrations
- **Style**: Clean, minimal, geometric
- **Color**: Using the established color palette
- **Theme**: Abstract representations of AI, data, and business concepts

### UI Elements (Tailwind CSS)

#### Navigation
```html
<nav class="bg-white shadow-sm sticky top-0 z-50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between h-16">
      <!-- Logo -->
      <div class="flex items-center">
        <a href="/" class="wix-madefor-text-title text-xl text-steel_blue-500">
          Ten Hove Business Data Solutions
        </a>
      </div>

      <!-- Navigation Links -->
      <div class="hidden md:flex items-center">
        <a href="#section" class="wix-madefor-text-text px-3 py-2 text-davys_gray-700 hover:text-steel_blue-500 border-b-2 border-transparent hover:border-steel_blue-500 transition-colors">
          Link Text
        </a>
        
        <!-- Language Switcher -->
        <div class="ml-4">
          <a href="/path.html" class="bg-white text-steel_blue-500 hover:bg-steel_blue-500 hover:text-white py-2 px-4 rounded-full shadow-md transition-colors flex items-center border-2 border-steel_blue-500">
            <span class="mr-2 font-bold">EN</span>
            <!-- Simplified SVG icon -->
            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <circle cx="12" cy="12" r="10"></circle>
              <line x1="2" y1="12" x2="22" y2="12"></line>
              <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path>
            </svg>
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
```

#### Hero Section
```html
<section class="relative text-white py-20">
  <!-- Background Image -->
  <div class="absolute inset-0 z-0">
    <img src="/images/hero-bg.jpg" alt="Hero Image" class="w-full h-full object-cover" />
    <div class="absolute inset-0 bg-steel_blue-200 bg-opacity-70"></div>
  </div>

  <!-- Content -->
  <div class="container mx-auto px-4 relative z-10">
    <h1 class="wix-madefor-text-title text-4xl md:text-5xl mb-6">
      Hero Title
    </h1>
    <p class="wix-madefor-text-text text-xl mb-8 max-w-2xl">
      Hero description text goes here with a maximum width to ensure readability.
    </p>
    <a href="#contact" class="bg-persimmon-500 hover:bg-persimmon-600 text-white py-3 px-8 rounded transition-colors inline-block">
      Call to Action
    </a>
  </div>
</section>
```

#### Section Spacing
- Standard section padding: `py-20` (5rem top and bottom)
- Container width: `max-w-7xl mx-auto px-4`
- Content width constraints:
  - Full width: `max-w-7xl`
  - Medium width: `max-w-4xl`
  - Narrow width: `max-w-3xl` or `max-w-2xl`
  - Form width: `max-w-lg`

#### Buttons
- **Primary Button**:
  ```html
  <button class="bg-steel_blue-500 hover:bg-steel_blue-600 text-white py-3 px-6 rounded transition-colors w-full">
    Button Text
  </button>
  ```

- **Secondary Button**:
  ```html
  <button class="bg-white text-steel_blue-500 hover:bg-steel_blue-500 hover:text-white py-2 px-4 rounded-full shadow-md transition-colors flex items-center border-2 border-steel_blue-500">
    Button Text
  </button>
  ```

- **CTA Button**:
  ```html
  <a href="#contact" class="bg-persimmon-500 hover:bg-persimmon-600 text-white py-3 px-8 rounded transition-colors inline-block">
    Call to Action
  </a>
  ```

#### Cards
```html
<div class="bg-white p-6 rounded-lg shadow hover:shadow-md hover:translate-y-[-4px] transition-all duration-200">
  <div class="text-steel_blue-500 mb-4">
    <!-- Icon -->
  </div>
  <h3 class="wix-madefor-text-title text-2xl mb-4">Card Title</h3>
  <p class="wix-madefor-text-text mb-6">Card content</p>
  <ul class="space-y-2 mb-6">
    <li class="flex items-start">
      <span class="text-yellow_green-500 mr-2">✓</span>
      <span>List item 1</span>
    </li>
    <li class="flex items-start">
      <span class="text-yellow_green-500 mr-2">✓</span>
      <span>List item 2</span>
    </li>
  </ul>
</div>
```

#### Forms
```html
<div class="bg-white p-6 rounded-lg shadow">
  <form>
    <div class="mb-6">
      <label class="block wix-madefor-text-text mb-2 text-davys_gray-700">Label Text</label>
      <input 
        class="w-full pb-2 pt-1 px-2 border-b-2 border-davys_gray-300 focus:border-steel_blue-500 outline-none transition-colors" 
        type="text"
      />
    </div>
    <div class="mb-6">
      <label class="block wix-madefor-text-text mb-2 text-davys_gray-700">Email</label>
      <input 
        class="w-full pb-2 pt-1 px-2 border-b-2 border-davys_gray-300 focus:border-steel_blue-500 outline-none transition-colors" 
        type="email"
      />
    </div>
    <div class="mb-6">
      <label class="block wix-madefor-text-text mb-2 text-davys_gray-700">Company</label>
      <input 
        class="w-full pb-2 pt-1 px-2 border-b-2 border-davys_gray-300 focus:border-steel_blue-500 outline-none transition-colors" 
        type="text"
      />
    </div>
    <div class="mb-6">
      <label class="block wix-madefor-text-text mb-2 text-davys_gray-700">Message</label>
      <textarea 
        class="w-full pb-2 pt-1 px-2 border-b-2 border-davys_gray-300 focus:border-steel_blue-500 outline-none transition-colors" 
        rows="4"
      ></textarea>
    </div>
    <button class="bg-steel_blue-500 hover:bg-steel_blue-600 text-white py-3 px-6 rounded transition-colors w-full">
      Submit Button
    </button>
  </form>
</div>
```

#### Grid Layouts
- **Two Column Grid**:
  ```html
  <div class="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-4xl mx-auto">
    <!-- Column 1 -->
    <div class="bg-white p-6 rounded-lg shadow">
      <!-- Content -->
    </div>
    <!-- Column 2 -->
    <div class="bg-white p-6 rounded-lg shadow">
      <!-- Content -->
    </div>
  </div>
  ```

- **Three Column Grid**:
  ```html
  <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
    <!-- Column 1 -->
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-md hover:translate-y-[-4px] transition-all duration-200">
      <!-- Content -->
    </div>
    <!-- Column 2 -->
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-md hover:translate-y-[-4px] transition-all duration-200">
      <!-- Content -->
    </div>
    <!-- Column 3 -->
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-md hover:translate-y-[-4px] transition-all duration-200">
      <!-- Content -->
    </div>
  </div>
  ```

### Animations

#### Reveal Animation
```css
.reveal {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s ease, transform 0.6s ease;
}

.reveal.active {
  opacity: 1;
  transform: translateY(0);
}
```

```javascript
document.addEventListener("DOMContentLoaded", function () {
  const reveals = document.querySelectorAll(".reveal");
  
  function checkReveal() {
    reveals.forEach((element) => {
      const windowHeight = window.innerHeight;
      const elementTop = element.getBoundingClientRect().top;
      const elementVisible = 150;

      if (elementTop < windowHeight - elementVisible) {
        element.classList.add("active");
      }
    });
  }

  window.addEventListener("scroll", checkReveal);
  checkReveal();
});
```

### Responsive Design

#### Breakpoints
- **Mobile**: Default (0px+)
- **Tablet**: `md:` (768px+)
- **Desktop**: `lg:` (1024px+)
- **Large Desktop**: `xl:` (1280px+)

#### Mobile Navigation
```html
<!-- Mobile menu button -->
<div class="md:hidden flex items-center">
  <button type="button" class="text-davys_gray-500" id="mobile-menu-button">
    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
    </svg>
  </button>
</div>

<!-- Mobile menu -->
<div class="md:hidden hidden" id="mobile-menu">
  <div class="px-2 pt-2 pb-3 space-y-1">
    <a href="#section" class="block px-3 py-2 text-davys_gray-700 hover:text-steel_blue-500 hover:bg-steel_blue-50 rounded-md">
      Link Text
    </a>
    <!-- Additional mobile menu items -->
  </div>
</div>
```

### SEO Optimization

#### Meta Tags
```html
<!-- SEO Meta Tags -->
<title>Page Title | Ten Hove Business Data Solutions</title>
<meta name="description" content="Page description for search engines." />
<meta name="keywords" content="keyword1, keyword2, keyword3" />

<!-- Open Graph / Social Media Meta Tags -->
<meta property="og:title" content="Page Title | Ten Hove Business Data Solutions" />
<meta property="og:description" content="Page description for social sharing." />
<meta property="og:type" content="website" />
<meta property="og:url" content="https://businessdatasolutions.nl/page.html" />

<!-- Twitter Card Meta Tags -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="Page Title" />
<meta name="twitter:description" content="Page description for Twitter." />

<!-- Canonical URL -->
<link rel="canonical" href="https://businessdatasolutions.nl/page.html" />
```

#### Schema.org Markup
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Ten Hove Business Data Solutions",
  "url": "https://businessdatasolutions.nl",
  "email": "witek@businessdatasolutions.nl",
  "description": "Transformeer uw bedrijf met AI-gereed oplossingen. Expert AI strategie ontwikkeling, operationele excellentie oplossingen en uitgebreide AI trainingen."
}
</script>
```

For course pages:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Course",
  "name": "Course Title",
  "description": "Course description",
  "provider": {
    "@type": "Organization",
    "name": "Ten Hove Business Data Solutions",
    "url": "https://businessdatasolutions.nl"
  },
  "courseCode": "CODE-001",
  "numberOfCredits": "3",
  "educationalLevel": "Professional Development",
  "timeRequired": "PT24H"
}
</script>
```

### Footer
```html
<footer class="bg-steel_blue-900 text-white py-8">
  <div class="container mx-auto px-4 text-center">
    <p class="text-steel_blue-100 font-medium">
      &copy; 2024 Ten Hove Business Data Solutions. Alle rechten voorbehouden.
    </p>
    <p class="text-steel_blue-200 text-sm mt-4 border-t border-steel_blue-700 pt-4">
      Hero afbeelding: Photo by <a href="https://www.pexels.com/photo/woman-using-laptop-computer-with-vr-headset-3861458/" class="hover:text-white transition-colors underline" target="_blank" rel="noopener noreferrer">ThisIsEngineering</a> on Pexels
    </p>
  </div>
</footer>
```