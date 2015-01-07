package ustc.sse.water.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * 
 * 一级分类信息. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午9:08:12
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
/**
 * 修改类别. <br>
 * 子类别和父类别映射.
 * <p>
 * Copyright: Copyright (c) 2013年12月30日 下午12:04:24
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
@Entity
public class ProductType implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1790596285658021169L;

	/** 分类id主键smallint*/
	private short id;
	
	/** 分类名称varchar(30) NOT NULL*/
	private String name;
	
	/** 子类别 **/
	private Set<ProductType> childTypes = new HashSet<ProductType>();
	
	/** 父类别  **/
	private ProductType parentType;
	
	private short grade;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(nullable=false)
	public short getId() {
		return id;
	}

	public void setId(short id) {
		this.id = id;
	}

	@Column(length=30, nullable=false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(cascade={CascadeType.REFRESH,CascadeType.REMOVE}, mappedBy="parentType", fetch=FetchType.EAGER)
	public Set<ProductType> getChildTypes() {
		return childTypes;
	}

	public void setChildTypes(Set<ProductType> childTypes) {
		this.childTypes = childTypes;
	}

	@ManyToOne(cascade={CascadeType.REFRESH}, optional=true)
	@JoinColumn(name="parentTypeID")
	public ProductType getParentType() {
		return parentType;
	}

	public void setParentType(ProductType parentType) {
		this.parentType = parentType;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductType other = (ProductType) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Column(nullable=false)
	public short getGrade() {
		return grade;
	}

	public void setGrade(short grade) {
		this.grade = grade;
	}
	
}
