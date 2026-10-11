package org.mortbay.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/* loaded from: classes13.dex */
public class UserAgentFilter implements Filter {

    /* renamed from: a */
    public Pattern f115261a;

    /* renamed from: b */
    public Map f115262b = new HashMap();

    /* renamed from: c */
    public int f115263c = 1024;

    /* renamed from: d */
    public String f115264d;

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (this.f115264d != null && this.f115261a != null) {
            servletRequest.setAttribute(this.f115264d, getUserAgent(servletRequest));
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public String getUserAgent(ServletRequest servletRequest) {
        return getUserAgent(((HttpServletRequest) servletRequest).getHeader("User-Agent"));
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.f115264d = filterConfig.getInitParameter("attribute");
        String initParameter = filterConfig.getInitParameter("userAgent");
        if (initParameter != null) {
            this.f115261a = Pattern.compile(initParameter);
        }
        String initParameter2 = filterConfig.getInitParameter("cacheSize");
        if (initParameter2 != null) {
            this.f115263c = Integer.parseInt(initParameter2);
        }
    }

    public String getUserAgent(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        synchronized (this.f115262b) {
            str2 = (String) this.f115262b.get(str);
        }
        if (str2 == null) {
            Matcher matcher = this.f115261a.matcher(str);
            if (!matcher.matches()) {
                str2 = str;
            } else if (matcher.groupCount() > 0) {
                for (int i = 1; i <= matcher.groupCount(); i++) {
                    String group = matcher.group(i);
                    if (group != null) {
                        if (str2 != null) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append(str2);
                            stringBuffer.append(group);
                            group = stringBuffer.toString();
                        }
                        str2 = group;
                    }
                }
            } else {
                str2 = matcher.group();
            }
            synchronized (this.f115262b) {
                if (this.f115262b.size() >= this.f115263c) {
                    this.f115262b.clear();
                }
                this.f115262b.put(str, str2);
            }
        }
        return str2;
    }
}
