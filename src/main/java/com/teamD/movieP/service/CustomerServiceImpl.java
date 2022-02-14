package com.teamD.movieP.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.teamD.movieP.domain.customer.*;
import com.teamD.movieP.dao.CustomerDAO;
import com.teamD.movieP.dev.CreateSalt;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    @Override
    public boolean joinCustomer(CustomerVO customerVO, CustomerInfoVO customerInfoVO, CustomerTermVO customerTermVO) {
        if (customerDAO.findCustomer(customerVO)==null) {
            CreateSalt createSalt = new CreateSalt();
            try {
                customerVO.setCustomer_pw(createSalt.getSalt_pw(customerVO.getCustomer_id(), createSalt.getSalt()));
                customerVO.setCustomer_salt(createSalt.getSalt());
                customerDAO.saveCustomer(customerVO);
                customerDAO.saveCustomerInfo(customerInfoVO);
                customerDAO.saveCustomerTerm(customerTermVO);
            } catch (Exception e) {
            }
            return true;
        }
        return false;
    }

    @Override
    public boolean login(CustomerVO customerVO){
        String pw = customerVO.getCustomer_pw();
        customerVO = customerDAO.findCustomer(customerVO);
        CreateSalt createSalt = new CreateSalt();
        try {
            if(customerVO.getCustomer_pw().equals(createSalt.getSalt_pw(pw, customerVO.getCustomer_salt()))){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean checkId(CustomerVO customerVO) {
        if(customerDAO.findCustomer(customerVO) == null){
            return true;
        }
        return false;
    }


}
