$( document ).ready(function() {
    $('h1').text("knock knock");
    $('<div class = "inputForm">').appendTo('Body');
    $('<input = "text" id = "userNum" placeholder = "enter your digits "></input> ').appendTo($('.inputForm'));
    
    $('<select id = "type"><option value="jokes">jokes</option><option value="pics">pics</option><option value="animals">animals</option></select>').appendTo($('.inputForm'));

    $('<br><button id = "submit">for a good time</button>').appendTo($('.inputForm'));

    var contentType = $('#type').val();
    
    $('#submit').click( function(){
    	var number = $('#userNum').val();
    	  $.ajax({
		    type: 'POST',
		    url: '/',
		    dataType: 'json',
		    data: {
		      type: contentType,
		      phone_number: number 
				}
		    }).done (function(data){
		      console.log('it worked')
		    });
    }); 

});
