package com.teamD.movieP.service;

import com.teamD.movieP.domain.customer.*;

public interface CustomerService {

//    회원 가입 하기
    boolean joinCustomer(CustomerVO customerVO, CustomerInfoVO customerInfoVO, CustomerTermVO customerTermVO);

//    로그인 하기
    boolean login(CustomerVO customerVO);

//    아이디 중복체크 하기
    boolean checkId(CustomerVO customerVO);
}
