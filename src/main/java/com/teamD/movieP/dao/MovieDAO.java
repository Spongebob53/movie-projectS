package com.teamD.movieP.dao;

import com.teamD.movieP.domain.movie.MovieVO;

import java.util.List;

public interface MovieDAO {

//    영화 리스트 불러오기
    List<MovieVO> getMovieList();

//    영화 상세 정보 불러오기
    MovieVO getMovieDetail(MovieVO movieVO);
}
