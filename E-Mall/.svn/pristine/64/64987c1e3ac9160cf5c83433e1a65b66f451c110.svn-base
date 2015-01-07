package water.ustc.sse.test;


import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ustc.sse.water.dao.ProductDao;
import ustc.sse.water.pojo.Product;
import ustc.sse.water.service.ProductService;

public class PersistTest {
	
	
	
	/*@Test
	public void addTest() throws NoSuchAlgorithmException{
	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
		
		BuyerService service = (BuyerService)ctx.getBean("BuyerService");
		Buyer buyer = service.findBuyer("qwe", SecurityUtil.AESCode("123"));
		System.out.println(SecurityUtil.AESCode("123").length());
		ctx.close();
	}
*/
	@Test
	public void queryTest() throws NoSuchAlgorithmException{
	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
		ProductService productService = (ProductService) ctx.getBean("ProductService");
		String str = "西瓜";
		List<Product> list = productService.productQuery(0, str).getResultList();
		System.out.println("OK");
		/*ProductDao dao = (ProductDao) ctx.getBean("ProductDao");
		dao.findAll();
		ctx.close();*/
	}
}
