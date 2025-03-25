# Claude Instructions for Demo Rails Project

## Commands
- **Run server**: `bin/dev`
- **Run all tests**: `bin/rails test`
- **Run single test**: `bin/rails test TEST=path/to/test_file.rb:line_number`
- **Lint code**: `bin/rubocop`
- **Security scan**: `bin/brakeman`, `bin/bundler-audit`
- **CI pipeline**: `bin/ci`

## Code Style
- Follow standard Rails conventions and Ruby style guide
- Views use Phlex (Ruby HTML view components)
- Component hierarchy: `Components::Base` -> `Views::Base` -> specific views
- Render views with `render Views::Home::Index.new` pattern
- Controllers follow RESTful patterns
- Error handling: Use `system!` for failing loudly

## JavaScript & Assets
- No build setup - uses importmaps for JavaScript modules
- Manage JS imports via `config/importmap.rb`
- Uses Stimulus controllers in `app/javascript/controllers/`
- Check imports with `bin/importmap audit`

## CSS Architecture
- Uses CSS-Zero through the css-zero gem
- Component-based CSS files in `app/assets/stylesheets/`
- Dark mode support with media queries
- Custom properties for colors and design tokens
- Functional CSS classes (button.css, input.css, layouts.css)
- CSS variables for theming (--color-primary, --color-text, etc.)

## File Structure
- Views in `app/views/` (Phlex Ruby classes)
- Components in `app/components/`
- CSS in `app/assets/stylesheets/`
- JS controllers in `app/javascript/controllers/`

