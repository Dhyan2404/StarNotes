package org.mortbay.servlet;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/* loaded from: classes13.dex */
public class WelcomeFilter implements Filter {

    /* renamed from: a */
    public String f115265a;

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String servletPath = ((HttpServletRequest) servletRequest).getServletPath();
        if (this.f115265a == null || !servletPath.endsWith("/")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(servletPath);
        stringBuffer.append(this.f115265a);
        servletRequest.getRequestDispatcher(stringBuffer.toString()).forward(servletRequest, servletResponse);
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) {
        String initParameter = filterConfig.getInitParameter("welcome");
        this.f115265a = initParameter;
        if (initParameter == null) {
            this.f115265a = "index.html";
        }
    }
}
