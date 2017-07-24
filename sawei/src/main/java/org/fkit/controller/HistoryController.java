package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Lisi;
import org.fkit.domain.Order;
import org.fkit.service.LisiService;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HistoryController {
	 
		@Autowired
		@Qualifier("lisiService")
		private LisiService lisiService;
		@Autowired
		@Qualifier("orderService")
		private OrderService orderService;
		@RequestMapping(value="/lisi")
		public String lisi(Model model){
			// 获得所有shoe集合
					List<Lisi> lisi_list=lisiService.getAll();
					model.addAttribute("lisi_list",lisi_list);
					//返回收藏的页面
			return "history";
}
		@RequestMapping(value="/buy")
		public String buy(HttpServletRequest request,Model model){
			String shoe_id = request.getParameter("shoe_id");
			int shoe_id_ = Integer.parseInt(shoe_id);
			Lisi lisi=lisiService.findLisi(shoe_id_);
			if (lisi == null) {
				lisiService.saveLisi(shoe_id_);				
			}else {			
				lisiService.saveLisi(shoe_id_);				
			}	
			orderService.removeOrder(shoe_id_);
			return "ping";
			
		}
		@RequestMapping(value="/pingjia")
		public String pingjia(Model model){
			List<Order> order_list = orderService.getAll();
			// 将shoe集合添加到model当中		
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			
		} 
}