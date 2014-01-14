// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require bootstrap-datepicker

$(document).ready(function(){
    availableCities = ["Vienna","Graz","Linz","Salzburg","Innsbruck","Klagenfurt","Wels","Villach","Sankt Pölten","Dornbirn","Wiener Neustadt","Steyr","Feldkirch","Bregenz","Wolfsberg","Baden bei Wien","Leoben","Klosterneuburg","Traun","Krems an der Donau","Leonding","Amstetten","Kapfenberg","Mödling","Lustenau","Hallein","Traiskirchen","Kufstein","Braunau am Inn","Schwechat","Spittal an der Drau","Saalfelden","Ansfelden","Stockerau","Ternitz","Hohenems","Perchtoldsdorf","Telfs","Feldkirchen","Tulln","Bad Ischl","Bludenz","Bruck an der Mur","Gmunden","Sankt Veit an der Glan","Schwaz","Hall in Tirol","Eisenstadt","Neunkirchen","Lienz","Hard","Wörgl","Knittelfeld","Vöcklabruck","Marchtrenk","Korneuburg","Waidhofen","Rankweil","Ried im Innkreis","Wals-Siezenheim","Zwettl","Völkermarkt","Bad Vöslau","Hollabrunn","Enns","Mistelbach","Sankt Johann im Pongau","Brunn am Gebirge","Sankt Andrä","Götzis","Bischofshofen","Köflach"];
    $("#listing_city").autocomplete({source: availableCities});
    $("#search_city").autocomplete({source: availableCities});
});
