package org.mortbay.util.ajax;

import com.onyx.android.sdk.base.utils.HtmlUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* loaded from: classes13.dex */
public class AjaxFilter implements Filter {

    /* renamed from: a */
    public ServletContext f115393a;

    /* loaded from: classes13.dex */
    public static class AjaxResponse {

        /* renamed from: a */
        public HttpServletRequest f115394a;

        /* renamed from: b */
        public PrintWriter f115395b;

        public void elementResponse(String str, String str2) {
            if (str == null) {
                str = this.f115394a.getParameter("id");
            }
            if (str == null) {
                str = "unknown";
            }
            PrintWriter printWriter = this.f115395b;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<response type=\"element\" id=\"");
            stringBuffer.append(str);
            stringBuffer.append("\">");
            stringBuffer.append(str2);
            stringBuffer.append("</response>");
            printWriter.println(stringBuffer.toString());
        }

        public void objectResponse(String str, String str2) {
            if (str == null) {
                str = this.f115394a.getParameter("id");
            }
            if (str == null) {
                str = "unknown";
            }
            PrintWriter printWriter = this.f115395b;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<response type=\"object\" id=\"");
            stringBuffer.append(str);
            stringBuffer.append("\">");
            stringBuffer.append(str2);
            stringBuffer.append("</response>");
            printWriter.println(stringBuffer.toString());
        }

        public AjaxResponse(HttpServletRequest httpServletRequest, PrintWriter printWriter) {
            this.f115395b = printWriter;
            this.f115394a = httpServletRequest;
        }
    }

    public static String encodeText(String str) {
        StringBuffer stringBuffer = null;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            String str2 = charAt != '&' ? charAt != '<' ? charAt != '>' ? null : "&gt;" : "&lt;" : "&amp;";
            if (str2 != null) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.length() * 2);
                    stringBuffer.append(str.subSequence(0, i));
                }
                stringBuffer.append(str2);
            } else if (stringBuffer != null) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer != null ? stringBuffer.toString() : str;
    }

    @Override // javax.servlet.Filter
    public void destroy() {
        this.f115393a = null;
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String[] parameterValues = servletRequest.getParameterValues("ajax");
        String[] parameterValues2 = servletRequest.getParameterValues("message");
        if (parameterValues == null || parameterValues.length <= 0) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println("<ajax-response>");
        AjaxResponse ajaxResponse = new AjaxResponse(httpServletRequest, printWriter);
        for (int i = 0; i < parameterValues.length; i++) {
            handle(parameterValues[i], parameterValues2[i], httpServletRequest, ajaxResponse);
        }
        printWriter.println("</ajax-response>");
        byte[] bytes = stringWriter.toString().getBytes("UTF-8");
        httpServletResponse.setHeader("Pragma", "no-cache");
        httpServletResponse.addHeader("Cache-Control", "must-revalidate,no-cache,no-store");
        httpServletResponse.setDateHeader("Expires", 0L);
        httpServletResponse.setContentType("text/xml; charset=UTF-8");
        httpServletResponse.setContentLength(bytes.length);
        httpServletResponse.getOutputStream().write(bytes);
        httpServletResponse.flushBuffer();
    }

    public ServletContext getContext() {
        return this.f115393a;
    }

    public void handle(String str, String str2, HttpServletRequest httpServletRequest, AjaxResponse ajaxResponse) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<span class=\"error\">No implementation for ");
        stringBuffer.append(str);
        stringBuffer.append(" ");
        stringBuffer.append(httpServletRequest.getParameter("member"));
        stringBuffer.append(HtmlUtils.f40912h);
        ajaxResponse.elementResponse(null, stringBuffer.toString());
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.f115393a = filterConfig.getServletContext();
    }
}
