/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
*/
$(document).ready(function() {
  $("#example").DataTable({
    dom: "Bfrtip",
    buttons: [
      {
        extend: "colvisGroup",
        text: "Office info",
        show: [1, 2],
        hide: [3, 4, 5]
      },
      {
        extend: "colvisGroup",
        text: "HR info",
        show: [3, 4, 5],
        hide: [1, 2]
      },
      {
        extend: "colvisGroup",
        text: "Show all",
        show: ":hidden"
      }
    ]
  });
});
