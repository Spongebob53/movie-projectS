package com.teamD.movieP.domain.movie;

import lombok.Data;

@Data
public class Movie_ratingVO {
    private int movie_id;
    private int movie_cumulative;
    private float movie_grade;
}
