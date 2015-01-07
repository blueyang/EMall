package ustc.sse.water.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

/**
 * Servlet Filter implementation class SellerCheckLogin
 */
public class SellerCheckLogin extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String[] toFilter = new String[] {"SellerController/toSellerMgr","SellerController/addGoods","SellerController/addBookGoods",
				"/delFromShop","/addInStock","/createShop","/authSeller","/postGoods","/modifyPwd","/updateInfo","/dealCancelApply","/refuseCancelApply","/scoreBuyer"};
		
		String requestUri = request.getRequestURI();
		//判断买家是否登录
		boolean dofilter = false;
		for (String s : toFilter) {
			if (requestUri.indexOf(s) != -1) {
				//包含该目录下需要过滤的
				dofilter = true;
			}
		}
		
		if (dofilter) {
			Object object = request.getSession().getAttribute("current_seller");
			
			if (object == null) {
				request.setCharacterEncoding("UTF-8");
                response.setCharacterEncoding("UTF-8");
                PrintWriter out = response.getWriter();
                StringBuilder builder = new StringBuilder();
                builder.append("<script type=\"text/javascript\">");
                builder.append("alert('Please login!');");
                builder.append("window.top.location.href='/E-Mall/tologin';");
                builder.append("</script>");
                out.print(builder.toString());
			} else {
				filterChain.doFilter(request, response);
			}
		} else {
			filterChain.doFilter(request, response);
		}
		
	}
    
}
