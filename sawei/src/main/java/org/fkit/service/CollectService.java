package org.fkit.service;

import java.util.List;

import org.fkit.domain.Collect;

public interface CollectService {
	List<Collect> getAll();
	Collect removeCollect(int shoe_id);
	Collect findCollect(int shoe_id);
	Collect saveCollect(int shoe_id);
	void clearCollect();
}
