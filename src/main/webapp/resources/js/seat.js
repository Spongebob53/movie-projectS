$(function() {
	
	var seat_choice = new Array();
	
	
	
	// 예매완료
	$(document).on("click", ".seats-seat", function() {
		$(this).each(function() {
			var seat_check = 0;
			// 좌석을 선택했을때 선택되있는지 체크
			for(var i = 0; i <seat_choice.length; i++) {
				if( seat_choice[i] === $(this).text() ) {
					seat_choice.splice(i,1);
					i--;
					seat_check = 1;
				}
			}
			// 선택이 안되있었으면 선택처리
			if (seat_check == 0) {
			seat_choice.push($(this).text());
			} 
			
				
		})

	})
	
	// 예매하기 눌렀을때 db에 저장
	$(document).on("click", ".seat-submit_btn", function() {
		
		
		if (seat_choice.length == 0) {
			alert("좌석을 선택해주세요");
			return false;
		} else {
			$(this).each(function() {
				
				for (var i = 0; i < seat_choice.length; i++) {
					$(this).parent().append('<input type="hidden" value="' + $(this).val() + seat_choice[i] + '" />');

					$.ajax({
						url: "book_seat",
						type: "post",
						data: { "customer_id": $(this).next().val(), "book_id": $(this).val() + seat_choice[i] },
						dataType: "text",
						success: function(data) {
						},
						error: function(err) {
							alert("에러"+err)
						}

					})
				}
				alert("예매가 완료되었습니다.")
				
				
			})
		}
	})


	
	
	

})