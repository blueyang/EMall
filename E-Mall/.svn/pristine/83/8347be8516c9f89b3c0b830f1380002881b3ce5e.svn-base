package ustc.sse.water.web.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
	private int width = 100;
	private int height = 30;
	private int codeNum = 4;
	private int xx = 18;
	private int FontHeight = 22;
	private int codeY = 24;
	char[] codeSequence = {
		'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q',
		'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7',
		'8', '8', '9'
	};
	
	
	@RequestMapping("/code")
	public void getCode(HttpServletRequest request, HttpServletResponse response) {
		BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics graphics = bufferedImage.getGraphics();
		
		Random random = new Random();
		
		graphics.setColor(Color.WHITE);
		graphics.fillRect(0, 0, width, height);
		
		Font font = new Font("Fixedsys", Font.BOLD, FontHeight);
		
		graphics.setFont(font);
		
		graphics.setColor(Color.BLACK);
		graphics.drawRect(0, 0, width - 1, height - 1);
		
		graphics.setColor(Color.BLACK);
		for (int i = 0; i < 40; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			graphics.drawLine(x, y, x + xl, y + yl);
		}
		
		StringBuffer randomCode = new StringBuffer();
		int red = 0, green = 0, blue = 0;
		
		for (int i = 0; i < codeNum; i++) {
			   String code = String.valueOf(codeSequence[random.nextInt(36)]);
			   red = random.nextInt(255);
			   green = random.nextInt(255);
			   blue = random.nextInt(255);

			   graphics.setColor(new Color(red, green, blue));
			   graphics.drawString(code, (i + 1) * xx, codeY);

			   randomCode.append(code);
			  }
		
		// 将四位数字的验证码保存到Session中。
		request.getSession().setAttribute("code", randomCode.toString());

		// 禁止图像缓存。
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		response.setContentType("image/jpeg");

		// 将图像输出到Servlet输出流中。
		ServletOutputStream sos = null;
		try {
			sos = response.getOutputStream();
			ImageIO.write(bufferedImage, "jpeg", sos);
			sos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
