// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree

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
            isATrip: '#6de3cd',
            wishlist: '#FF0000'
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
