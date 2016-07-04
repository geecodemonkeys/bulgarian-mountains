$( document ).ready(function() {
    document.theMap = L.map('theMap').setView([42.85, 24.72], 8);
    L.tileLayer('http://bgmtile.uni-plovdiv.net:40158/{z}/{x}/{y}.png', {
	    attribution: '',
	    maxZoom: 19
	}).addTo(document.theMap);

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

});