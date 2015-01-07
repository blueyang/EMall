package ustc.sse.water.dao.impl;


import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ustc.sse.water.dao.SuperDao;
import ustc.sse.water.pojo.QueryResult;

/**
 * DAO超接口的实现. <br>
 * 在其中开启数据库连接，所有的子类dao实现都要继承该类.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午10:14:13
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
public abstract class SuperDaoImpl implements SuperDao {

	@PersistenceContext
	protected EntityManager em;
	
	@Override
	public <T> void save(T t) {
		em.persist(t);
	}

	@Override
	public <T> void delete(Class<T> clazz, Object id) {
		em.remove(em.find(clazz, id));
	}

	
	
	@Override
	public <T> void delete(Class<T> clazz, Object[] entities) {
		for (Object object : entities) {
			em.remove(object);
		}
	}

	@Override
	public <T> void update(T t) {
		em.merge(t);
	}

	@Override
	@Transactional(readOnly=true, propagation=Propagation.NOT_SUPPORTED)
	public <T> T find(Class<T> clazz, Object id) {
		return em.find(clazz, id);
	}

	@Override
	public <T> void delete(T t) {
		em.remove(t);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public <T> QueryResult<T> getScrollData(Class<T> clazz, int firstindex,
			int maxresult, String wProperty, String equalsPro, String orderby) {
		QueryResult<T> qr = new QueryResult<T>();
		String entityname = getEntityName(clazz);
		String sql = "select o from "+ entityname +" o where o."+ wProperty + " like '%" + equalsPro + "%'" + buildOrderby(orderby);
		Query query = em.createQuery(sql);
		query.setFirstResult(firstindex);//开始记录，从0开始为第一条记录
		query.setMaxResults(maxresult);//取出的记录的条数
		qr.setResultList(query.getResultList());
		query = em.createQuery("select count(o) from "+ entityname +" o where o." + wProperty + " like '%" + equalsPro + "%'");
		qr.setTotalRecord((Long)query.getSingleResult());
		return qr;
	}
	
	/**
	 * 拼接order by语句
	 * @param orderby
	 * @return
	 */
	protected String buildOrderby(String orderby){
		StringBuffer orderbysql = new StringBuffer();
		if(orderby != null){
			orderbysql.append(" order by o.").append(orderby);
		}
		return orderbysql.toString();
	}
	
	/**
	 * 获取实体名
	 * @param clazz
	 * @return
	 */
	protected<T> String getEntityName(Class<T> clazz){
		String entityName = clazz.getSimpleName();
		Entity entity = clazz.getAnnotation(Entity.class);
		if(entity.name() != null && !"".equals(entity.name())){
			entityName = entity.name();
		}
		return entityName;
	}
	
	/**
	 * 拼接order by语句
	 * @param orderby
	 * @return
	 */
	protected String buildWhere(String wProperty, String equalsPro){
		StringBuffer wheresql = new StringBuffer();
		if(wProperty != null){
			wheresql.append(" where by o.").append(wProperty);
		}
		return wheresql.toString();
	}
}
