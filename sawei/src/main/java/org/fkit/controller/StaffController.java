package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Shoe;
import org.fkit.service.ShoeService;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class StaffController {
	@Autowired
	@Qualifier("shoeService")
	private ShoeService shoeService;

@RequestMapping(value="staffwww")
public ModelAndView staff(@RequestParam("staffloginnumber") String sln,
			@RequestParam("staffpassword") String sp,Model model,ModelAndView mv, HttpSession session){
		if(sln.equals("administrator")&&sp.equals("administrator")){
			List<Shoe> shoe_list = shoeService.getAll();
			model.addAttribute("shoe_list", shoe_list);
			
			mv.setViewName("staff1");
		}else{
			mv.addObject("messages", "登录名或者密码错误，请重新输入！");
			mv.setViewName("stafflog");
		}
		return mv;
}


}
