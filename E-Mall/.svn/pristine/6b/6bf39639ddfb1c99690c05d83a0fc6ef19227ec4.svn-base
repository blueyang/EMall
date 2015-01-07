package ustc.sse.water.service.impl;




import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;





import ustc.sse.water.dao.AdminDao;
import ustc.sse.water.pojo.Admin;
import ustc.sse.water.pojo.Advertisement;
import ustc.sse.water.pojo.Announcement;
import ustc.sse.water.pojo.ProductType;
import ustc.sse.water.service.AdminService;


/**
 * 卖家service实现类. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2014年1月29日 上午10:23:32
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
@Transactional
@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;
	 
	public AdminDao getAdminDao() {
		return adminDao;
	}

	@Resource(name="AdminDao")
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminDao.addAdmin(admin);
	}

	@Override
	public Admin findAdmin(String name, String password) {
		// TODO Auto-generated method stub
		Admin admin = adminDao.findAdmin(name, password);
		if(admin != null){
			return admin;
		} else {
			return null;
		}
	}
	

	@Override
	public void updateAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAdvertisement(long id) {
		// TODO Auto-generated method stub
		adminDao.delete(Advertisement.class, id);
		
	}

	@Override
	public void addAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
		adminDao.addAdvertisement(advertisement);
	}

	@Override
	public List<Advertisement> getAdvertisements() {
		// TODO Auto-generated method stub
		List<Advertisement> Advertisements = adminDao.getAdvertisements();
		
	/*	for(Advertisement c : Advertisements) {
			System.out.println("AdminServiceImpl   " + c.getId());
		}*/

		
		return Advertisements;
	}

	@Override
	public List<Announcement> getAnnouncements() {
		// TODO Auto-generated method stub
		List<Announcement> Announcements = adminDao.getAnnouncements();
		return Announcements;
	}

	@Override
	public void updateAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAnnouncement(long id) {
		// TODO Auto-generated method stub
		adminDao.delete(Announcement.class, id);
		
	}

	@Override
	public void addAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		adminDao.addAnnouncement(announcement);
	}

	@Override
	public Announcement getAnnouncement(String id) {
		// TODO Auto-generated method stub
		return adminDao.getAnnouncement(id);
	}

	@Override
	public List<ProductType> getTopGradeProductTypes() {
		// TODO Auto-generated method stub
		List<ProductType> list = (List<ProductType>) adminDao.getTopGradeProductTypes();
		
		if (list != null) {
			return list;
		} else {
			return null;
		}
	}
	
	@Override
	public List<ProductType> getChildProductTypes(short id) {
		// TODO Auto-generated method stub
		ProductType productType = (ProductType) adminDao.getProductType(id);
		if(productType == null) {
			return null;
		}
		
		List<ProductType> list = (List<ProductType>) adminDao.getChildProductTypes(productType);
		if (list != null) {
			return list;
		} else {
			return null;
		}
	}

	@Override
	public void addProductType(String name, short id, String b_Or_p) {
		// TODO Auto-generated method stub
		ProductType productType = new ProductType();
		productType.setName(name);
		if(b_Or_p.equals("b")) {
			adminDao.addProductTypeByBrother(productType, id);
		}
		else {
			adminDao.addProductTypeByParent(productType, id);
		}
	}

	



	
}
