// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Alpine from "alpinejs"
window.Alpine=Alpine
Alpine.start()
import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
window.Turbo= Turbo
