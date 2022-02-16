$(function() {
	
	var choice = 0;
	// 지역선택
	$('.area').click(function(){
		
		let area_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_theater',
			type : 'post',
			data : {area_id : area_id},
			dataType : 'json',
			success : function(data) {
				
				var t = $('.theater'); 
				
				t.children('li').remove();
				
				for(var vo in data){
					t.append('<li><input type="hidden" value="'+data[vo].theater_id+'" />'+ data[vo].theater_name + '</li>')
				}
				

//				alert("성공");
			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	// 극장선택
	$('.theater').click(function(){
		
		let theater_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_movie_title',
			type : 'post',
			data : {theater_id : theater_id},
			dataType : 'text',
			success : function(data) {
				alert("성공");
			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	// 영화선택
	$('.movie_title').click(function(){
		
		let room_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_movie_show',
			type : 'post',
			data : {theater_id : theater_id},
			dataType : 'text',
			success : function(data) {
//				alert("성공");
			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	
})