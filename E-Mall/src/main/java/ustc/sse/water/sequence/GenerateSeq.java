package ustc.sse.water.sequence;

import java.text.ParseException;
import ustc.sse.water.utils.TimeUtil;

/**
 * 
 * 生成各种需求序列. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午10:30:58
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
public class GenerateSeq {

	/**
	 * 生成订单号
	 * @param mobile
	 * @return
	 */
	public static String geOrderId(String mobile){
		StringBuffer buffer = new StringBuffer();
		buffer.append(TimeUtil.yyyyMMddHHmmssSSS().substring(2));
		if(mobile==null||"".equals(mobile)){
			buffer.append("xxoo");
		}else{
			buffer.append(mobile.substring(8, 11));
		}
		return buffer.toString();
	}

	/**
	 * 根据物流商生成运单号
	 * @param logisticsTag
	 * @return
	 */
	public synchronized static String geLogisticsId(String logisticsTag){
		
		return logisticsTag+TimeUtil.yyyyMMddHHmmssSSS();
	}
	
	/**
	 * 根据一级分类和二级分类生成商品id
	 * @param first
	 * @param second
	 * @return
	 * @throws ParseException
	 */
	public synchronized static String geGoodsId(final String first,final String second) throws ParseException{
		return first+second+TimeUtil.getTimeMinis();
	}
	
}
