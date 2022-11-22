import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {

  static targets = ["calendarInput"]

  connect() {
    console.log("hello from flatpickr")
    console.log(flatpickr)
    flatpickr(this.calendarInputTarget, {mode: "range"});
  }
}
