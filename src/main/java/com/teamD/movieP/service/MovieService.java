package com.teamD.movieP.service;

import com.teamD.movieP.domain.movie.MovieVO;

import java.util.List;

public interface MovieService {

//    영화 목록 불러오기
    List<MovieVO> getMovieList();

//    영화 상세 정보 불러오기
    MovieVO getMovieDetail(MovieVO movieVO);
}
