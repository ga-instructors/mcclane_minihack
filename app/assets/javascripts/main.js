$( document ).ready(function() {
    $('h1').text("knock knock");
    $('<div class = "inputForm">').appendTo('Body');
    $('<input = "text" id = "userNum" placeholder = "enter your digits "></input> ').appendTo($('.inputForm'));
    
    $('<select id = "type"><option value="jokes">jokes</option><option value="pics">pics</option><option value="animals">animals</option></select>').appendTo($('.inputForm'));

    $('<br><button id = "submit">for a good time</button>').appendTo($('.inputForm'));

    var contentType = $('#type').val();
    
    $('#submit').click( function(){
    	 
    	$.ajax({
	        type: 'GET',
	        url: "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=animal ",
	      }).done(function(response){
	      	console.log(response)
	        $('body').css("background-image", "url(" + response.data.image_url + ");", "background-size", "cover")
	      });

    	$("<div id='img'>").appendTo('body')


    	// grabs number input
    	var number = $('#userNum').val();
    	if (contentType === "jokes"){
    	  $.ajax({
		    type: 'POST',
		    url: '/jokes',
		    dataType: 'json',
		    data: {
		      type: contentType,
		      phone_number: number 
				}
		    }).done (function(data){
		      console.log('it worked')
		    });
		 }
		$('#userNum').html('');
    }); 

    $('<p> testing for animal </p>').appendTo('body')
    $('p').click(function(){
    	$.ajax({
	        type: 'GET',
	        url: "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=animal ",
	      }).done(function(response){
	      	console.log(response)
	        $('body').css("background-image", "url(" + response.data.image_url + ")")
	      });
	  });

});
