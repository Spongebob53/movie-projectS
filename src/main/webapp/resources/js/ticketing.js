$(function() {
	
	var theater_choice = 0;
	var movie_choice = 0;
	let area_id;
	let theater_id;
	let room_id;
	let movie_id;
	// 지역선택
	$('.area').click(function(){

		area_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_theater',
			type : 'post',
			data : {"area_id" : area_id},
			dataType : 'json',
			success : function(data) {
				
				var t = $('.theaterList'); 
				
				t.children('li').remove();
				
				for(var theater in data){
					t.append('<li><input type="hidden" value="'+data[theater].theater_name+'" />'+  '<button class="theater" value="'+data[theater].theater_id+'">'+data[theater].theater_name+'</button></li>')
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
			
			theater_choice = 1;
			
			theater_id = $(this).val();
			
			let theater_name = $(this).prev().val();
			
			var b_t = $('.book-process_theater');
			
			b_t.next().text(">"+theater_name);
			
			
			if(movie_choice == 1) {
				aaa();
			} else {
				alert("영화선택해주세요");
			}
			
		})
	})
	
	// 영화선택
	$('.movie_title').click(function(){
		
		movie_choice = 1;
		
		movie_id = $(this).val();
		
		let movie_title = $(this).prev().val();
			
			var b_m = $('.book-process_movie');
			
			b_m.next().text(">"+movie_title);
			
			if(theater_choice == 1) {
				aaa();
			} else {
				alert("상영관선택해주세요");
			}
	
	})
	
	// 영화시간 출력
	function aaa() {
		alert("영화시간 출력");

		$.ajax({
			url: 'ticketing_movie_time',
			type: 'post',
			data: { "movie_id": movie_id, "theater_id": theater_id },
			dataType: 'json',
			success: function(data) {
				$('.time-container_theater-movie').text(data[0].movie_title);

				for (var movie_time in data) {
					$('.time-container_theater').append(
						'<div class="theater-schedule"><input type="hidden" value="' + data[movie_time].movie_show_id + '" /><div class="theater-schedule_time">' + data[movie_time].show_start + '</div>' +
						'<div class="theater-schedule_theater">' + data[movie_time].room_seat + '/' + data[movie_time].room_seat + ' ' + data[movie_time].room_name + '</div></div>'

					)
				}
			},
			error: function() {
				alert("error");
			}
		})
	}
	
	$(document).on("click",".theater-schedule",function(){
		$(this).each(function(){
			var show_start = $(this).children('.theater-schedule_time').text();
				
			var b_t = $('.book-process_time');
			
			b_t.next().text(">"+show_start);
			
			$('.book-process').children('input').remove();
			$('.book-process').append('<input type="hidden" value="' + $(this).children('.theater-schedule_time').prev().val() + '" />')
			console.log($(this).children('.theater-schedule_time').prev().val());
			
			
			
		})
	})
	

	
	
	

})