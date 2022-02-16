$(function() {
	
	var choice = 0;
	let area_id;
	let theater_id;
	// 지역선택
	$('.area').click(function(){

		area_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_theater',
			type : 'post',
			data : {area_id : area_id},
			dataType : 'json',
			success : function(data) {
				
				var t = $('.theaterList'); 
				
				t.children('li').remove();
				
				for(var vo in data){
					t.append('<li><input type="hidden" value="'+data[vo].theater_name+'" />'+  '<button class="theater" value="'+data[vo].theater_id+'">'+data[vo].theater_name+'</button></li>')
				}

			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	
	
	// 극장선택
	$(document).on("click",".theater",function(){
		
		$(this).each(function(){
			
			let theater_name = $(this).prev().val();
			
			alert(theater_name);
			
			var b_t = $('.book-process_theater');
			
			b_t.next().text(">"+theater_name);
			
			aaa();
			
		});
	})
	
//			$.ajax({
//				url: 'ticketing_movie_title',
//				type: 'post',
//				data: { theater_id: theater_id },
//				dataType: 'text',
//				success: function(data) {
//					alert("성공");
//				},
//				error: function() {
//					alert("error");
//				}
//	
//			})
//		
//			})
//	
//	})
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
	
	function aaa() {
		alert("123");
	}
	
})