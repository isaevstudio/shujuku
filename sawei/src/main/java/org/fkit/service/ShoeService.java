package org.fkit.service;

import java.util.List;

import org.fkit.domain.Shoe;

public interface ShoeService {
	/**
	 * 查找所有shoe
	 * @param  
	 * @return 
	 * */
	//遍历xiuxianshoe的集合
	List<Shoe> xxgetAll(String shoetype);
	/**
	 * 查找所有shoe
	 * @param 
	 * @return 
	 * */
	//遍历paobushoe的集合
	List<Shoe> pbgetAll(String shoetype);
  //遍历lanqiushoe的集合
    List<Shoe> lqgetAll(String shoetype);
//遍历huabanshoe的集合
	List<Shoe> hbgetAll(String shoetype);
	List<Shoe> getAll();

	
	Shoe shoeadd(String shoeimage,String shoename,  String shoenumber,String shoetype,String shoeintro,
			String shoeprice, int shoecount);	
	Shoe removeshoe(int id);
	Shoe findwithid(int id);
	
}
