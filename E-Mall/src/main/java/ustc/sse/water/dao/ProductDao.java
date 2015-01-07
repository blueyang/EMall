package ustc.sse.water.dao;

import java.util.List;
import java.util.Set;

import ustc.sse.water.pojo.BasketItem;
import ustc.sse.water.pojo.Buyer;
import ustc.sse.water.pojo.OrderItem;
import ustc.sse.water.pojo.Product;


public interface ProductDao extends SuperDao{
	public List<Product> top3ProSet();
	
	public Set<BasketItem> findBasketByUid(String uid);
	
	public void delFromBasket(BasketItem item);

	public List<OrderItem> findNoPayOrder(Buyer buyer);

	public List<OrderItem> findAssessOrder(Buyer buyer);

	public List<Product> findNewPro6();

	public List<OrderItem> findConfirmArriveOrders(Buyer buyer);
}
