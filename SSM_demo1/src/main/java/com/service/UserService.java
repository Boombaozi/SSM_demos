package com.service;

import org.springframework.stereotype.Service;

import com.entity.User;

import javax.annotation.Resource;
import java.util.List;

@Service
public interface UserService {


public List<User> findAllUser();

public List<User> findUserList(User user);
public void updateUser(User user);
public void deleteUser(User user);
public User findUserById(String id);
public void deleteById(Integer id);
}
