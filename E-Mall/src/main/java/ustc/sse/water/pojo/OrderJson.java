package ustc.sse.water.pojo;

public class OrderJson {

	/** 订单号varchar(20) NOT NULL*/
	private String orderID;
	
	/** 商品id varchar(20) NOT NULL*/
	private String productName;
	
	/** 相同的同件商品购买数量 **/
	private int count;
	
	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(String currentPrice) {
		this.currentPrice = currentPrice;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	/** 商品当前价格float(8,2) DEFAULT NULL*/
	private String currentPrice;
	
	/** 订单状态tinyint DEFAULT NULL，-1表示关闭交易，0表示初始化订单等待付款，1表示已付款等待发货，2已发货等待确认收货，
	 * 3等待评价，4买家已评价,5退款申请，6是退款处理结束，7是不予退款，8双方互评，-2是投诉状态*/
	private String orderStatus;
}
