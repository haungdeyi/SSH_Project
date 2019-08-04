package com.ssh.service;

import java.util.List;

import com.ssh.domain.UuidEntity;

public interface CommonService {

	//����ʵ��
	public boolean persit(UuidEntity entity);
	
	//����ʵ��
	public UuidEntity merge(UuidEntity entity);
	
	//��������ʵ��
	public UuidEntity persitOrMerge(UuidEntity entity);
	
	//ɾ��ʵ��
	public UuidEntity remove(UuidEntity entity);
	
	//����ʵ��id����ʵ��
	public UuidEntity findByid(UuidEntity entity);
	
	//����JPQL(HQL)��ѯʵ��
	public List<? extends UuidEntity> findByJpql(Class<? extends UuidEntity> clazz,String[] filed,Object...parameterValues) throws Exception;
}
