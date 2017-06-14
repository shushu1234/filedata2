package com.shushu.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shushu.domain.User;
import com.shushu.utils.JDBCUtils;

public class UserDao {
	private QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());

	/**
	 * 登录查询
	 */
	public User checkLoginIdAndPwd(User user) {
		String sql = "select * from user where id = ? and pwd = ?";
		try {
			User loginUser = queryRunner.query(sql, new BeanHandler<User>(
					User.class), user.getId(), user.getPwd());
			return loginUser;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	/**
	 * 用户注册
	 */
	public void regist(User user) {
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?)";
		Object[] params = { user.getId(), user.getName(), user.getPwd(),
				user.getGender(), user.getTel(), user.getEmail(), 0, "N",
				user.getAvatarpath() };
		try {
			queryRunner.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public List<User> findByCondition(User user) {
		// 根据用户id，姓名，性别，电话，邮箱，状态组合查询
		String sql = "select * from user where 1=1 ";
		List<String> params = new ArrayList<String>();// 参数列表
		if (user.getId() != null && user.getId().trim().length() > 0) {
			sql += " and id like ?";
			params.add("%" + user.getId() + "%");
		}
		if (user.getName() != null && user.getName().trim().length() > 0) {
			sql += " and name like ?";
			params.add("%" + user.getName() + "%");
		}
		if (user.getTel() != null && user.getTel().trim().length() > 0) {
			sql += " and tel = ?";
			params.add(user.getTel());
		}
		if (user.getEmail() != null && user.getEmail().trim().length() > 0) {
			sql += " and email = ?";
			params.add(user.getEmail());
		}
		if (user.getGender() != null && user.getGender().trim().length() > 0) {
			sql += " and gender = ?";
			params.add(user.getGender());
		}
		if (user.getDefunct() != null && user.getDefunct().trim().length() > 0) {
			sql += " and defunct = ?";
			params.add(user.getDefunct());
		}
		try {
			List<User> users = queryRunner.query(sql,
					new BeanListHandler<User>(User.class), params.toArray());
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

	public void delete(User user) {
		String sql = "delete from user where id = ?";
		try {
			queryRunner.update(sql, user.getId());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

	public User findById(String id) {
		String sql = "select * from user where id = ?";
		try {
			User user = queryRunner.query(sql,
					new BeanHandler<User>(User.class), id);
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public void update(User user, boolean isEditUpload) {
		if (isEditUpload) {
			// 上传了头像
			String sql = "update user set name = ?, gender = ?, tel = ?, email = ?, avatarpath = ? where id = ?";
			Object[] params = { user.getName(), user.getGender(),
					user.getTel(), user.getEmail(), user.getAvatarpath(),
					user.getId() };
			try {
				queryRunner.update(sql, params);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException();
			}
		} else {
			// 没有上传头像
			String sql = "update user set name = ?, gender = ?, tel = ?, email = ? where id = ?";
			Object[] params = { user.getName(), user.getGender(),
					user.getTel(), user.getEmail(), user.getId() };
			try {
				queryRunner.update(sql, params);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException();
			}
		}
	}

}
