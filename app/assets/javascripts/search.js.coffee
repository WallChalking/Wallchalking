# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("li.property_for").click ->
    $("li.property_for").removeClass "active"
    $(this).addClass "active"
    $("#search_property_for").val $(this).attr("id")

  $("#search").click ->
    if $("#search_city").val().length is 0
      $(".error").show "slow"
      false
