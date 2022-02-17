$(function() {
	
	var theater_choice = 0;
	var movie_choice = 0;
	let area_id;
	let theater_id;
	let movie_id;
	// 지역선택
	$('.theater-areas_item').click(function(){

		area_id = $(this).val();
		
		$.ajax( {
			url : 'ticketing_theater',
			type : 'post',
			data : {"area_id" : area_id},
			dataType : 'json',
			success : function(data) {
				
				var t = $('.theater-theaters'); 
				
				t.children('li').remove();
				
				for(var theater in data){
					t.append('<input type="hidden" value="'+data[theater].theater_name+'" />'+  '<li class="theater-theaters_item" value="'+data[theater].theater_id+'">'+data[theater].theater_name+'</li>')
				}

			},
			error : function() {
				alert("error");
			}
			
		})
	
	
	})
	
	
	// 극장선택
	$(document).on("click",".theater-theaters_item",function(){
		$(this).each(function(){
			
			theater_choice = 1;
			
			theater_id = $(this).val();
			
			let theater_name = $(this).prev().val();
			
			var b_t = $('.book-process_theater');
			
			b_t.next().text(">"+theater_name);
			
			
			if(movie_choice == 1) {
				theater_time_fn();
			}
			
		})
	})
	
	// 영화선택
	$('.movies-item').click(function(){
		
		movie_choice = 1;
		
		movie_id = $(this).val();
		
		let movie_title = $(this).prev().val();
			
			var b_m = $('.book-process_movie');
			
			b_m.next().text(">"+movie_title);
			
			if(theater_choice == 1) {
				theater_time_fn();
			}
	
	})
	
	// 영화시간 출력
	function theater_time_fn() {

		$.ajax({
			url: 'ticketing_movie_time',
			type: 'post',
			data: { "movie_id": movie_id, "theater_id": theater_id },
			dataType: 'json',
			success: function(data) {
				$('.theater-schedule').remove();
				
				// 영화가 없는 극장을 골랐을시 초기화
				if (data.length == 0) {
					$('.time-container_theater-movie').text(" ");
					for (var movie_time in data) {
						$('.time-container_theater').append(
							'<div class="theater-schedule"><input type="hidden" value="' + " " + '" /><input type="hidden" value="' + " " + '" /><div class="theater-schedule_time">' + " " + '</div>' +
							'<div class="theater-schedule_theater">' + " " + '/' + " " + ' ' + " " + '</div></div>'
						)
					}
				} else {

					$('.time-container_theater-movie').text(data[0].movie_title);

					for (var movie_time in data) {
						$('.time-container_theater').append(
							'<div class="theater-schedule"><input type="hidden" value="' + data[movie_time].room_seat + '" /><input type="hidden" value="' + data[movie_time].movie_show_id + '" /><div class="theater-schedule_time">' + data[movie_time].show_start + '</div>' +
							'<div class="theater-schedule_theater">' + data[movie_time].room_seat + '/' + data[movie_time].room_seat + ' ' + data[movie_time].room_name + '</div></div>'

						)
					}
				}
			},
			error: function() {
				alert("error");
			}
		})
	}
	
	// 좌석선택 가기
	$(document).on("click",".theater-schedule",function(){
		$(this).each(function(){
			var show_start = $(this).children('.theater-schedule_time').text();
				
			var b_t = $('.book-process_time');
			
			b_t.next().text(">"+show_start);
			
			$('.book-process').children('input').remove();
			$('.book-process').append(
				'<input type="hidden" name="room_seat" value="' + $(this).children('.theater-schedule_time').prev().prev().val() + '" />' +
				'<input type="hidden" name="movie_show_id" value="' + $(this).children('.theater-schedule_time').prev().val() + '" />')
	
		})
	})
	
	// 좌석선택 눌렀을시 체크
	$('.book-process_submit').click(function(){
		
		if(theater_choice == 0) {
			alert("극장을 선택해주세요");
			return false;
		}
		else if(movie_choice == 0) {
			alert("영화를 선택해주세요");
			return false;
		}
		else if(sessionStorage.getItem("customer_id") != null) {
			if(confirm("로그인이 필요한 서비스입니다\n로그인 페이지로 이동하시겠습니까?") == true){
				$('.book-process').attr("action","login");
			} else {
				return false;
			}
		}
		else {
			$('.book-process').attr("action","seat");
		}
		
	})

	
	
	

})