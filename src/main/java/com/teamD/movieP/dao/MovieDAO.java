package com.teamD.movieP.dao;

import com.teamD.movieP.domain.movie.MovieVO;

import java.util.List;

public interface MovieDAO {
    List<MovieVO> getMovieList();
    MovieVO getMovieDetail(MovieVO movieVO);
}
