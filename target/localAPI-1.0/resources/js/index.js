
$(function() {

	// 메인배너에서 상세정보 클릭 시
	$('.main-banner_btn .btn_movie-detail').click(function() {
		$(location).attr('href', 'movieDetail?movie_id=000008');
	});

	// 메인배너에서 예매하기 클릭 시
	$('.main-banner_btn .btn_movie-ticketing').click(function() {
		$(location).attr('href', 'ticketing');
	});

	// 스크롤시 고정 네비게이션 나타내기
	$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		if (scroll > 50) {
			$('.fix-navigation').css('display', 'flex');
		}
		else {
			$('.fix-navigation').css('display', 'none');
		}
	});
	
	// 공지사항 자동 슬라이드
	$('.notice-wrapper').slick({
		vertical: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		arrows: false,
		vertical: true
	});
	
	// 영화순위 슬라이드
	$('.movie-chart_slide').slick({
		infinite: true,
		slidesToShow: 4,
		slidesToScroll: 4,
		nextArrow: $('.next'),
		prevArrow: $('.prev'),
	});

});

