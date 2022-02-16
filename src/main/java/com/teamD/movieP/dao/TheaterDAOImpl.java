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

	@Override
	public List<MovieVO> ticketing_movie(MovieVO movieVO) {
		return mybatis.selectList("theater.ticketing_movie", movieVO);
	}

	@Override
	public List<AreaVO> ticketing_area(AreaVO areaVO) {
		return mybatis.selectList("theater.ticketing_area", areaVO);
	}

	@Override
	public List<TheaterVO> ticketing_theater(AreaVO areaVO) {
		System.out.println("DAO호출" + areaVO.getArea_id());
		return mybatis.selectList("theater.ticketing_theater", areaVO);
	}

	@Override
	public List<Movie_showVO> ticketing_movie_show(TheaterVO theaterVO) {
		return mybatis.selectList("theater.ticketing_movie_show", theaterVO);
	}
}
