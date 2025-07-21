# frozen_string_literal: true

class Views::Home::Index < Views::Base
  def view_template
    h1 { "Home::Index" }
    div { phlex_icon "hero/home", variant: :solid, class: "w-5 h-5 text-blue-500" }
    div do
      Bootstrap::House(class: "size-4")
      Flag::Nl(variant: :rectangle, class: "size-4")
      Hero::Home(variant: :solid, class: "size-4")
      Lucide::House(class: "size-4")
      Radix::Home(class: "size-4")
      Remix::HomeLine(class: "size-4")
      Tabler::Home(variant: :filled, class: "size-4")
    end
  end
end
