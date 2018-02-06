package com.controller;


import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


//    获得数据后转到用户信息管理页面
@RequestMapping("userlist")
public String findUserList(Model model,User user){

    List<User> users = userService.findUserList(user);

    model.addAttribute("user",users);

    return "userlist";
}

//跳转到修改页面
@RequestMapping("toupdateuser")
public String toupdateUser(Model model,String id){

    User user= userService.findUserById(id);

    model.addAttribute("user",user);
    return "userupdate";
}
@RequestMapping("updateuser")
public String updateUser(User user){

    userService.updateUser(user);

    return "redirect:userlist.do";
}




//redirect    forward

    @RequestMapping("deleteuser")
public String deleteUser(User user){

    userService.deleteUser(user);
    return "redirect:userlist.do";
}

    @RequestMapping("deleteUserByIds")
    public String deleteUserByIds(Integer[] id){

        for(Integer ids : id){

            userService.deleteById(ids);
        }


        return "redirect: userlist.do";
    }

}
