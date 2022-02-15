package com.teamD.movieP.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.teamD.movieP.domain.movie.MovieVO;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

@Repository
public class MovieDAOImpl implements MovieDAO{

    @Autowired
    private SqlSessionTemplate mybatis;

//    영화 리스트 불러오기
    @Override
    public List<MovieVO> getMovieList() {
        return mybatis.selectList("movie.getMovieList");
    }

//    영화 상세 정보 불러오기
    @Override
    public MovieVO getMovieDetail(MovieVO movieVO){
        return mybatis.selectOne("movie.getMovieDetail", movieVO);
    };
}
