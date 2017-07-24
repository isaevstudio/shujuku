package org.fkit.service;

import java.util.List;

import org.fkit.domain.Cart;

public interface CartService {
	List<Cart> getAll();
	Cart findCart(int shoe_id);
	Cart saveCart(int shoe_id);
	Cart addCart(int shoe_id);
	Cart reduceCart(int shoe_id);
	Cart removeCart(int shoe_id);
	void clearCart();
}
