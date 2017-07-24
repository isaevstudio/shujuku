package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service("orderService")
public class OrderServicerImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return orderMapper.findAll();
	}

	@Override
	public Order removeOrder(int shoe_id) {
		// TODO Auto-generated method stub
		Order order = orderMapper.findWithId(shoe_id);
		orderMapper.removeOrder(order);
		return order;
	}

	@Override
	public Order findOrder(int shoe_id) {
		// TODO Auto-generated method stub
		return orderMapper.findWithId(shoe_id);
	}

	@Override
	public Order saveOrder(int shoe_id) {
		// TODO Auto-generated method stub
		Order order = new Order();
		order.setShoe_id(shoe_id);
		final int i = 1;
		order.setCount(i);
		orderMapper.saveOrder(order);
		return order;
	}

	@Override
	public Order addOrder(int shoe_id) {
		// TODO Auto-generated method stub
		Order order = orderMapper.findWithId(shoe_id);
		orderMapper.addOrder(order);
		return order;
	}

}
