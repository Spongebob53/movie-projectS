// 영화순위 슬라이드
$(document).ready(function() {
	$('.movie-chart_content').slick({
		infinite: true,
		slidesToShow: 4,
		slidesToScroll: 4,
		nextArrow: $('.next'),
		prevArrow: $('.prev'),
	});
});

// 공지사항 자동 슬라이드
$(document).ready(function() {
	$('.notice-wrapper').slick({
		vertical: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		arrows: false,
		vertical: true
	});
});

// 메인배너에서 상세정보 클릭 시
$(function() {

	$('.main-banner_btn .btn_movie-detail').click(function() {
		$(location).attr('href', 'movieDetail?movie_id=000001');
	});

});

// 메인배너에서 예매하기 클릭 시
$(function() {

	$('.main-banner_btn .btn_movie-ticketing').click(function() {
		$(location).attr('href', 'ticketing2');
	});

});

