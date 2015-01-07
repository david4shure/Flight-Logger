function autocomplete(selector) {
    $(selector).autocomplete({
	source: "/airports.json",
	minLength: 2,

	focus: function(event, ui) {
            $(selector).val("(" + ui.item.airport_identifier + ") " + ui.item.name);
            return false;
	},

	select: function(event, ui) {
            $(selector).val("(" + ui.item.airport_identifier + ") " + ui.item.name);
            return false;
	},

    }).data('ui-autocomplete')._renderItem = function( ul, item ) {
	return $("<li>").append($("<a>").text( "(" + item.airport_identifier + ") " + item.name )).appendTo( ul );
    }
}
