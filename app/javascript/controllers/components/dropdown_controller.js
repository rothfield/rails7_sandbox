import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  static targets = ["menu"]

  toggleMenu() {
    console.log("Hello, toggleMenu!", this.element);
     this.menuTarget.classList.toggle('hidden');
  }

  connect() {
    console.log("Hello, Stimulus!", this.element);
  }
}
