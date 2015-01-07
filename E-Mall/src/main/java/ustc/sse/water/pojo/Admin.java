package ustc.sse.water.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 
 * 管理员信息. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午9:04:54
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("serial")
@Entity
public class Admin implements Serializable {

	/** 管理员账户 varchar(20) NOT NULL*/
	private String username;
	
	/** 密码 varchar(64) NOT NULL*/
	private String password;

	@Id
	@Column(length=20, nullable=false)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(length=64, nullable=false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
