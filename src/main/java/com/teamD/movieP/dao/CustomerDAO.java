package com.teamD.movieP.dao;

import com.teamD.movieP.domain.customer.*;

public interface CustomerDAO {

//    회원 계정 저장하기
    void saveCustomer(CustomerVO customerVO);

//    회원 정보 저장하기
    void saveCustomerInfo(CustomerInfoVO customerInfoVO);

//    회원 약관 저장하기
    void saveCustomerTerm(CustomerTermVO customerTermVO);

//    아이디 체크하기
    CustomerVO findCustomer(CustomerVO customerVO);
}
