// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){
  $('body').on('click', '.trips', showTripsModal);
  $('body').on('click','#close-modal', closeTripsModal);
  $('body').on('click', '#new-trip', showNewTripForm);
  $('body').on('submit', '#submit', closeNewTripForm);
  $('body').on('click', '#add-to-wishlist', showWishlistForm);
  $('body').on('click', '#submit', closeWishlistForm);
  var userId = $('h2').data().id;

  var deferred1 = $.ajax({
    url: "/wishlists"
  });
  var deferred2 = $.ajax({
    url: "/users/" + userId + "/countries"
  });

$.when(deferred1, deferred2).done(function(data1, data2) {
  var wishData = {};
  var tripData = {};
        for (i=0; i < data1[0].length; i++) {
          wishData[data1[0][i]] = {fillKey: 'wishlist' };
        }
        for (i=0; i < data2[0].length; i++) {
          tripData[data2[0][i]] = {fillKey: 'isATrip' };
        }
      console.log(wishData, tripData);
      var allData = {};
        for (var key in wishData) { allData[key] = wishData[key]; }
        for (var key in tripData) { allData[key] = tripData[key]; }
      var map = new Datamap({
        element: document.getElementById('container'),
          fills: {
            defaultFill: 'rgba(0,0,0,0.6)',
            isATrip: '#BFC196',
            wishlist: '#E5DDBC'
          },
    done: function(datamap) {
      datamap.svg.selectAll('.datamaps-subunit').on('click', function(geography) {
        var countryName = geography.properties.name;
        $.get("/countries/" + countryName, function (data){
          console.log('data available.');
        });
      });
    },
    data: allData
    });
  });
});


function showTripsModal(){
  $('.modal-container').css('display', 'block');
}

function closeTripsModal(){
  $('.modal-container').css('display', 'none');
}

function showNewTripForm(){
  $('#new-trip-form').css('display', 'block');
}

function closeNewTripForm(){
  $('#new-trip-form').css('display', 'none');
}

function showWishlistForm(){
  $('#new-trip-form').css('display', 'block');
}

function closeWishlistForm(){
  $('#new-trip-form').css('display', 'none');
}

$(function() {
  console.log('hi');
    var countries = [
      "France",
      "Nigeria",
      "Australia ",
      "South Africa",
      "Italy",
      "India",
      "China",
      "Japan",
      "Scotland",
      "Mexico",
      "Brazil",
      "Peru",
      "Chile",
      "Greece",
    ];
    $( "#countries" ).autocomplete({
      source: countries
    });
  });
