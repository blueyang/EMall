package ustc.sse.water.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 
 * 广告信息. <br>
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
public class Advertisement implements Serializable {

	/** 广告id varchar(20) NOT NULL*/
	private long id;
	
	/** 图片URL  varchar(255) NOT NULL*/
	private String ImageURL;
	
	/** 广告链接 varchar(255) NOT NULL*/
	private String AdvertisementURL;
	
	/** 简要介绍 varchar(30) NOT NULL*/
	private String Profile;
	

	@Id
	@GeneratedValue
	@Column(length=20, nullable=false)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(length=255, nullable=false)
	public String getImageURL() {
		return ImageURL;
	}

	public void setImageURL(String imageURL) {
		ImageURL = imageURL;
	}

	@Column(length=255)
	public String getAdvertisementURL() {
		return AdvertisementURL;
	}

	public void setAdvertisementURL(String advertisementURL) {
		AdvertisementURL = advertisementURL;
	}

	@Column(length=30)
	public String getProfile() {
		return Profile;
	}

	public void setProfile(String profile) {
		Profile = profile;
	}
}
