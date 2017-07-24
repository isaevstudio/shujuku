package org.fkit.domain;

import java.util.List;

public class Collect {
	private int id;
	private List<Shoe> shoe;
	private int shoe_id;
	private int user_id;
	public int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "collect [id=" + id + ", shoe=" + shoe + ", shoe_id=" + shoe_id + ", user_id=" + user_id + "]";
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Shoe> getShoe() {
		return shoe;
	}
	public void setShoe(List<Shoe> shoe) {
		this.shoe = shoe;
	}
	public int getShoe_id() {
		return shoe_id;
	}
	public void setShoe_id(int shoe_id) {
		this.shoe_id = shoe_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	

}
