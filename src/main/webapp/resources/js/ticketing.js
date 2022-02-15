$(function() {
	
	$('.area').click(function(){
		
		let area_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_theater',
			type : 'post',
			data : {area_id : area_id},
			dataType : 'text',
			success : function(data) {
				alert("성공");
			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	

})
