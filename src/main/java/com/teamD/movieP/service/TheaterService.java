package com.teamD.movieP.service;

import java.util.List;

import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.AreaVO;
import com.teamD.movieP.domain.theater.BookVO;
import com.teamD.movieP.domain.theater.Movie_showVO;
import com.teamD.movieP.domain.theater.RoomVO;
import com.teamD.movieP.domain.theater.TheaterVO;

public interface TheaterService {
	
	// 영화 목록 불러오기
	List<MovieVO> ticketing_movie(MovieVO movieVO);
	// 지역 정보 불러오기
	List<AreaVO> ticketing_area(AreaVO areaVO);
	// 극장 정보 불러오기
	List<TheaterVO> ticketing_theater(AreaVO areaVO);
	// 영화 시간 불러오기
	List<Object> ticketing_movie_time(Movie_showVO movie_showVO);
	// 예매하기
	void book_seat(BookVO bookVO);
	
}
