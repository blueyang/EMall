package ustc.sse.water.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ustc.sse.water.dao.ProductDao;
import ustc.sse.water.dao.SellerDao;
import ustc.sse.water.pojo.OrderItem;
import ustc.sse.water.pojo.Product;
import ustc.sse.water.pojo.Seller;
import ustc.sse.water.pojo.Shop;
import ustc.sse.water.service.SellerService;

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
@Service("SellerService")
public class SellerServiceImpl implements SellerService {

	private SellerDao sellerDao;
	
	private ProductDao dao;
	
	/**
	 * 获取 sellerDao
	 * @return sellerDao
	 */
	public SellerDao getSellerDao() {
		return sellerDao;
	}

	/**
	 * 设置 sellerDao
	 * @param sellerDao sellerDao
	 */
	@Resource(name="SellerDao")
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}
	
	
	public ProductDao getDao() {
		return dao;
	}

	@Resource(name="ProductDao")
	public void setDao(ProductDao dao) {
		this.dao = dao;
	}

	@Override
	public void addSeller(Seller seller) {
		sellerDao.addSeller(seller);
	}

	@Override
	public Seller findseller(String name, String password) {
		Seller seller = sellerDao.findSeller(name, password);
		if (seller != null) {
			return seller;
		} else {
			return null;
		}
	}

	@Override
	public void addGoods(Product product) {
		
		sellerDao.addGoods(product);
	}

	@Override
	public Seller findseller(String username) {
		Seller seller = sellerDao.findByuserName(username);
		if (seller != null) {
			return seller;
		} else {
			return null;
		}
	}

	@Override
	public List<Shop> getHighScoreShop() {
		return sellerDao.findShopAdvice();
	}
	
	@Override
	public Shop findShop(String shopId) {		
		return sellerDao.findShop(shopId);
	}

	@Override
	public List<Product> getPromotionGoods(long sellerId) {
		return sellerDao.getPromotionGoods(sellerId);
	}

	@Override
	public List<Product> getNewGoods(long sellerId) {
		return sellerDao.getNewGoods(sellerId);
	}

	@Override
	public List<Product> getRanking(long sellerId) {
		return sellerDao.getRanking(sellerId);
	}
	
	@Override
	public List<OrderItem> getAllOrders(long sellerId){
		return sellerDao.getAllOrders(sellerId);
	}

	@Override
	public boolean delProduct(String productId) {		
		return sellerDao.delProduct(productId);
	}

	@Override
	public boolean addInStock(Product product) {
		return sellerDao.addInStock(product);
	}

	@Override
	public void createShop(Shop shop) {
		dao.save(shop);;
	}

	@Override
	public void updateSeller(Seller seller) {
		dao.update(seller);
	}

	@Override
	public List<OrderItem> getOrderItems(String orderId) {
		return sellerDao.getOrderItems(orderId);
	}

	@Override
	public void postGoods(List<OrderItem> orders) {
		for(OrderItem order:orders){
			sellerDao.postGoods(order);
		}
	}

	@Override
	public List<OrderItem> getSellerOrders(long sellerId, int orderStatus,int maxResults) {
		return sellerDao.getSellerOrders(sellerId, orderStatus, maxResults);
	}

	@Override
	public Seller findseller(long sellerId) {
		// TODO Auto-generated method stub
		return sellerDao.findseller(sellerId);
	}

	@Override
	public boolean findByUserame(String username) {
		// TODO Auto-generated method stub
		return sellerDao.findByUserame(username);
	}
	
}
