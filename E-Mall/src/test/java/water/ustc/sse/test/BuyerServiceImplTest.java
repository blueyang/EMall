package water.ustc.sse.test;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ustc.sse.water.pojo.ProductType;
import ustc.sse.water.service.ProductService;


public class BuyerServiceImplTest {
	private static ClassPathXmlApplicationContext ctx;
	private static ProductService productService;
	@BeforeClass
	public static void setUpBeforeClass() {
		ctx = new ClassPathXmlApplicationContext("spring.xml");
		productService = (ProductService) ctx.getBean("ProductService");
	}
	
	@Test
	public void test() {
		ProductType classify = new ProductType();
		classify.setName("家用电器");
		productService.saveProductType(classify);
	}
	
	/*@Test
	public void testaddImg(){
		Image images = new Image();
		images.setGoodsId("0001000232");
		productService.saveImg(images);
	}
	
	@Test
	public void testFindImgById(){
		System.out.println(productService.getImgById(1).getGoodsId());
		
	}

	@Test
	public void testSaveProduct(){
		FruitGoods product = new FruitGoods();
		product.setGoodsId("0001000232");
		product.setDescription("是个好水果！");
		product.setScore(4.5f);
		product.setFruitLife(7);
		product.setAssessNum(10000);
		product.setGoodsName("苹果");
		product.setInventory(10045);
		product.setKeyWord("是个好苹果！");
		product.setOrigin("山东");
		product.setPromotionPrice(10);
		product.setPrice(100);;
		product.setSales(100);
		product.setShopId(1001);
		product.setTypeId((short)11);
		productService.saveProduct(product);
	}
	
	@Test
	public void testGetProduct(){
		FruitGoods product = (FruitGoods)productService.getProductById("0001000232");
		System.out.println(product.getDescription());
	}*/
}
