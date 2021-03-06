package com.teamD.movieP.domain.movie;

import lombok.Data;

@Data
public class MovieVO {
    private String movie_id;
    private String movie_title;
    private String movie_eng_title;
    private int movie_time;
    private int movie_age;
    private String movie_gerne;
    private String movie_director;
}
