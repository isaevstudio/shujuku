package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Shoe;
import org.fkit.service.ShoeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ShoeController {
	/**
	 * 自动注入ShoeService
	 * */
	@Autowired
	@Qualifier("shoeService")
	private ShoeService shoeService;

	/**
	 * 处理href请求
	 * */
	// 获得所有xiuxianshoe集合
	@RequestMapping(value="/xiuxianshoe")
	 public String xiuxianshoe(Model model){
		// 获得所有shoe集合
		String shoetype="xxshoe";
		List<Shoe> xxshoe_list = shoeService.xxgetAll(shoetype);
		// 将shoe集合添加到model当中
		model.addAttribute("xxshoe_list", xxshoe_list);
		// 跳转到xiuxianshoe页面
		return "xiuxianshoe";
	}
	
	// 获得所有paobushoe集合
		@RequestMapping(value="/paobushoe")
		public String paobushoe(Model model){
			String shoetype="pbshoe";
			List<Shoe> pbshoe_list=shoeService.pbgetAll(shoetype); 
			// 将shoe集合添加到model当中
			model.addAttribute("pbshoe_list", pbshoe_list);
			// 跳转到paobushoe页面
			return "paobushoe";
		}
		

		/**
		 * 处理href请求
		 * */
		// 获得所有lanqiushoe集合
		@RequestMapping(value="/lanqiushoe")
		 public String lanqiushoe(Model model){
			// 获得所有shoe集合
			String shoetype="lqshoe";
			List<Shoe> lqshoe_list = shoeService.lqgetAll(shoetype);
			// 将图书集合添加到model当中
			model.addAttribute("lqshoe_list", lqshoe_list);
			// 跳转到经管book页面
			return "lanqiushoe";
		}
		
		/**
		 * 处理href请求
		 * */
		// 获得所有huabanshoe集合
		@RequestMapping(value="/huabanshoe")
		 public String huabanshoe(Model model){
			// 获得所有shoe集合
			String shoetype="hbshoe";
			List<Shoe> hbshoe_list = shoeService.hbgetAll(shoetype);
			// 将shoe集合添加到model当中
			model.addAttribute("hbshoe_list", hbshoe_list);
			// 跳转到huabanshoe页面
			return "huabanshoe";
		}
	
		@RequestMapping(value="/guanli")
		public String staff3(Model model){
		List<Shoe> shoe_list=shoeService.getAll();
		model.addAttribute("shoe_list", shoe_list);
			return "staff3";
	
		}
	
		@RequestMapping(value = "/shoeadd")

		public ModelAndView shoeadd(String shoeimage,String shoename,String shoenumber,String shoetype,String shoeintro,String shoeprice,int shoecount,ModelAndView mv, HttpSession session,Model model) {
			
			Shoe shoe = shoeService.shoeadd(shoeimage,shoename,shoenumber,shoetype,shoeintro,shoeprice,shoecount);
			
			session.setAttribute("shoe", shoe);
			List<Shoe> shoe_list = shoeService.getAll();
			
			
			model.addAttribute("shoe_list", shoe_list);
		
			mv.setViewName("staff3");
			return mv;
		}
		
		@RequestMapping(value = "/deleteww")
		public String deleteww(Model model,HttpServletRequest request){
			String id=request.getParameter("shoe_id");
			int id_=Integer.parseInt(id);
			shoeService.removeshoe(id_);
            List<Shoe> shoe_list = shoeService.getAll();
			
			
			model.addAttribute("shoe_list", shoe_list);
			return "staff3";
			}
		
}



