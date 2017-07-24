package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.fkit.domain.Order;
import org.fkit.service.CartService;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	//我的订单
	@RequestMapping(value="/order")
	public String order(Model model){
	        // 获得所有shoe集合
			List<Order> order_list = orderService.getAll();
			// 将shoe集合添加到model当中		
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
	
	//删除订单的东西
		@RequestMapping(value="/removeorder")
		public String removeorder(Model model,HttpServletRequest request){
			String shoe_id = request.getParameter("shoe_id");
			int shoe_id_ = Integer.parseInt(shoe_id);
			orderService.removeOrder(shoe_id_);
			List<Order> order_list = orderService.getAll();
			// 将shoe集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
		//添加订单
		@RequestMapping(value = "/saveorder")
		public String saveorder(HttpServletRequest request,Model model){
			String shoe_id = request.getParameter("shoe_id");
			int shoe_id_ = Integer.parseInt(shoe_id);
			Order order=orderService.findOrder(shoe_id_);
			if (order == null) {
				orderService.saveOrder(shoe_id_);				
			}else {			
				orderService.addOrder(shoe_id_);				
			}
			cartService.removeCart(shoe_id_);
			List<Order> order_list = orderService.getAll();
			// 将shoe集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到cart页面
			return "order";
		}
}
