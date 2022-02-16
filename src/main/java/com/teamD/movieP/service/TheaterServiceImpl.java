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

	@Override
	public List<MovieVO> ticketing_movie(MovieVO movieVO) {
		return theaterDAO.ticketing_movie(movieVO);
	}

	@Override
	public List<AreaVO> ticketing_area(AreaVO areaVO) {
		return theaterDAO.ticketing_area(areaVO);
	}

	@Override
	public List<TheaterVO> ticketing_theater(AreaVO areaVO) {
		return theaterDAO.ticketing_theater(areaVO);
	}

	@Override
	public List<Movie_showVO> ticketing_movie_show(TheaterVO theaterVO) {
		return theaterDAO.ticketing_movie_show(theaterVO);
	}
}
