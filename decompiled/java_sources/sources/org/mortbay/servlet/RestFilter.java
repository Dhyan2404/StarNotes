package org.mortbay.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.util.C20429IO;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class RestFilter implements Filter {

    /* renamed from: c */
    public static final String f115250c = "PUT";

    /* renamed from: d */
    public static final String f115251d = "GET";

    /* renamed from: e */
    public static final String f115252e = "DELETE";

    /* renamed from: a */
    public FilterConfig f115253a;

    /* renamed from: b */
    public long f115254b;

    /* renamed from: a */
    public final File m71636a(HttpServletRequest httpServletRequest) {
        return new File(this.f115253a.getServletContext().getRealPath(URIUtil.addPaths(httpServletRequest.getServletPath(), httpServletRequest.getPathInfo())));
    }

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    public void doDelete(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        File m71636a = m71636a(httpServletRequest);
        if (!m71636a.exists()) {
            httpServletResponse.sendError(404);
        } else if (C20429IO.delete(m71636a)) {
            httpServletResponse.setStatus(204);
        } else {
            httpServletResponse.sendError(500);
        }
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (!(servletRequest instanceof HttpServletRequest) || !(servletResponse instanceof HttpServletResponse)) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        if (httpServletRequest.getMethod().equals("GET")) {
            filterChain.doFilter(httpServletRequest, httpServletResponse);
            return;
        }
        if (httpServletRequest.getMethod().equals("PUT")) {
            doPut(httpServletRequest, httpServletResponse);
        } else if (httpServletRequest.getMethod().equals("DELETE")) {
            doDelete(httpServletRequest, httpServletResponse);
        } else {
            filterChain.doFilter(httpServletRequest, httpServletResponse);
        }
    }

    public void doPut(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        File m71636a = m71636a(httpServletRequest);
        if (m71636a.exists() && !m71636a.delete()) {
            httpServletResponse.sendError(403);
            return;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(m71636a);
        try {
            if (this.f115254b <= 0) {
                C20429IO.copy(httpServletRequest.getInputStream(), fileOutputStream);
            } else {
                if (httpServletRequest.getContentLength() > this.f115254b) {
                    httpServletResponse.sendError(403);
                    return;
                }
                C20429IO.copy(httpServletRequest.getInputStream(), fileOutputStream, this.f115254b);
            }
            fileOutputStream.close();
            httpServletResponse.setStatus(204);
        } finally {
            fileOutputStream.close();
        }
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws UnavailableException {
        this.f115253a = filterConfig;
        String initParameter = filterConfig.getInitParameter("maxPutSize");
        if (initParameter != null) {
            this.f115254b = Long.parseLong(initParameter);
        }
    }
}
