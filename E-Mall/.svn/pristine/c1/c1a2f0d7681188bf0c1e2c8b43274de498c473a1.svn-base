package ustc.sse.water.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ustc.sse.water.dao.BuyerDao;
import ustc.sse.water.dao.ProductDao;
import ustc.sse.water.pojo.Addr;
import ustc.sse.water.pojo.BasketItem;
import ustc.sse.water.pojo.Buyer;
import ustc.sse.water.pojo.Favorites;
import ustc.sse.water.pojo.OrderItem;
import ustc.sse.water.pojo.Product;
import ustc.sse.water.pojo.Shop;
import ustc.sse.water.service.BuyerService;

/**
 * 买家业务层实现. <br>
 * 实现处理方法,使用注解@Service
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午10:17:04
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
@Transactional
@Service("BuyerService")
public class BuyerServiceImpl implements BuyerService{
	
	@Resource(name="ProductDao")
	protected ProductDao productDao;

	private BuyerDao buyerDao;
	
	public void addBuyer(Buyer buyer) {
		buyerDao.addBuyer(buyer);
	}
	
	public Buyer findBuyer(String name, String password){
		Buyer buyer = buyerDao.findBuyer(name, password);
		if(buyer != null){
			return buyer;
		} else {
			return null;
		}
	}
	
	public Buyer findBuyerById(long uid) {
		Buyer buyer = buyerDao.find(Buyer.class, uid);
		return buyer;
	}

	public BuyerDao getBuyerDao() {
		return buyerDao;
	}

	@Resource(name="BuyerDao")
	public void setBuyerDao(BuyerDao buyerDao) {
		this.buyerDao = buyerDao;
	}

	@Override
	public void update(Buyer buyer) {
		buyerDao.update(buyer);
	}

	@Override
	public void update_Info(Buyer buyer) {
		buyerDao.update_Info(buyer);
	}
	
	@Override
	public void saveAddr(Addr addr) {
		buyerDao.save(addr);
	}

	@Override
	public Addr getThePAById(String addr_select) {
		Addr addr = buyerDao.find(Addr.class, Long.parseLong(addr_select));
		return addr;
	}

	/**
	 * 存入order，并更新entity，持久化到数据库
	 */
	@Override
	public void saveOrders(Buyer buyer, Set<OrderItem> tempOrders) {
		//Set<OrderItem> dbOrders = buyer.getOrders();
		if (tempOrders != null) {
			for (OrderItem orderItem : tempOrders) {
				buyerDao.save(orderItem);
			}
		}
		//buyerDao.update(buyer);
	}

	@Override
	public void emptyMyCart(Set<OrderItem> tempOrders, Buyer buyer) {
		for (BasketItem item : buyer.getBasket()) {
			for (OrderItem orderItem : tempOrders) {
				if(item.getProduct().getProductId().equals(orderItem.getProduct().getProductId())){
					productDao.delFromBasket(item);
				}
			}
		}
		buyer.setBasket(null);
		update(buyer);
	}

	@Override
	public void removeItem(BasketItem item) {
		productDao.delFromBasket(item);
	}

	@Override
	public List<OrderItem> getNoPayOrders(Buyer buyer) {
		return productDao.findNoPayOrder(buyer);
	}

	@Override
	public List<OrderItem> getAssessOrders(Buyer buyer) {
		return productDao.findAssessOrder(buyer);
	}
	

	@Override
	public int countComplaint(Buyer buyer) {
		return buyerDao.countComplaint(buyer);
	}

	@Override
	public int countEval(Buyer buyer) {
		return buyerDao.countEval(buyer);
	}

	@Override
	public List<OrderItem> getRecentBuy(Buyer nbuyer) {
		List<OrderItem> items = buyerDao.findRecentBuy(nbuyer);
		if (items.size() > 4) {
			return items.subList(0, 4);
		} else {
			return items;
		}
	}

	@Override
	public List<Favorites> getFavorites(Buyer buyer) {
		List<Favorites> list = buyerDao.getFavorites(buyer);
		if (list != null) {
			return list;
		} else {
			return null;
		}
	}
	
	public void deleteFavorite(long id) {
		buyerDao.delete(Favorites.class, id);
	}
	
	public void addFavorite(Favorites item, String fid, String ftype) {
		if (ftype.equals("1")) {
			item.setProductOrShop(1);
			Product product = buyerDao.find(Product.class, fid);
			item.setProduct(product);
			buyerDao.save(item);
		}
		else if (ftype.equals("0")){
			item.setProductOrShop(0);
			Shop shop = buyerDao.find(Shop.class, fid);
			item.setShop(shop);
			buyerDao.save(item);
		}
		else 
			System.out.println("error");
	}

	@Override
	public List<OrderItem> searchOrders(Buyer buyer, String proName,
			String timeBegin, String timeEnd, String orderNum,
			String orderStatus) {
		List<OrderItem> list = buyerDao.findExactOrder(buyer, proName, timeBegin, timeEnd, orderNum, orderStatus);
		return list;
	}

	@Override
	public List<OrderItem> getConfirmArriveOrders(Buyer buyer) {
		
		return productDao.findConfirmArriveOrders(buyer);
	}

	@Override
	public int countArrive(Buyer buyer) {
		return buyerDao.countArrive(buyer);
	}

	@Override
	public boolean findByUserame(String username) {
		// TODO Auto-generated method stub
		return buyerDao.findByUserame(username);
	}
}
