package com.shushu.service;

import com.shushu.dao.KindDao;
import com.shushu.domain.Kind;

public class KindService {

	public void add(Kind kind) {
		KindDao kindDao = new KindDao();
		kindDao.add(kind);
	}
}
