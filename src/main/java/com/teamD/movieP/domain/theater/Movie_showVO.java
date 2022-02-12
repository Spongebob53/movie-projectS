package com.teamD.movieP.domain.theater;

import lombok.Data;

@Data
public class Movie_showVO {
    private String movie_show_id;
    private String movie_id;
    private String room_id;
    private String show_start;
}
