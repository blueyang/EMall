package ustc.sse.water.utils;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

public class ImgReadUtil {
	
	public static void imgRead(String imgURI, HttpServletResponse response) throws IOException{
		FileInputStream inputStream = new FileInputStream(imgURI);
		int length = inputStream.available();
		byte[] data = new byte[length];
		inputStream.read(data);
		inputStream.close();
		
		response.setContentType("image/jpeg");
		ServletOutputStream out = response.getOutputStream();
		out.write(data);
		out.close();
	}

}
