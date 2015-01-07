package ustc.sse.water.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * 
 * 投诉信息. <br>
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
public class Complaint implements Serializable {

	/** 投诉id varchar(20) NOT NULL*/
	private long id;
	
	/** 订单  orderid NOT NULL*/
	private OrderItem orderItem;
	
	/** 投诉内容  varchar(500) NOT NULL*/
	private String content;
	
	/** 投诉时间  Date NOT NULL*/
	private Date postTime;
	
	/** 投诉状态   NOT NULL 0表示未处理，1表示正在处理，2表示已处理完毕*/
	private int figure;

	@Id
	@GeneratedValue
	@Column(length=20, nullable=false)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(length=500, nullable=false)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(nullable=false)
	public Date getPostTime() {
		return postTime;
	}

	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	@Column(nullable=false)
	public int getFigure() {
		return figure;
	}

	public void setFigure(int figure) {
		this.figure = figure;
	}

	@OneToOne
	public OrderItem getOrderItem() {
		return orderItem;
	}

	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}
	
	
}
