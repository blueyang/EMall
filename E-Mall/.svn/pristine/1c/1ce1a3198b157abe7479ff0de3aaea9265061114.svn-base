package ustc.sse.water.web.shopping;

import java.util.ArrayList;
import java.util.List;

import ustc.sse.water.pojo.BasketItem;


/**
 * 购物车. <br>
 * 维护一个BasketItem链表，添加和删除购物车中的物品
 * 如果商品ID一致，但是商品的款式不一致，则商品分开显示，完全一致则在原来的基础上+1
 * <p>
 * Copyright: Copyright (c) 2013年12月29日 下午3:59:21
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
public class Cart {
	private List<BasketItem> items = new ArrayList<BasketItem>();
	
	public void add(BasketItem item){
		if(!items.contains(item)){
			items.add(item);
		} else {
			for (BasketItem bi : items) {
				if(bi.equals(item)){
					bi.setAddCount(bi.getAddCount() + 1);
				}
			}
		}
	}
}
