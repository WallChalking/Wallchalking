# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("[class~=datepicker]").datepicker(format: 'yyyy-mm-dd')
  
  $("#listing_property_for").change ->
    if $("#listing_property_for").val() is "Sale"
      $("label[for='listing_monthly_rent']").text("Price")
    if $("#listing_property_for").val() is "Rent"
      $("label[for='listing_monthly_rent']").text("Monthly Rent")
    $(".hidden_field").show()
    
  $(".like").click ->
    $(".loader").html("...")
  
  
  $('#star').raty({ 
    path: '/assets' ,
    width: 200,
    starOff  : 'star-off-big.png',
    starOn   : 'star-on-big.png',
    click: (score, evt) ->
      $("#review_rating").val(score)      
  
  })
    

