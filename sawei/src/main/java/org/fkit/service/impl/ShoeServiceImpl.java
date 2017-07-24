package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Shoe;
import org.fkit.mapper.ShoeMapper;
import org.fkit.service.ShoeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("shoeService")
public class ShoeServiceImpl implements ShoeService{
	/**
	 * 自动注入ShoeMapper
	 * */
	@Autowired
	private ShoeMapper shoeMapper;
	@Transactional(readOnly=true)	
	//查xiuxianshoe
	@Override
	public List<Shoe> xxgetAll(String shoetype) {
		// TODO Auto-generated method stub
		return shoeMapper.xxfindAll(shoetype);
	}
	//paobushoe
	@Transactional(readOnly=true)
	@Override
	public List<Shoe> pbgetAll(String shoetype) {
		// TODO Auto-generated method stub
		return shoeMapper.pbfindAll(shoetype);
	}
	//lanqiushoe
	@Transactional(readOnly=true)
	@Override
	public List<Shoe> lqgetAll(String shoetype) {
		// TODO Auto-generated method stub
		return shoeMapper.lqfindAll(shoetype);
	}
	//huabanshoe
		@Transactional(readOnly=true)
		@Override
		public List<Shoe> hbgetAll(String shoetype) {
			// TODO Auto-generated method stub
			return shoeMapper.hbfindAll(shoetype);
		}
	@Override
	public List<Shoe> getAll() {
		// TODO Auto-generated method stub
		return shoeMapper.getAll();
	}
	
	
	
	@Override
	public Shoe shoeadd(String shoeimage,String shoename,String shoenumber,String shoetype,String shoeintro,String shoeprice,int shoecount) {
		// TODO Auto-generated method stub
		Shoe shoe=new Shoe();
		shoe.setShoename(shoename);
		shoe.setShoeimage(shoeimage);
		shoe.setShoenumber(shoenumber);
		shoe.setShoetype(shoetype);
		shoe.setShoeintro(shoeintro);
		shoe.setShoeprice(shoeprice);
		shoe.setShoecount(shoecount);
		shoeMapper.saveShoe(shoe);
		return shoe; 
		
		
	}
	@Override
	public Shoe removeshoe(int id) {
		// TODO Auto-generated method stub
		Shoe shoe=shoeMapper.findWithId(id);
		shoeMapper.deleteshoeid(shoe);
		return shoe;
	}
	@Override
	public Shoe findwithid(int id) {
		// TODO Auto-generated method stub
		return shoeMapper.findWithId(id);
	}

	
}
