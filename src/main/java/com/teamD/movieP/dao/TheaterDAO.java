package com.teamD.movieP.dao;

import java.util.List;

import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.AreaVO;
import com.teamD.movieP.domain.theater.Movie_showVO;
import com.teamD.movieP.domain.theater.RoomVO;
import com.teamD.movieP.domain.theater.TheaterVO;

public interface TheaterDAO {

	List<MovieVO> ticketing_movie(MovieVO movieVO);

	List<AreaVO> ticketing_area(AreaVO areaVO);

	List<TheaterVO> ticketing_theater(AreaVO areaVO);

	List<Object> ticketing_movie_time(Movie_showVO movie_showVO);
}
