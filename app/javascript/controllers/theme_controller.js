import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggle"]

  connect() {
    // Initialize theme based on localStorage or system preference
    const savedTheme = localStorage.getItem("theme")
    
    if (savedTheme) {
      document.documentElement.dataset.theme = savedTheme
      this.updateToggleState(savedTheme)
    } else {
      // Default to system preference
      const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches
      const initialTheme = prefersDark ? "dark" : "light"
      document.documentElement.dataset.theme = initialTheme
      this.updateToggleState(initialTheme)
    }
  }

  toggle() {
    const currentTheme = document.documentElement.dataset.theme
    const newTheme = currentTheme === "dark" ? "light" : "dark"
    
    document.documentElement.dataset.theme = newTheme
    localStorage.setItem("theme", newTheme)
    
    this.updateToggleState(newTheme)
  }

  updateToggleState(theme) {
    if (this.hasToggleTarget) {
      this.toggleTarget.setAttribute("aria-checked", theme === "dark")
      this.toggleTarget.setAttribute("aria-label", `Switch to ${theme === "dark" ? "light" : "dark"} mode`)
    }
  }
}