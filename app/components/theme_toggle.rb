# frozen_string_literal: true

class Components::ThemeToggle < Components::Base
  def view_template
    button(
      class: "theme-toggle",
      data: {
        controller: "theme",
        action: "theme#toggle",
        theme_target: "toggle"
      },
      aria: {
        label: "Toggle dark mode",
        checked: "false"
      },
      role: "switch"
    ) do
      render Lucide::Sun.new(class: "hidden dark:block")
      render Lucide::Moon.new(class: "block dark:hidden")
    end
  end
end
