package com.swp.g3.service;

import com.swp.g3.entity.Customer;

public class CustomerService {
    public boolean save(Customer newCustomer){
        try{
            customerRepository.save(newCustomer);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Customer findOneByUsername(String username){
        Customer c = customerRepository.findOneByUsername(username);
        return c;
    }
    public Customer findOneByGmail(String gmail){
        Customer c = customerRepository.findOneByGmail(gmail);
        return c;
    }
}
