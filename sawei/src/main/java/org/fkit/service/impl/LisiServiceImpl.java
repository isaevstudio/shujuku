package org.fkit.service.impl;

import java.util.List;
import org.fkit.domain.Lisi;
import org.fkit.mapper.LisiMapper;
import org.fkit.service.LisiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service("lisiService")
public class LisiServiceImpl implements LisiService{
	@Autowired
	private LisiMapper lisiMapper;
	@Override
	public List<Lisi> getAll() {
		// TODO Auto-generated method stub
		return lisiMapper.findAll();
	}

	@Override
	public Lisi findLisi(int shoe_id) {
		// TODO Auto-generated method stub
		return lisiMapper.findWithId(shoe_id);
	}

	@Override
	public Lisi saveLisi(int shoe_id) {
		// TODO Auto-generated method stub
		Lisi lisi=new Lisi();
		lisi.setShoe_id(shoe_id);
		lisiMapper.saveLisi(lisi);
		return lisi;
	}

}
