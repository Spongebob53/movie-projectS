package com.teamD.movieP.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.mybatis.spring.SqlSessionTemplate;
import com.teamD.movieP.domain.customer.*;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

    @Autowired
    private SqlSessionTemplate mybatis;

//    회원 계정 저장하기
    @Override
    public void saveCustomer(CustomerVO customerVO) {
        mybatis.insert("customer.saveCustomer", customerVO);
    }

//    회원 정보 저장하기
    @Override
    public void saveCustomerInfo(CustomerInfoVO customerInfoVO) {
        mybatis.insert("customer.saveCustomerInfo", customerInfoVO);
    }

//    회원 약관 저장하기
    @Override
    public void saveCustomerTerm(CustomerTermVO customerTermVO) {
        mybatis.insert("customer.saveCustomerTerm", customerTermVO);
    }

//    아이디 체크하기
    @Override
    public CustomerVO findCustomer(CustomerVO customerVO) {
        return mybatis.selectOne("customer.findCustomer", customerVO);
    }
}
