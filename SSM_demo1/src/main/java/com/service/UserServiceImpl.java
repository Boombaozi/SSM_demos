package com.service;


import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.User;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
	
	 @Resource
	private UserDao userDao;


	@Override
	public List<User> findAllUser() {

		List<User>  user= null;
		user = userDao.findAllUser();
		return user;
	}

	@Override
	public List<User> findUserList(User user) {

		List<User> users= userDao.findUserList(user);
		return users;
	}

	@Override
	public void updateUser(User user) {

		userDao.updateUser(user);


	}

    @Override
    public void deleteUser(User user) {

	    userDao.deleteUser(user);

    }

    @Override
    public User findUserById(String id) {

	   User user= userDao.findUserById(id);

        return user;
    }

	@Override
	public void deleteById(Integer id) {
		userDao.deleteByPrimaryKey(id);
	}


}
