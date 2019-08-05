package com.ssh.dao;

import java.util.List;

import com.ssh.domain.UuidEntity;

public interface CommonDao {
    
	//����ʵ��
	public void persit(UuidEntity entity);
	
	//����ʵ��
	public UuidEntity merge(UuidEntity entity);
	
	//��������ʵ��
	public UuidEntity persitOrMerge(UuidEntity entity);
	
	//ɾ��ʵ��
	public UuidEntity remove(UuidEntity entity);
	
	//����ɾ��
	public void batchRemove(List<? extends UuidEntity> list) throws Exception;
	
	//����ʵ��id����ʵ��
	public UuidEntity findByid(UuidEntity entity);
	
	//����JPQL(HQL)��ѯʵ��
	public List<? extends UuidEntity> findByJpql(Class<? extends UuidEntity> clazz,String[] filed,Object...parameterValues) throws Exception;
}
