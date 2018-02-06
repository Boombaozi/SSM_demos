package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.User;

@Repository
public interface UserDao{

public  List<User> findAllUser();

    public void addUser(User user);

    public void deleteUser(User user);

    public void updateUser(User user);

    public User findUserById(String id);

public List<User> findUserList(User user);

   public int deleteByPrimaryKey(Integer id);
}  