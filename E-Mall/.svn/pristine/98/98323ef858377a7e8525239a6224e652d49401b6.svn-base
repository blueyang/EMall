package ustc.sse.water.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/**
 * 
 * 时间工具类，可以获取各种格式的时间. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午9:19:28
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
public class TimeUtil {
	
	/**
	 * 获取yyyyMMdd格式的时间
	 * @return
	 */
	public static String yyyyMMdd(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		return df.format(Calendar.getInstance().getTime());
	}
	
	/**
	 * 获取yyyy-MM-dd格式时间
	 * @return
	 */
	public static String yyyy_MM_dd(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(Calendar.getInstance().getTime());
	}
	
	/**
	 * 获取yyyyMMddHHmmss格式时间
	 * @return
	 */
	public static String yyyyMMddHHmmss(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		return df.format(Calendar.getInstance().getTime());
	}
	
	/**
	 * 获取yyyyMMddHHmmssSSS格式时间
	 * @return
	 */
	public static String yyyyMMddHHmmssSSS(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		return df.format(Calendar.getInstance().getTime());
	}
	
	/**
	 * 获取yyyyMMddHH格式时间
	 * @return
	 */
	public static String yyyyMMddHH(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHH");
		return df.format(Calendar.getInstance().getTime());
	}

	/**
	 * 获得处理日期yyyyMMdd
	 * 
	 * @return
	 */
	public static String getProcessDate() {
		return yyyyMMdd();
	}
	
	/**
	 * 获取处理时间yyyy-MM-dd HH:mm:ss
	 * 
	 * @return 处理时间
	 */
	public static String getProcessTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return df.format(Calendar.getInstance().getTime());
	}


	/**
	 * 获取字符串格式的日期的秒数
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static Long getMinis(String date) throws ParseException {
		Date time = new SimpleDateFormat("yyyyMMddHHmmss").parse(date);
		return time.getTime();
	}
	/**
	 * 获取当前日期的毫秒数
	 * 
	 * @return
	 * @throws ParseException
	 */
	public static Long getTimeMinis() throws ParseException {
		Date time = new SimpleDateFormat("yyyyMMddHHmmssSSS").parse(yyyyMMddHHmmssSSS());
		return time.getTime();
	}

	/**
	 * 获取字符串格式的日期的毫秒数
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static Long getTimeMinis(String date) throws ParseException {
		Date time = new SimpleDateFormat("yyyyMMddHHmmssSSS").parse(date);
		return time.getTime();
	}
	
	/**
	 * 获取当前日期指定天数的yyyymmdd值
	 * 
	 * @param day
	 * @return
	 */
	public static String getSpecifyDate(int day) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DAY_OF_MONTH, day);
		return new SimpleDateFormat("yyyyMMdd").format(c.getTime());
	}

	/**
	 * 获得date类型的时间
	 * 
	 * @param time
	 * @return
	 */
	public static Date getTime(long time) {
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(time);
		return cal.getTime();
	}
	
	/*public static void main(String[] args) throws ParseException{
		System.out.println((getMinis(yyyyMMddHHmmss())+"").substring(1));
		System.out.println(getTimeMinis(yyyyMMddHHmmssSSS()));
		System.out.println(getTimeMinis(yyyyMMddHHmmssSSS()));
		System.out.println(getProcessTime());
	}*/

}
