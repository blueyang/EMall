package ustc.sse.water.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
/**
 * 
 * 水果详细信息. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午8:04:00
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("serial")
@Entity
@PrimaryKeyJoinColumn(name="FruitId")
public class FruitGoods extends Product{
		
		/** 该水果净含量，单位kg，float DEFAULT NULL*/
		private float weight;
		
		/** 水果产地varchar(50) DEFAULT NULL*/
		private String origin;
		
		/** 水果保鲜天数int DEFAULT NULL*/
		private int fruitLife;
		
		/** packageStyle 包装方式*/
		private String packageStyle;
		
		/**  harvestMonth 上市月份*/
		private String harvestMonth;
		
		/** isOrganic 是否为有机食品*/
		private String isOrganic;

		/** specifications 规格*/
		private String specifications;
		
		/** factoryName 厂名*/
		private String factoryName;
		
		/** factoryAddr 厂址*/
		private String factoryAddr;
		
		/** factoryTel 厂家联系方式*/
		private String factoryTel;
		
		/** ingredient 配料表*/
		private String ingredient;
		
		/** storeMethod 存储方法*/
		private String storeMethod;
		
		/** additive 添加剂*/
		private String additive;
		
		/** productDate 生产日期*/
		private String productDate;

		public float getWeight() {
			return weight;
		}

		public void setWeight(float weight) {
			this.weight = weight;
		}

		@Column(length=50)
		public String getOrigin() {
			return origin;
		}

		public void setOrigin(String origin) {
			this.origin = origin;
		}

		public int getFruitLife() {
			return fruitLife;
		}

		public void setFruitLife(int fruitLife) {
			this.fruitLife = fruitLife;
		}

		@Column(length=10)
		public String getPackageStyle() {
			return packageStyle;
		}

		public void setPackageStyle(String packageStyle) {
			this.packageStyle = packageStyle;
		}

		@Column(length=70)
		public String getHarvestMonth() {
			return harvestMonth;
		}

		public void setHarvestMonth(String harvestMonth) {
			this.harvestMonth = harvestMonth;
		}

		@Column(length=2)
		public String getIsOrganic() {
			return isOrganic;
		}

		public void setIsOrganic(String isOrganic) {
			this.isOrganic = isOrganic;
		}

		@Column(length=30)
		public String getSpecifications() {
			return specifications;
		}

		public void setSpecifications(String specifications) {
			this.specifications = specifications;
		}

		@Column(length=50)
		public String getFactoryName() {
			return factoryName;
		}

		public void setFactoryName(String factoryName) {
			this.factoryName = factoryName;
		}

		@Column(length=100)
		public String getFactoryAddr() {
			return factoryAddr;
		}

		public void setFactoryAddr(String factoryAddr) {
			this.factoryAddr = factoryAddr;
		}

		@Column(length=18)
		public String getFactoryTel() {
			return factoryTel;
		}

		public void setFactoryTel(String factoryTel) {
			this.factoryTel = factoryTel;
		}

		@Column(length=100)
		public String getIngredient() {
			return ingredient;
		}

		public void setIngredient(String ingredient) {
			this.ingredient = ingredient;
		}
		
		@Column(length=50)
		public String getStoreMethod() {
			return storeMethod;
		}

		public void setStoreMethod(String storeMethod) {
			this.storeMethod = storeMethod;
		}

		@Column(length=100)
		public String getAdditive() {
			return additive;
		}

		public void setAdditive(String additive) {
			this.additive = additive;
		}

		@Column(length=20)
		public String getProductDate() {
			return productDate;
		}

		public void setProductDate(String productDate) {
			this.productDate = productDate;
		}
	
}
