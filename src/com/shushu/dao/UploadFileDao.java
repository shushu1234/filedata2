package com.shushu.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.shushu.domain.UploadFile;
import com.shushu.utils.JDBCUtils;

public class UploadFileDao {
	private QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());

	/**
	 * 用户文件上传
	 * 
	 * @param uploadFile
	 */
	@InputConfig(resultName = "uploadINPUT")
	public void upload(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		String sql = "insert into file (name,kindid,remark,filesize,authorname1,authorname2,authorname3,authorname4,authorname5,open,userid,uploaddate,filepath,downcount) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Date nowDate = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:dd:ss");
		String nowtime = simpleDateFormat.format(nowDate);
		Object[] params = { uploadFile.getName(), uploadFile.getKindid(),
				uploadFile.getRemark(), uploadFile.getFilesize(),
				uploadFile.getAuthorname1(), uploadFile.getAuthorname2(),
				uploadFile.getAuthorname3(), uploadFile.getAuthorname4(),
				uploadFile.getAuthorname5(), 1, uploadFile.getUserid(),
				nowtime, uploadFile.getFilepath(), 0 };
		try {
			queryRunner.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public List<UploadFile> findByCondition(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		// 根据文件id，文件名称，用户id，状态，类别组合查询
		String sql = "select * from file where 1=1 ";
		List<String> params = new ArrayList<String>();
		if (uploadFile.getId() != 0) {
			sql += " and id =" + uploadFile.getId() + " ";
			// params.add("%" + uploadFile.getId() + "%");
		}
		if (uploadFile.getName() != null
				&& uploadFile.getName().trim().length() > 0) {
			sql += " and name like ?";
			params.add("%" + uploadFile.getName() + "%");
		}
		if (uploadFile.getUserid() != null
				&& uploadFile.getUserid().trim().length() > 0) {
			sql += " and userid = ?";
			params.add(uploadFile.getUserid());
		}
		if (uploadFile.getOpen() != 0) {
			sql += " and open = " + uploadFile.getOpen() + " ";
			// params.add(String.valueOf(uploadFile.getOpen()));
		}
		if (uploadFile.getKindid() != null
				&& uploadFile.getKindid().trim().length() > 0) {
			sql += " and kindid = ?";
			params.add(uploadFile.getKindid());
		}
		try {
			List<UploadFile> uploadFiles = queryRunner.query(sql,
					new BeanListHandler<UploadFile>(UploadFile.class),
					params.toArray());
			return uploadFiles;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public UploadFile findById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from file where id = ?";
		try {
			UploadFile uploadFile = queryRunner.query(sql,
					new BeanHandler<UploadFile>(UploadFile.class), id);
			return uploadFile;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	/**
	 * 下载次数统计
	 * 
	 * @param id
	 * @param downcount
	 */
	public void addDowncount(int id, int downcount) {
		// TODO Auto-generated method stub
		String sql = "update file set downcount = ? where id = ?";
		try {
			queryRunner.update(sql, downcount + 1, id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	/**
	 * 文件修改
	 * 
	 * @param uploadFile
	 */
	public void edit(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		String sql = "update file set kindid = ?,remark = ?,authorname1 = ?,authorname2 = ?,authorname3 = ?,authorname4 = ?,authorname5 = ? where id = ?";
		Object[] params = { uploadFile.getKindid(), uploadFile.getRemark(),
				uploadFile.getAuthorname1(), uploadFile.getAuthorname2(),
				uploadFile.getAuthorname3(), uploadFile.getAuthorname4(),
				uploadFile.getAuthorname5(), uploadFile.getId() };
		try {
			queryRunner.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from file where id = ?";
		try {
			queryRunner.update(sql, id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
