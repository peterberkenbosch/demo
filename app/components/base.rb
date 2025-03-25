# frozen_string_literal: true

class Components::Base < Phlex::HTML
  include Components

  # Include any helpers you want to be available across all components
  include Phlex::Rails::Helpers::Routes
  include PhlexIcons

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
      comment { "After #{self.class.name}"}
    end
  end
end
