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

    @Override
    public List<MovieVO> getMovieList() {
        return mybatis.selectList("movie.getMovieList");
    }

    @Override
    public MovieVO getMovieDetail(MovieVO movieVO){
        return mybatis.selectOne("movie.getMovieDetail", movieVO);
    };
}
