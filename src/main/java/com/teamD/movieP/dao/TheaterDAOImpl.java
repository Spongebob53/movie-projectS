package com.teamD.movieP.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.*;

@Repository
public class TheaterDAOImpl implements TheaterDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 영화 목록 불러오기
	@Override
	public List<MovieVO> ticketing_movie(MovieVO movieVO) {
		return mybatis.selectList("theater.ticketing_movie", movieVO);
	}
	// 지역 정보 불러오기
	@Override
	public List<AreaVO> ticketing_area(AreaVO areaVO) {
		return mybatis.selectList("theater.ticketing_area", areaVO);
	}
	// 극장 정보 불러오기
	@Override
	public List<TheaterVO> ticketing_theater(AreaVO areaVO) {
		return mybatis.selectList("theater.ticketing_theater", areaVO);
	}
	// 영화 시간 불러오기
	@Override
	public List<Object> ticketing_movie_time(Movie_showVO movie_showVO) {
		return mybatis.selectList("theater.ticketing_movie_time", movie_showVO);
	}
	// 예매하기
	@Override
	public void book_seat(BookVO bookVO) {
		mybatis.insert("theater.book_seat",bookVO);
		
	}
}
