# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("[class~=datepicker]").datepicker(format: 'yyyy-mm-dd')
  
  availableCities = ["Vienna","Graz","Linz","Salzburg","Innsbruck","Klagenfurt","Wels","Villach","Sankt Pölten","Dornbirn","Wiener Neustadt","Steyr","Feldkirch","Bregenz","Wolfsberg","Baden bei Wien","Leoben","Klosterneuburg","Traun","Krems an der Donau","Leonding","Amstetten","Kapfenberg","Mödling","Lustenau","Hallein","Traiskirchen","Kufstein","Braunau am Inn","Schwechat","Spittal an der Drau","Saalfelden","Ansfelden","Stockerau","Ternitz","Hohenems","Perchtoldsdorf","Telfs","Feldkirchen","Tulln","Bad Ischl","Bludenz","Bruck an der Mur","Gmunden","Sankt Veit an der Glan","Schwaz","Hall in Tirol","Eisenstadt","Neunkirchen","Lienz","Hard","Wörgl","Knittelfeld","Vöcklabruck","Marchtrenk","Korneuburg","Waidhofen","Rankweil","Ried im Innkreis","Wals-Siezenheim","Zwettl","Völkermarkt","Bad Vöslau","Hollabrunn","Enns","Mistelbach","Sankt Johann im Pongau","Brunn am Gebirge","Sankt Andrä","Götzis","Bischofshofen","Köflach"]
  $("#listing_city").autocomplete source: availableCities
