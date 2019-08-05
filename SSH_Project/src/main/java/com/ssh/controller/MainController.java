package com.ssh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssh.dao.CommonDao;
import com.ssh.domain.User;
import com.ssh.domain.UuidEntity;
import com.ssh.service.CommonService;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("linkToMainPage")
	public String linkToMainPage() {
		return "main";
	}
	
	/*@RequestMapping("refresh")
	@ResponseBody
	public List<? extends UuidEntity> refresh() throws Exception{
	    List<? extends UuidEntity> list = service.findByJpql(User.class, new String[] {"name","password"}, "ถþนท",null);
		return list;
	}*/
     
}
