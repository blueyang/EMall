package ustc.sse.water.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;


/**
 * 安全工具类. <br>
 * 创建一些基本安全的方法.
 * <p>
 * Copyright: Copyright (c) 2013年12月23日 下午10:09:04
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("restriction")
public class SecurityUtil {
	/**
	 * AES加密算法
	 * @param passwprd
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String AESCode(String passwprd) throws NoSuchAlgorithmException{
		MessageDigest AES;
		try {
			AES = MessageDigest.getInstance("md5");
			byte[] aes_pwd = AES.digest(passwprd.getBytes());
			BASE64Encoder encoder = new BASE64Encoder();
			return encoder.encode(aes_pwd);
		} catch (NoSuchAlgorithmException e) {
			throw new NoSuchAlgorithmException();
		}
		
	}
}
