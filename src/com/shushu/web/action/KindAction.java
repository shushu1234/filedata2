package com.shushu.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shushu.domain.Kind;
import com.shushu.service.KindService;

public class KindAction extends ActionSupport implements ModelDriven<Kind> {
	private Kind kind = new Kind();

	@Override
	public Kind getModel() {
		// TODO Auto-generated method stub
		return kind;
	}

	public String add() {
		KindService kindService = new KindService();
		kindService.add(kind);
		return "addSUCCESS";
	}
}
