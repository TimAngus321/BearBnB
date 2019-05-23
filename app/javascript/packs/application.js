import "bootstrap";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "j F, Y",
  dateFormat: "d.m.Y",
})

// app/javascript/packs/application.js
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
