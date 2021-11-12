package com.eunjy.stockid.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eunjy.stockid.domain.common.SessionUser;
import com.eunjy.stockid.domain.user.UsrGrpVO;
import com.eunjy.stockid.service.user.UserService;
import com.eunjy.stockid.utiliy.Consts;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	UserService userService; 

	@RequestMapping(value = "/userInfo.do", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String userInfo(Model model, UsrGrpVO usrGrpVO, HttpSession httpSession) { 
		SessionUser sessionUser = (SessionUser) httpSession.getAttribute(Consts.SessionAttr.USER);
		if (sessionUser != null) usrGrpVO.setUsrNum( sessionUser.getUsrNum() );
		
		ObjectMapper obj = new ObjectMapper(); 
		UsrGrpVO userInfo = userService.getUserInfo(usrGrpVO);
		try {
			model.addAttribute("userInfo", obj.writeValueAsString(userInfo));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		return "user/userInfo"; 
	}

}
