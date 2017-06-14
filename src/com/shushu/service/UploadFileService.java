package com.shushu.service;

import java.util.List;

import com.shushu.dao.UploadFileDao;
import com.shushu.domain.UploadFile;

public class UploadFileService {

	/**
	 * 用户文件长传
	 * 
	 * @param uploadFile
	 */
	public void upload(UploadFile uploadFile) {
		UploadFileDao uploadFileDao = new UploadFileDao();
		uploadFileDao.upload(uploadFile);
	}

	/**
	 * 文件列表查询
	 * 
	 * @param uploadFile
	 * @return
	 */
	public List<UploadFile> list(UploadFile uploadFile) {
		UploadFileDao uploadFileDao = new UploadFileDao();
		return uploadFileDao.findByCondition(uploadFile);
	}

	public UploadFile findById(int id) {
		UploadFileDao uploadFileDao = new UploadFileDao();
		return uploadFileDao.findById(id);
	}

	public void addDowncount(int id, int downcount) {
		// TODO Auto-generated method stub
		UploadFileDao uploadFileDao = new UploadFileDao();
		uploadFileDao.addDowncount(id, downcount);
	}

	public void edit(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		UploadFileDao uploadFileDao = new UploadFileDao();
		uploadFileDao.edit(uploadFile);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		UploadFileDao uploadFileDao = new UploadFileDao();
		uploadFileDao.delete(id);
	}

}
