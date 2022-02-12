package com.teamD.movieP.domain.customer;

import lombok.Data;

@Data
public class CustomerVO {
    private String customer_id;
    private String customer_pw;
    private String customer_salt;
}
