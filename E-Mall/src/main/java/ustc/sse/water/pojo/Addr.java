package ustc.sse.water.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
/**
 * 
 * 商城买家用户信息. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午6:53:18
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("serial")
@Entity
public class Addr implements Serializable {

	/** 买家id，主键，自增*/
	private long id;
	
	/** 收货人姓名 **/
	private String receiveName;
	
	/** 地区 **/
	private String area;
	
	/** 街道 **/
	private String street;
	
	/** 空行，填写其他信息 **/
	private String blanket;
	
	/** 标志是否为选中的默认地址 **/
	private String flag;
	
	/** 邮政编码varchar(10) DEFAULT NULL*/
	private String postcode;
	
	private String telNumber;

	@Id
	@GeneratedValue
	@Column(length=20, nullable=false)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(length=20)
	public String getReceiveName() {
		return receiveName;
	}

	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}

	@Column(length=100)
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Column(length=100)
	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	@Column(length=100)
	public String getBlanket() {
		return blanket;
	}

	public void setBlanket(String blanket) {
		this.blanket = blanket;
	}

	@Column(length=10)
	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Column(length=20)
	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	@Column(length=2)
	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
