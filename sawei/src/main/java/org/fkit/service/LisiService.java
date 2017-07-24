package org.fkit.service;

import java.util.List;

import org.fkit.domain.Lisi;

public interface LisiService {
	List<Lisi> getAll();
	Lisi findLisi(int shoe_id);
	Lisi saveLisi(int shoe_id);
}
