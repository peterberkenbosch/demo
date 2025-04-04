# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands
- **Run server**: `bin/dev`
- **Run all tests**: `bin/rails test`
- **Run single test**: `bin/rails test TEST=path/to/test_file.rb:line_number`
- **Run specific test method**: `bin/rails test TEST=path/to/test_file.rb:line_number -n test_method_name`
- **Lint code**: `bin/rubocop`
- **Security scan**: `bin/brakeman`, `bin/bundler-audit`
- **CI pipeline**: `bin/ci`
- **Check JS imports**: `bin/importmap audit`

## Code Style
- Use frozen_string_literal comments in Ruby files
- Views use Phlex (Ruby HTML view components)
- Component hierarchy: `Components::Base` -> `Views::Base` -> specific views
- Render views with `render Views::Home::Index.new` pattern
- Prefer unit and controller tests over system tests
- Error handling: Use `system!` for failing loudly
- Follow Rails Omakase Ruby style (rubocop-rails-omakase)

## Architecture
- Views: Phlex Ruby classes in `app/views/`
- Components: Reusable UI elements in `app/components/`
- CSS: CSS-Zero architecture in `app/assets/stylesheets/`
- JS: Stimulus controllers in `app/javascript/controllers/`
- Import maps: Manage JS dependencies in `config/importmap.rb`

## JavaScript Guidelines
- Use Stimulus controllers for interactive behavior
- Follow Stimulus conventions for targets: `static targets = ["element"]`
- Use values API for state: `static values = { count: Number }`
- Add data attributes in HTML: `data-controller="controller-name"`
- Target elements with: `data-controller-name-target="element"`
- Prefer declarative event handlers: `data-action="click->controller-name#method"`

## Testing Guidelines
- Unit tests: `test/models/`
- Controller tests: `test/controllers/`
- Use fixtures in `test/fixtures/`
- Tests include SessionTestHelper for authentication