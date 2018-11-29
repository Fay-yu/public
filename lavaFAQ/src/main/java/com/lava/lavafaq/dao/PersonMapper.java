package com.lava.lavafaq.dao;

import java.util.List;

import com.lava.lavafaq.bean.Person;


public interface PersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Person record);

    int insertSelective(Person record);

    Person selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);
    
    int updateByUserID(Person record);
    //ws
    Person selectByUsername(String username);
    Person selectByMail(String mail);
    Person selectByCodeAndEmail(Person record);
    int updateStateByCode(Person record);
    Person selectByPwdAndEmail(Person record);

	List<Person> selectAllPerson();
}