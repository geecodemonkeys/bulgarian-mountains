$( document ).ready(function() {
	L.Icon.Default.imagePath = 'leaflet';
    document.theMap = L.map('theMap', {
		zoomControl: false
	}).setView([42.579778, 25.246189], 8);
    L.tileLayer('http://bgmtile.uni-plovdiv.net:40158/{z}/{x}/{y}.png', {
	    attribution: '',
	    maxZoom: 19
	}).addTo(document.theMap);
	L.control.zoom({position: "bottomright"}).addTo(document.theMap);

	var mapmargin = 0;
	$('#theMap').css("height", ($(window).height()));
	$(window).on("resize", resize);
	//resize();

	$("#uploadForm").submit(function(e) {
		e.preventDefault(); // don't submit multiple times

		//http://stackoverflow.com/questions/5392344/sending-multipart-formdata-with-jquery-ajax
		var data = new FormData();
		jQuery.each(jQuery('#uploadForm :file')[0].files, function(i, file) {
		    data.append('file', file);
		});

		$.ajax({
			type: "POST",
			url: "map/upload",
			data: data,
			cache: false,
			contentType: false,
			processData: false,
			success: function(data) {
				document.polyline = L.polyline(data, {color: 'red'}).addTo(document.theMap);
				document.theMap.fitBounds(document.polyline.getBounds());
			}
		});

	});

	$(".js-example-basic-multiple").select2({
  		placeholder: 'Напиши името на обект',
  		width: '100%',
	    allowClear: true,
	    multiple: true,
	    maximumSelectionSize: 1,

  		ajax: {
		    url: "map/search_poi",
		    dataType: 'json',
		    delay: 200,
		    data: function (params) {
		      return {
		        q: params.term, // search term
		        page: params.page
		      };
		    },
		    processResults: function (data, params) {
		      params.page = params.page || 1;
		      document.searchResults = data;

		      return {
		        results: data,
		        pagination: {
		          more: false
		        }
		      };
		    },
		    cache: true
	  },
	  escapeMarkup: function (markup) { return markup; },
	  minimumInputLength: 1
	});

	$("#searchBox").on("select2:select", function (e) { 
		var lat = e.params.data.lat;
		var lon = e.params.data.lon;	
		if (lat !== undefined && lon !== undefined) {
			if (document.lastSearchMarker !== undefined) {
				document.theMap.removeLayer(document.lastSearchMarker);
			}
			document.lastSearchMarker = L.marker([lat, lon]).addTo(document.theMap);
			document.theMap.setView([lat, lon], 16);
		}
	});

});

function resize(){
	$('#theMap').css("height", ($(window).height()));
}