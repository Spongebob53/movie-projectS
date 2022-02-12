package com.teamD.movieP.dao;

import com.teamD.movieP.domain.customer.*;

public interface CustomerDAO {
    void saveCustomer(CustomerVO customerVO);
    void saveCustomerInfo(CustomerInfoVO customerInfoVO);
    void saveCustomerTerm(CustomerTermVO customerTermVO);
    CustomerVO findCustomer(CustomerVO customerVO);
}
