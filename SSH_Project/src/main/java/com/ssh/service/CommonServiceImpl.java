package com.ssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.dao.CommonDao;
import com.ssh.dao.CommonDaoImpl;
import com.ssh.domain.User;
import com.ssh.domain.UuidEntity;

@Service("commonService")
@Transactional
public class CommonServiceImpl implements CommonService{

	@Autowired
	private CommonDao commonDao;
	
	@Autowired
	private CommonDaoImpl dao;
	
	public boolean persit(UuidEntity entity) {
		try {
			commonDao.persit(entity);
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public UuidEntity merge(UuidEntity entity) {
		
		return commonDao.merge(entity);
	}

	public UuidEntity persitOrMerge(UuidEntity entity) {
		
		return commonDao.persitOrMerge(entity);
	}

	public UuidEntity remove(UuidEntity entity) {
		
		return commonDao.remove(entity);
	}

	public UuidEntity findByid(UuidEntity entity) {
		
		return commonDao.findByid(entity);
	}

	public List<? extends UuidEntity> findByJpql(Class<? extends UuidEntity> clazz, String[] filed,
			Object... parameterValues) throws Exception {
		
		return commonDao.findByJpql(clazz, filed, parameterValues);
	}
	
	public List<? extends UuidEntity> dynamicQuery(){
        List<User> resultList = dao.dynamicQuery(new User(), new User(), "name","address");
        return resultList;
	}
	
	public CommonDao getCommonDao() {
		return commonDao;
	}
	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

}
