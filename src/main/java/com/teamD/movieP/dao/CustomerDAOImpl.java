package com.teamD.movieP.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.teamD.movieP.domain.customer.*;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

    @Autowired
    private SqlSessionTemplate mybatis;

    @Override
    public void saveCustomer(CustomerVO customerVO) {
        mybatis.insert("customer.saveCustomer", customerVO);
    }

    @Override
    public void saveCustomerInfo(CustomerInfoVO customerInfoVO) {
        mybatis.insert("customer.saveCustomerInfo", customerInfoVO);
    }

    @Override
    public void saveCustomerTerm(CustomerTermVO customerTermVO) {
        mybatis.insert("customer.saveCustomerTerm", customerTermVO);
    }

    @Override
    public CustomerVO findCustomer(CustomerVO customerVO) {
        return mybatis.selectOne("customer.findCustomer", customerVO);
    }
}
