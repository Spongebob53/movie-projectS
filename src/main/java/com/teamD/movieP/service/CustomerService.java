package com.teamD.movieP.service;

import com.teamD.movieP.domain.customer.CustomerInfoVO;
import com.teamD.movieP.domain.customer.CustomerTermVO;
import com.teamD.movieP.domain.customer.CustomerVO;

public interface CustomerService {
    boolean joinCustomer(CustomerVO customerVO, CustomerInfoVO customerInfoVO, CustomerTermVO customerTermVO);
    boolean login(CustomerVO customerVO);
    boolean checkId(CustomerVO customerVO);
}
