package com.teamD.movieP.service;

import com.teamD.movieP.domain.movie.MovieVO;

import java.util.List;

public interface MovieService {
    List<MovieVO> getMovieList();
    MovieVO getMovieDetail(MovieVO movieVO);
}
