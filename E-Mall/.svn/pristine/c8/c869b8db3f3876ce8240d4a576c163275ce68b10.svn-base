package ustc.sse.water.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 * 
 * 收藏夹信息. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2014年2月19日 下午6:56:00
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 陈振：sa613385@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("serial")
@Entity
public class Favorites implements Serializable {

	/** 收藏夹id varchar(20) NOT NULL*/
	private long id;
	
	/** 收藏的是商品或者商店 int NOT NULL 1表示是商品，0表示商店*/
	private int ProductOrShop;
	
	/** 买家 BuyerId(64) NOT NULL*/
	private Buyer buyer;
	
	
	private Product product;
	
	private Shop shop;

	@Id
	@GeneratedValue
	@Column(length=20, nullable=false)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getProductOrShop() {
		return ProductOrShop;
	}

	public void setProductOrShop(int productOrShop) {
		ProductOrShop = productOrShop;
	}
	
	@ManyToOne
	@JoinColumn(name="Buyer_id")
	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Product_id")
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Shop_id")
	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}



	
	
	
	
}
