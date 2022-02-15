package com.teamD.movieP.service;

import java.util.List;

import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.AreaVO;
import com.teamD.movieP.domain.theater.Movie_showVO;
import com.teamD.movieP.domain.theater.TheaterVO;

public interface TheaterService {

	List<MovieVO> ticketing_movie(MovieVO movieVO);

	List<AreaVO> ticketing_area(AreaVO areaVO);

	List<TheaterVO> ticketing_theater(AreaVO areaVO);

	List<Movie_showVO> ticketing_movie_show(Movie_showVO movie_showVO);
}
