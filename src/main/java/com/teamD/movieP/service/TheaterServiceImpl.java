package com.teamD.movieP.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamD.movieP.dao.TheaterDAO;
import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.*;

@Service
public class TheaterServiceImpl implements TheaterService{
	
	@Autowired
	private TheaterDAO theaterDAO;
	
	// 영화 목록 불러오기
	@Override
	public List<MovieVO> ticketing_movie(MovieVO movieVO) {
		return theaterDAO.ticketing_movie(movieVO);
	}
	// 지역 정보 불러오기
	@Override
	public List<AreaVO> ticketing_area(AreaVO areaVO) {
		return theaterDAO.ticketing_area(areaVO);
	}
	// 극장 정보 불러오기
	@Override
	public List<TheaterVO> ticketing_theater(AreaVO areaVO) {
		return theaterDAO.ticketing_theater(areaVO);
	}
	// 영화 시간 불러오기
	@Override
	public List<Object> ticketing_movie_time(Movie_showVO movie_showVO) {
		return theaterDAO.ticketing_movie_time(movie_showVO);
	}
	// 예매하기
	@Override
	public void book_seat(BookVO bookVO) {
		 theaterDAO.book_seat(bookVO);
		
	}
}
