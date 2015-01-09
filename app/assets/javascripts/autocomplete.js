Airports = {
    state_hash: {},

    getDistanceFromLatLonInKm: function(lat1,lon1,lat2,lon2) {
	console.log("lat1 = " + lat1 + " lon1 = " + lon1 + " lat2 = " + lat2 + " lon2 = " + lon2);
	var me = this;
	var R = 6371; // Radius of the earth in km
	var dLat = me.deg2rad(lat2-lat1);  // deg2rad below
	var dLon = me.deg2rad(lon2-lon1); 
	var a = 
	    Math.sin(dLat/2) * Math.sin(dLat/2) +
	    Math.cos(me.deg2rad(lat1)) * Math.cos(me.deg2rad(lat2)) * 
	    Math.sin(dLon/2) * Math.sin(dLon/2)
	; 
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	var d = R * c; // Distance in km
	return d;
    },

    deg2rad: function(deg) {
	return deg * (Math.PI/180)
    },


    distanceBetween: function(first_airport, second_airport) {
	var me = this;
	return me.getDistanceFromLatLonInKm(parseFloat(first_airport.lat), parseFloat(first_airport.long), parseFloat(second_airport.lat), parseFloat(second_airport.long));
    },

    autocomplete: function(selector) {
	var me = this;
	$(selector).autocomplete({
	    source: "/airports.json",
	    minLength: 2,

	    focus: function(event, ui) {
		$(selector).val(ui.item.airport_identifier);
		return false;
	    },

	    select: function(event, ui) {
		me.state_hash[selector] = ui.item;
		if (me.state_hash["#log_entry_from"] !== undefined && me.state_hash["#log_entry_to"] !== undefined) {
		    var distance = me.distanceBetween(me.state_hash["#log_entry_from"], me.state_hash["#log_entry_to"]);
		    console.log(distance);
		    $("#distance_between").html("The straight line distance from " + me.state_hash["#log_entry_from"].name + " to " + me.state_hash["#log_entry_to"].name + " is " + (distance * 0.621371192).toFixed(2) + " miles.");
		    console.log('both airports are selected');
		}
		$(selector).val(ui.item.airport_identifier);
		return false;
	    },

	}).data('ui-autocomplete')._renderItem = function( ul, item ) {
	    return $("<li>").append($("<a>").text( "(" + item.airport_identifier + ") " + item.name )).appendTo( ul );
	}
    }
 }
