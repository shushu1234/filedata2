package com.shushu.web.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shushu.domain.Kind;
import com.shushu.service.KindService;

public class KindAction extends ActionSupport implements ModelDriven<Kind> {
	private Kind kind = new Kind();
	private List<Kind> kinds = new ArrayList<Kind>();

	@Override
	public Kind getModel() {
		// TODO Auto-generated method stub
		return kind;
	}

	public List<Kind> getKinds() {
		return kinds;
	}

	public void setKinds(List<Kind> kinds) {
		this.kinds = kinds;
	}

	/**
	 * 添加根,子类别
	 * 
	 * @return
	 */
	public String add() {
		KindService kindService = new KindService();
		System.out.println(kind.getParentid());
		if (kind.getParentid() == 0) {
			kindService.add(kind);
		} else {
			kindService.addChildKind(kind);
		}
		return "addSUCCESS";
	}

	/**
	 * 返回类别
	 * 
	 * @return
	 */
	public String list() {
		KindService kindService = new KindService();
		kinds = kindService.list();
		return "listSUCCESS";
	}

	/**
	 * 删除类别
	 */
	public String delete() {
		KindService kindService = new KindService();
		kindService.delete(kind.getId());
		return "deleteSUCCESS";
	}

	/**
	 * 查看详细
	 */
	public String detail() {
		KindService kindService = new KindService();
		kind = kindService.detail(kind.getId());
		return "detailSUCCESS";
	}

	/**
	 * 修改前查看
	 */
	public String updateview() {
		this.detail();
		return "updateviewSUCCESS";
	}

	/**
	 * 修改
	 */
	public String update() {
		KindService kindService = new KindService();
		kindService.update(kind);
		return "updateSUCCESS";
	}
}
