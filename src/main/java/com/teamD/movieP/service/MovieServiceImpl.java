package com.teamD.movieP.service;

import com.teamD.movieP.dao.MovieDAOImpl;
import com.teamD.movieP.domain.movie.MovieVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService{

    @Autowired
    private MovieDAOImpl movieDAO;

//    영화 목록 불러오기
    @Override
    public List<MovieVO> getMovieList() {
        return movieDAO.getMovieList();
    }

//    영화 상세 정보 불러오기
    @Override
    public MovieVO getMovieDetail(MovieVO movieVO){
        return movieDAO.getMovieDetail(movieVO);
    }
}
