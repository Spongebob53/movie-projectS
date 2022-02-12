package com.teamD.movieP.domain.customer;

import lombok.Data;

@Data
public class CustomerAdVO {
    private String customer_id;
    private int ad_email;
    private int ad_sns;
    private int ad_tel;
}
