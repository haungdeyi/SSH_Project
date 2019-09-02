package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Selection;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.domain.UuidEntity;

@Component("commonDao")
public class CommonDaoImpl implements CommonDao{
	
	//����뵱ǰ�����̣߳���ص�EntityManager
	@PersistenceContext
	private EntityManager entityManager;
	

	public EntityManager getEntityManager() {
		return entityManager;
	}
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void persit(UuidEntity entity) {
		entityManager.persist(entity);
	}

	public UuidEntity merge(UuidEntity entity) {
		UuidEntity megerEntity = entityManager.merge(entity);
		return megerEntity;
	}

	public UuidEntity persitOrMerge(UuidEntity entity) {
		if(entity.getId() == null) {
			entityManager.persist(entity);
		}
		else {
			entityManager.merge(entity);
		}
		return entity;
	}

	public UuidEntity remove(UuidEntity entity) {
		entityManager.remove(entity);
		return entity;
	}

	public void batchRemove(List<? extends UuidEntity> list) throws Exception {
		for(UuidEntity entity : list) {
        	if(entity == null || entity.getId() == null) {
        		throw new Exception("the entity you want to delete doesn't exits");
        	}
        	else {
        		remove(entity);
        	}
        }
		
	}
	
	public UuidEntity findByid(UuidEntity entity) {
		return entityManager.find(entity.getClass(), entity.getId());
	}

	public List<? extends UuidEntity> findByJpql(Class<? extends UuidEntity> clazz,String[] filed,Object... parameterValues) throws Exception {
		//�����Ϊ��ѯ�������ֶ������ֵ������������ѯ
		if(filed.length != parameterValues.length) {
			throw new Exception("filed length must equals parameterValues length");
		}
		StringBuilder sb = new StringBuilder();
		//ƴ�ӳ�jpql���
		sb = sb.append("from ").append(clazz.getSimpleName()).append(" where ");
		int index = 1;
		for(int i = 0;i < filed.length;i++) {
			//����ֶζ�Ӧ�Ĳ���ֵΪnull����"",�򲻽����ֶ���Ϊ���εĲ�ѯ����
			if(parameterValues[i] == null || "".equals(parameterValues[i])) {
				continue;
			}
			else {
				//����ǵ�һ����������Ҫƴ��and
				if(index == 1) {
					sb.append(filed[i]).append("=?"+index);
				}
				else {
					sb.append(" and ").append(filed[i]).append("=?"+index);
				}
			}
		}
		
		String jpql = sb.toString();
		Query query = entityManager.createQuery(jpql, clazz);
		//���ò���ֵ
		int paramerIndex = 1;
		for(Object obj : parameterValues) {
			if(obj != null && !"".equals(obj)) {
				query.setParameter(paramerIndex, obj);
				paramerIndex++;
			}
		}
		
		//�õ������������
		List<? extends UuidEntity> list = query.getResultList();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public <T,V> List<T> dynamicQuery(T resultType,V selectType,String...feild) {
		//1���õ�CriteriaBuilder
		CriteriaBuilder builder = entityManager.getCriteriaBuilder();
		//2���õ�CriteriaQuery,��Ҫ������֯from��select��mutilselect��where��order(by)��group(by)���
		CriteriaQuery criteriaQuery = builder.createQuery(resultType.getClass());
		//3���õ���ѯ��root�����������õ���ѯʵ����ֶΣ����Ը��ݸ��ֶ�����Ҫ��ѯ���ֶΡ���ѯ���������Ӳ�ѯ��
		Root root = criteriaQuery.from(selectType.getClass());
		
		//���ò�ѯ���ֶ�
		List<Selection> pathList = new ArrayList<Selection>();
		for(String feildToSelect : feild) {
			pathList.add(root.get(feildToSelect));
		}
		criteriaQuery.multiselect(pathList);
		
		//age����20�Ĺ�������
		Predicate predicate = builder.greaterThan(root.get("age"), 20);
		criteriaQuery.where(predicate);
		
		Query query = entityManager.createQuery(criteriaQuery);
		List<T> result = query.getResultList();
		return result;
	}

}
