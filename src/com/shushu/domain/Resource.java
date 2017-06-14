package com.shushu.domain;

public class Resource {
	private String id;// 操作资源id
	private String name;// 操作资源名称
	private String description;// 描述
	private String type;// 类型
	private String address;// 相关地址
	private int priority;// 层次级别
	private String defunct;// 删除标志Y-删除 N-未删除
	private int parentId;// 父节点Id
	private String display;// 是否在目录树中显示 Y-显示 N-不显示
	private String issys;// 是否是管理操作项 Y-是 N-不是

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getDefunct() {
		return defunct;
	}

	public void setDefunct(String defunct) {
		this.defunct = defunct;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getDisplay() {
		return display;
	}

	public void setDisplay(String display) {
		this.display = display;
	}

	public String getIssys() {
		return issys;
	}

	public void setIssys(String issys) {
		this.issys = issys;
	}

	@Override
	public String toString() {
		return "resource [id=" + id + ", name=" + name + ", description="
				+ description + ", type=" + type + ", address=" + address
				+ ", priority=" + priority + ", defunct=" + defunct
				+ ", parentId=" + parentId + ", display=" + display
				+ ", issys=" + issys + "]";
	}

}
