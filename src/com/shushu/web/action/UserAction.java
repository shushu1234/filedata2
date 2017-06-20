package com.shushu.web.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.opensymphony.xwork2.util.ValueStack;
import com.shushu.domain.User;
import com.shushu.service.UserService;

/**
 * 用户Action
 */

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private List<User> users;
	private boolean isExist;
	private String userid;

	public boolean getIsExist() {
		return isExist;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public List<User> getUsers() {
		return users;
	}

	@Override
	public User getModel() {
		return user;
	}

	public String index() {
		return "indexSUCCESS";
	}

	/**
	 * 用户登录
	 * 
	 * @return
	 */
	@InputConfig(resultName = "loginINPUT")
	public String login() {
		// 登录数据在user中，传递业务层，查询
		UserService userService = new UserService();
		User loginUser = userService.login(user);
		// 判断是否登录成功
		if (loginUser == null) {
			// 登录失败
			this.addActionError(this.getText("loginfail"));
			return "loginINPUT";
		} else {
			// 登录成功
			// System.out.println(loginUser.toString());
			ValueStack valueStack = ActionContext.getContext().getValueStack();
			ServletActionContext.getRequest().getSession()
					.setAttribute("loginUser", loginUser);
			valueStack.set("op", "login");
			return "loginSUCCESS";
		}
	}

	/**
	 * 注册用户
	 * 
	 * @return
	 * @throws IOException
	 */
	@InputConfig(resultName = "registINPUT")
	public String regist() throws IOException {
		// System.out.println(user.toString());
		// 上传头像
		if (upload != null) {
			String avatarName = UUID.randomUUID().toString();
			String path = "user/avatars/" + avatarName + "."
					+ uploadFileName.split("\\.")[1];
			File destFile = new File(ServletActionContext.getServletContext()
					.getRealPath(path));
			FileUtils.copyFile(upload, destFile);
			user.setAvatarpath(path);
		} else {
			user.setAvatarpath("user/avatars/f4d5575a-d5aa-4cdd-9898-fcd6aee28c2f.png");
		}
		// System.out.println(user.toString());
		UserService userService = new UserService();
		userService.regist(user);
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		valueStack.set("userRole", user.getRole());
		ServletActionContext.getRequest().getSession()
				.setAttribute("loginUser", user);
		return "registSUCCESS";
	}

	/**
	 * 用户列表查询
	 * 
	 * @return
	 */
	public String list() {
		UserService userService = new UserService();
		// 获得查询结果,放到值栈里面
		// System.out.println(user.toString());
		users = userService.list(user);
		return "listSUCCESS";
	}

	/**
	 * 用户删除
	 * 
	 * @return
	 */
	public String delete() {
		UserService userService = new UserService();
		// 删除头像
		user = userService.findById(user.getId());
		if (!user.getAvatarpath().equals(
				"user/avatars/f4d5575a-d5aa-4cdd-9898-fcd6aee28c2f.png")) {
			File file = new File(ServletActionContext.getServletContext()
					.getRealPath(user.getAvatarpath()));
			file.delete();
		}
		userService.delete(user);
		return "deleteSUCCESS";
	}

	/**
	 * 查看用户详细信息
	 * 
	 * @return
	 */
	public String view() {
		// id已经自动封装到了model对象
		UserService userService = new UserService();
		user = userService.findById(user.getId());
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		valueStack.set("op", "view");
		return "viewSUCCESS";
	}

	/**
	 * 修改用户信息前查看数据
	 * 
	 * @return
	 */
	public String editview() {
		UserService userService = new UserService();
		user = userService.findById(user.getId());
		return "editviewSUCCESS";
	}

	/**
	 * 修改用户信息
	 * 
	 * @return
	 * @throws IOException
	 */
	@InputConfig(resultName = "editINPUT")
	public String edit() throws IOException {
		UserService userService = new UserService();
		if (upload == null) {
			// 用户没有上传新头像
			// System.out.println("not " + user.toString());
			userService.edit(user, false);
		} else {
			// 用户上传了新头像
			// 1.上传新头像
			String avatarName = UUID.randomUUID().toString();
			String path = "user/avatars/" + avatarName + "."
					+ uploadFileName.split("\\.")[1];
			File destFile = new File(ServletActionContext.getServletContext()
					.getRealPath(path));
			FileUtils.copyFile(upload, destFile);
			user.setAvatarpath(path);
			// 2.删除旧头像
			User oldUser = userService.findById(user.getId());
			if (!oldUser.getAvatarpath().equals(
					"user/avatars/f4d5575a-d5aa-4cdd-9898-fcd6aee28c2f.png")) {
				File oldFile = new File(ServletActionContext
						.getServletContext().getRealPath(
								oldUser.getAvatarpath()));
				oldFile.delete();
			}
			// System.out.println("yes " + user.toString());
			userService.edit(user, true);
		}
		return "editSUCCESS";
	}

	public String checkid() {
		UserService userService = new UserService();
		// System.out.println(userid);
		isExist = userService.checkid(userid);
		return "checkidSUCCESS";
	}
}
