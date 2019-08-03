package com.ssh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssh.domain.User;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("linkToMainPage")
	public String linkToMainPage() {
		return "main";
	}
	
	@RequestMapping("refresh")
	@ResponseBody
	public List<User> refresh(){
		User user1 = new User();
		user1.setName("¶þ¹·");
		user1.setPassword("250");
		
		User user2 = new User();
		user2.setName("Ìúµ°");
		user2.setPassword("251");
		
		List<User> list = new ArrayList<User>();
		list.add(user1);
		list.add(user2);
		return list;
	
	}
     
}
