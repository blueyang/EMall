package ustc.sse.water.dao;


import ustc.sse.water.pojo.QueryResult;

/**
 * DAO的超接口. <br>
 * 基本的增删改查操作.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午10:13:10
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
public interface SuperDao {
	/**
	 * 保存实体
	 * @param t
	 */
	public<T> void save(T t);
	
	/**
	 * 删除实体
	 * @param clazz
	 * @param id
	 */
	public<T> void delete(Class<T> clazz, Object id);
	
	/**
	 * 删除多组数据
	 * @param clazz
	 * @param entities
	 */
	public<T> void delete(Class<T> clazz, Object[] entities);
	
	/**
	 * 更新
	 * @param t
	 */
	public<T> void update(T t);
	
	/**
	 * 获取实体
	 * @param clazz
	 * @param id
	 * @return
	 */
	public<T> T find(Class<T> clazz,Object id);
	
	/**
	 * 删除实体
	 * @param t
	 */
	public<T> void delete(T t);
	
	/**
	 * 分页
	 * @param clazz
	 * @param firstindex 开始索引
	 * @param maxresult 最大获取数据个数
	 * @return
	 */
	public<T> QueryResult<T> getScrollData(Class<T> clazz, int firstindex, int maxresult,
			String whereStr,String equalsPro, String orderby);
}
