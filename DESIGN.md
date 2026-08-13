---
name: Industrial Precision
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#393939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#201f1f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353534'
  on-surface: '#e5e2e1'
  on-surface-variant: '#e5beb7'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#ab8983'
  outline-variant: '#5c403c'
  surface-tint: '#ffb4a8'
  primary: '#ffb4a8'
  on-primary: '#690000'
  primary-container: '#a30000'
  on-primary-container: '#ffac9f'
  inverse-primary: '#ba1a0f'
  secondary: '#ffb599'
  on-secondary: '#5a1c00'
  secondary-container: '#cb4a00'
  on-secondary-container: '#fffbff'
  tertiary: '#3de273'
  on-tertiary: '#003915'
  tertiary-container: '#005c27'
  on-tertiary-container: '#35dc6e'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffdad4'
  primary-fixed-dim: '#ffb4a8'
  on-primary-fixed: '#410000'
  on-primary-fixed-variant: '#930000'
  secondary-fixed: '#ffdbce'
  secondary-fixed-dim: '#ffb599'
  on-secondary-fixed: '#370e00'
  on-secondary-fixed-variant: '#7f2b00'
  tertiary-fixed: '#66ff8e'
  tertiary-fixed-dim: '#3de273'
  on-tertiary-fixed: '#002109'
  on-tertiary-fixed-variant: '#005322'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353534'
typography:
  display-lg:
    fontFamily: Montserrat
    fontSize: 56px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Montserrat
    fontSize: 40px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Montserrat
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Montserrat
    fontSize: 28px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-bold:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-max: 1280px
  gutter: 32px
  section-padding: 120px
  card-padding: 40px
---

## Brand & Style

This design system is built for the intersection of heavy industry and cutting-edge automation. The brand personality is **authoritative, technologically advanced, and remarkably dependable**. It balances the raw power of industrial machinery with the clean precision of modern software.

The visual style is **Corporate / Modern** with a high-tech edge. It utilizes a deep, charcoal-heavy palette to ground the interface, while using vibrant red and orange accents to guide the eye toward critical actions and data. Large radii and generous spacing soften the industrial "hardness," making the sophisticated technology feel accessible and user-friendly. The emotional response should be one of "controlled power"—users should feel they are using a robust, professional tool that is both modern and easy to navigate.

## Colors

The palette is rooted in industrial environments. **Deep Red (#A30000)** serves as the primary brand anchor, used for headers, primary buttons, and key branding elements. **Orange (#F26522)** is used as a secondary accent for highlighting status, secondary actions, or interactive hover states.

The background uses a **Dark Charcoal (#121212)** to create a high-contrast, premium "command center" feel. To ensure the interface doesn't feel oppressive, content sections and service cards utilize a **Light Gray (#F5F5F5)** surface, providing a clean canvas for technical information. A specific **WhatsApp Green (#25D366)** is reserved exclusively for the floating communication action to ensure immediate recognition.

## Typography

The typography system pairs **Montserrat** for display and headings with **Inter** for functional text. Montserrat’s geometric, bold architecture provides the "industrial" strength required for headlines. Inter is utilized for body copy and UI labels due to its exceptional legibility in technical contexts.

- **Headlines:** Always use Montserrat. Use Bold (700) for primary sections to establish a clear hierarchy.
- **Body Text:** Use Inter with generous line-height (1.6) to prevent technical descriptions from appearing cluttered.
- **Labels:** Use Inter SemiBold with slight tracking (0.05em) and uppercase styling for small UI elements like category tags or button text.

## Layout & Spacing

The layout follows a **fluid grid** model with a max-width container of 1280px for desktop to maintain readability. The system prioritizes "breathing room" to counteract the density of industrial data.

- **Section Spacing:** A standard vertical rhythm of 120px is used between major landing page sections.
- **Grid:** A 12-column system is used for desktop, collapsing to 4 columns for mobile.
- **Margins:** Desktop margins are set at 64px, reducing to 24px on mobile devices.
- **Padding:** Internal card padding is generous (40px) to ensure that text and imagery never feel cramped against the card edges.

## Elevation & Depth

This design system uses **Tonal Layering** combined with **Ambient Shadows** to create a sophisticated, three-dimensional look.

- **Base Layer:** The Dark Charcoal background acts as the foundation.
- **Mid Layer:** Light Gray cards sit on top of the dark background. They do not use heavy shadows; instead, they use a very subtle, diffused 15% opacity shadow with a large blur radius (20px-30px) to appear as if they are floating slightly above the surface.
- **Dividers:** Clean, 1px lines in a medium-gray (20% opacity white) are used to separate logical groupings within a dark section without adding visual weight.
- **Interactive States:** On hover, cards should lift slightly (shadow density increases) to provide tactile feedback.

## Shapes

The shape language is defined by **large, approachable radii**. While the industry is often associated with sharp edges, this design system uses rounded corners to signal modern software sophistication and safety.

- **Cards & Sections:** Use `rounded-xl` (1.5rem / 24px) to create a soft, modern container.
- **Buttons:** Use `rounded-lg` (1rem / 16px) for a substantial, tactile feel.
- **Inputs:** Match the button radius for consistency across forms.

## Components

### Service Cards
Modern cards with a white or light-gray background. They should feature a clear top-aligned image or icon, a Montserrat Bold title, and a short Inter body description. Use the `rounded-xl` radius and a subtle lift on hover.

### Buttons
- **Primary:** Deep Red background with white Montserrat text.
- **Secondary:** Transparent with an Orange border and Orange text.
- **Floating Action Button (FAB):** A circular green button (#25D366) fixed to the bottom-right corner for WhatsApp. It should have a stronger shadow than static cards to indicate it sits on the highest Z-index.

### Input Fields
Inputs should have a light gray fill or a subtle border on dark backgrounds. Labels sit above the field in `label-bold` style. Focus states should be highlighted with an Orange border.

### Footer
The footer is a "tall" component. It uses a deeper shade of charcoal than the main background or a solid black. It features a high-contrast layout: brand logo on the left, multi-column navigation in the center, and contact/social links on the right. Use the `body-md` type for footer links with reduced opacity (70%) until hovered.

### Modern Dividers
Use 1px lines with a subtle gradient fade at the edges to separate content without creating "walls" in the layout.