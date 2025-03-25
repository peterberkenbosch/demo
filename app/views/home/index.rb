# frozen_string_literal: true

class Views::Home::Index < Views::Base
  def view_template
    h1 { "Home::Index" }
    p { "Find me in " }
  end
end
