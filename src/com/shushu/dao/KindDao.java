package com.shushu.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.shushu.domain.Kind;
import com.shushu.utils.JDBCUtils;

public class KindDao {
	private QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());

	/**
	 * 存储分类
	 * 
	 * @param kind
	 */
	public void add(Kind kind) {
		// TODO Auto-generated method stub
		String sql = "insert into kind (name,descr) values(?,?)";
		Object[] params = { kind.getName(), kind.getDescr() };
		try {
			queryRunner.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
