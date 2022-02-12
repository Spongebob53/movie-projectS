package com.teamD.movieP.domain.customer;

import lombok.Data;

@Data
public class CustomerInfoVO {
    private String customer_id;
    private String customer_name;
    private String customer_tel;
    private String customer_birth;
    private String customer_email;
    private int customer_point;
}
