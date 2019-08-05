package com.ssh.dao;

import java.util.List;

import com.ssh.domain.UuidEntity;

public interface CommonDao {
    
	//保存实体
	public void persit(UuidEntity entity);
	
	//更新实体
	public UuidEntity merge(UuidEntity entity);
	
	//保存或更新实体
	public UuidEntity persitOrMerge(UuidEntity entity);
	
	//删除实体
	public UuidEntity remove(UuidEntity entity);
	
	//批量删除
	public void batchRemove(List<? extends UuidEntity> list) throws Exception;
	
	//根据实体id查找实体
	public UuidEntity findByid(UuidEntity entity);
	
	//根据JPQL(HQL)查询实体
	public List<? extends UuidEntity> findByJpql(Class<? extends UuidEntity> clazz,String[] filed,Object...parameterValues) throws Exception;
}
