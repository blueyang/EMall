package ustc.sse.water.utils;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;





import javax.imageio.ImageIO;

/**
 * 图片压缩处理. <br>
 * 用于压缩上传的图片.
 * <p>
 * Copyright: Copyright (c) 2014年2月7日 上午11:03:03
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author wangytao@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("restriction")
public class CompressImg {
	
	/**
	 * @return
	 * 图片压缩 
	 */
	public static String compressImgMethod(File inputFile, String outputDir,
			String outputFileName, int outputWidth, int outputHeight, boolean gp){
		if(!inputFile.exists()){
			return "";
		}
		try {
			Image image = ImageIO.read(inputFile);
			//判断图片格式
			if(image.getWidth(null)==-1){
				System.out.println("can't read, retry");
			} else {
				int newWidth;
				int newHeight;
				//判断是否为等比缩放
				if(gp){
					//为等比缩放计算输出图片的长和宽
					double widthRate = (double)image.getWidth(null)/(double)outputWidth + 0.1;
					double heightRate = (double)image.getHeight(null)/(double)outputHeight + 0.1;
					double rate = widthRate > heightRate ? widthRate : heightRate;
					newWidth = (int) (((double)image.getWidth(null))/rate);
					newHeight = (int)(((double)image.getHeight(null))/rate);
				} else {
					newHeight = outputHeight;
					newWidth = outputWidth;
				}
				
				BufferedImage tag = new BufferedImage(newWidth, newHeight, Image.SCALE_SMOOTH);//此类型生成图片质量好
				tag.getGraphics().drawImage(image.getScaledInstance(newWidth, newHeight, Image.SCALE_SMOOTH), 0, 0, null);
				FileOutputStream out = new FileOutputStream(outputDir + outputFileName);
				
				JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
				encoder.encode(tag);
				out.close();
				System.out.println("success");
			}
		} catch (IOException e) {
			System.out.println("err");
			e.printStackTrace();
		}
		return "success";
	}
}
