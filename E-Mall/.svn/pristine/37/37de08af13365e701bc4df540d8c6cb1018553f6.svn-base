package ustc.sse.water.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ustc.sse.water.dao.AdminDao;
import ustc.sse.water.pojo.Admin;
import ustc.sse.water.pojo.Advertisement;
import ustc.sse.water.pojo.Announcement;
import ustc.sse.water.pojo.ProductType;


/**
 * adminDao实现类. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2014年1月29日 上午10:03:23
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */

@Repository("AdminDao")
public class AdminDaoImpl  extends SuperDaoImpl  implements AdminDao  {

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		em.persist(admin);
	}
	
	@Override
	public Admin findAdmin(String userame, String password) {
		// TODO Auto-generated method stub
		Query query = em.createQuery("from Admin admin where admin.username=?1 and admin.password=?2");
		query.setParameter(1, userame);
		query.setParameter(2, password);
		@SuppressWarnings("unchecked")
		List<Admin> list = query.getResultList();
		if (!list.isEmpty()) {
			return list.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<Advertisement> getAdvertisements() {
		// TODO Auto-generated method stub
		String hql = "from Advertisement";
		Query q = (Query) em.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Advertisement> list = (List<Advertisement>)  q.getResultList();
	
	/*	for(Advertisement c : Advertisements) {
			System.out.println("AdminDaoImpl   " + c.getId());
		}*/

		if (!list.isEmpty()) {
			return list;
		} else {
			return null;
		}
	}

	@Override
	public void addAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
		em.persist(advertisement);
	}

	@Override
	public void deleteAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
	
	}

	@Override
	public void updateAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Announcement> getAnnouncements() {
		// TODO Auto-generated method stub
		String hql = "from Announcement";
		Query q = (Query) em.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Announcement> list = (List<Announcement>)  q.getResultList();
	
		/*for(Announcement c : Announcements) {
			System.out.println("AdminDaoImpl   " + c.getId());
		}*/

		if (!list.isEmpty()) {
			return list;
		} else {
			return null;
		}
	}

	@Override
	public void addAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		em.persist(announcement);
	}

	@Override
	public void deleteAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Announcement getAnnouncement(String id) {
		// TODO Auto-generated method stub
		String hql = "from Announcement a where a.id = ?";
		Query q = (Query) em.createQuery(hql);
		q.setParameter(1, Long.parseLong(id));
		
		@SuppressWarnings("unchecked")
		List<Announcement> list = (List<Announcement>)  q.getResultList();
		if (!list.isEmpty()) {
			return list.get(0);
		} else {
			return null;
		}
	}

	
	@Override
	public ProductType getProductType(short id) {
		// TODO Auto-generated method stub
		String hql = "from ProductType p where p.id = ?";
		Query q = (Query) em.createQuery(hql);
		q.setParameter(1,(short) id);
		@SuppressWarnings("unchecked")
		List<ProductType> list = (List<ProductType>)  q.getResultList();
	

		if (!list.isEmpty()) 
			return (ProductType) list.get(0);
		else
			return null;
	}
	
	
	@Override
	public List<ProductType> getTopGradeProductTypes() {
		// TODO Auto-generated method stub
		String hql = "from ProductType p where p.grade = ?";
		Query q = (Query) em.createQuery(hql);
		q.setParameter(1,(short) 1);
		@SuppressWarnings("unchecked")
		List<ProductType> list = (List<ProductType>)  q.getResultList();
	

		if (!list.isEmpty()) 
			return list;
		else 
			return null;
		
	}
	

	
	@Override
	public List<ProductType> getChildProductTypes(ProductType productType) {
		// TODO Auto-generated method stub
		String hql = "from ProductType p where p.parentType = ?";
		Query q = (Query) em.createQuery(hql);
		q.setParameter(1, productType);
		@SuppressWarnings("unchecked")
		List<ProductType> list = (List<ProductType>)  q.getResultList();
	
		/*for(ProductType c : list) {
			System.out.println("AdminDaoImpl getChildProductTypes  " + c.getId());
		}*/

		if (!list.isEmpty()) 
			return list;
		else 
			return null;
		
	}

	@Override
	public void addProductTypeByBrother(ProductType productType, short id) {
		// TODO Auto-generated method stub
		ProductType brother = (ProductType) em.find(ProductType.class, id);
		
		if( brother.getGrade() != 1 ) {									//brother为顶级商品类型
			productType.setParentType(brother.getParentType());
			brother.getParentType().getChildTypes().add(productType);
		}
		productType.setGrade(brother.getGrade());
		em.persist(productType);
		
	}

	@Override
	public void addProductTypeByParent(ProductType productType, short id) {
		// TODO Auto-generated method stub
		ProductType parent = (ProductType) em.find(ProductType.class, id);

		productType.setGrade((short) (parent.getGrade() + 1));
		productType.setParentType(parent);
		parent.getChildTypes().add(productType);

		em.persist(productType);
	}


	
	
}
