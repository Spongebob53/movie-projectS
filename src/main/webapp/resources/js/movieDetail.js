$(function() {
	
	// 페이지 로드 후 바로 클래스 추가
	$('.info').addClass('active');

	// 영화정보, 평점 및 관람평 버튼 클릭 이벤트
	$('.info').on('click', function() {
		$('.info').toggleClass('active');
		$('.grade').removeClass('active');
	});

	$('.grade').on('click', function() {
		$('.grade').toggleClass('active');
		$('.info').removeClass('active');
	});

	// 트레일러 슬라이드
	$('.trailer-box').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 3,
		nextArrow: $('.next'),
		prevArrow: $('.prev'),
	});


});

$(document).ready(function() {
	$('.trailer-box').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 3,
		nextArrow: $('.next'),
		prevArrow: $('.prev'),
	});
});