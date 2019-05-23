import "bootstrap";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "j, F, Y",
  dateFormat: "d.m.Y",
})
