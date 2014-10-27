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
  var userId = $('h2').data().id;
  $.get("/users/" + userId + "/countries", function(){
      console.log("hi");
  }).done(function() {
      var map = new Datamap({
    element: document.getElementById('container'),
    fills: {
            defaultFill: 'rgba(0,0,0,0.6)'
    },
    done: function(datamap) {
          datamap.svg.selectAll('.datamaps-subunit').on('click', function(geography) {
            var countryName = geography.properties.name;
            $.get("/countries/" + countryName, function (data){
              console.log('data available.');
            })
          });
    }
    });
  });
});
