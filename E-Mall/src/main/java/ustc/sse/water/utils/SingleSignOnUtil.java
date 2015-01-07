package ustc.sse.water.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ustc.sse.water.constants.CommonConstant;

/**
 * 
 * 单点登录工具类. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2013年12月25日 下午8:51:42
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
public class SingleSignOnUtil {

	/**
	 * 从cookie是中取值
	 * @param request
	 * @param name 商城标示名
	 * @return
	 */
	public static final Cookie getCookie(HttpServletRequest request,String name){
		Cookie cookies[] = request.getCookies();
		if(cookies == null||name == null||name.length()==0){
			return null;
		}
		for(int i=0;i<cookies.length;i++){
			if(name.equals(cookies[i].getName())){
				return cookies[i];
			}
		}
		return null;
	}
	
	
	public static void setCookie(HttpServletRequest request,HttpServletResponse response,String name,String value) throws UnsupportedEncodingException{
		value = URLEncoder.encode(value, "utf-8");//ytwang 2013/12/26 21:40 修改
		Cookie cookie = new Cookie(name,value == null ? "" : value);
		cookie.setMaxAge(CommonConstant.EXPIRY_COOKIE);
		cookie.setPath(getPath(request));
		response.addCookie(cookie);
	}
	
	/**
	 * 获得当前应用路径
	 * 
	 * @param request
	 * @return
	 */
	public static String getPath(HttpServletRequest request) {
		String path = request.getContextPath();
		return (path == null || path.length() == 0) ? "/" : path;
	}
}
