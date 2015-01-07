package ustc.sse.water.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class EncodeFilter
 */
public class EncodeFilter implements Filter {

	protected String encoding = null;
	
	protected FilterConfig filterConfig = null;
    /**
     * Default constructor. 
     */
    public EncodeFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("过滤器销毁");
		this.encoding = null;
		this.filterConfig = null;
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String encoding = this.encoding;
		if (encoding == null) {
			request.setCharacterEncoding(encoding);
		} else {
			request.setCharacterEncoding("UTF-8");
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("过滤器初始化");
		this.filterConfig = fConfig;
		this.encoding = filterConfig.getInitParameter("encoding");
	}

}
