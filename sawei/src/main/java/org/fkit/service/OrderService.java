package org.fkit.service;

import java.util.List;
import org.fkit.domain.Order;
public interface OrderService {
	List<Order> getAll();
	Order removeOrder(int shoe_id);
	Order findOrder(int shoe_id);
	Order saveOrder(int shoe_id);
	Order addOrder(int shoe_id);
}  
