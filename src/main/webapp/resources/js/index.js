//$(function() {
//
//	// next 버튼 클릭 시 
//	$('.btn_arrow-next').click(function() {
//
//		$('.movie-chart_content').slick({
//			infinite: true,
//			slidesToShow: 4,
//		});
//	});
//
//});



$(document).ready(function() {
	$('.movie-chart_content').slick({
		infinite: true,
		slidesToShow: 4,
		slidesToScroll: 4,
		nextArrow: $('.next'),
		prevArrow: $('.prev'),
	});
});

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

