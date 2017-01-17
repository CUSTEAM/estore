$(document).ready(function () {	 

$( "#order" ).click(function() {
	alert(JSON.stringify($shopping_list));
	$.post( "order.vx?x="+Math.floor(Math.random()*999),
			
			/*{  
				products:JSON.stringify($shopping_list)  
			
			
			}*/
	
			JSON.stringify($shopping_list)
	
	).done(function(d){	
			
		
		
	}, "json");	
});

});