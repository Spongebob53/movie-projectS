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

	// 상세페이지 배너 슬라이드
	$('.banner-slide').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2500,
		arrows: false,
	});

	// 트레일러 슬라이드
	$('.trailer-slide_box').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 3,
		nextArrow: $('.trailer-next'),
		prevArrow: $('.trailer-prev'),
	});

	// 스틸컷 슬라이드
	$('.view-list-box').slick({
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		nextArrow: $('.still-cut-next'),
		prevArrow: $('.still-cut-prev'),
		fade: true,
		asNavFor: '.thumb-list-box'
	});

	$('.thumb-list-box').slick({
		infinite: true,
		slidesToShow: 5,
		slidesToScroll: 1,
		focusOnSelect: true,
		vertical: true,
		arrows: false,
		asNavFor: '.view-list-box',
	});

});