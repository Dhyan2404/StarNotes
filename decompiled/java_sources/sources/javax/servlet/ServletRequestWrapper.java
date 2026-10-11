package javax.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes5.dex */
public class ServletRequestWrapper implements ServletRequest {

    /* renamed from: a */
    public ServletRequest f98001a;

    public ServletRequestWrapper(ServletRequest servletRequest) {
        if (servletRequest == null) {
            throw new IllegalArgumentException("Request cannot be null");
        }
        this.f98001a = servletRequest;
    }

    @Override // javax.servlet.ServletRequest
    public Object getAttribute(String str) {
        return this.f98001a.getAttribute(str);
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getAttributeNames() {
        return this.f98001a.getAttributeNames();
    }

    @Override // javax.servlet.ServletRequest
    public String getCharacterEncoding() {
        return this.f98001a.getCharacterEncoding();
    }

    @Override // javax.servlet.ServletRequest
    public int getContentLength() {
        return this.f98001a.getContentLength();
    }

    @Override // javax.servlet.ServletRequest
    public String getContentType() {
        return this.f98001a.getContentType();
    }

    @Override // javax.servlet.ServletRequest
    public ServletInputStream getInputStream() throws IOException {
        return this.f98001a.getInputStream();
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalAddr() {
        return this.f98001a.getLocalAddr();
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalName() {
        return this.f98001a.getLocalName();
    }

    @Override // javax.servlet.ServletRequest
    public int getLocalPort() {
        return this.f98001a.getLocalPort();
    }

    @Override // javax.servlet.ServletRequest
    public Locale getLocale() {
        return this.f98001a.getLocale();
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getLocales() {
        return this.f98001a.getLocales();
    }

    @Override // javax.servlet.ServletRequest
    public String getParameter(String str) {
        return this.f98001a.getParameter(str);
    }

    @Override // javax.servlet.ServletRequest
    public Map getParameterMap() {
        return this.f98001a.getParameterMap();
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getParameterNames() {
        return this.f98001a.getParameterNames();
    }

    @Override // javax.servlet.ServletRequest
    public String[] getParameterValues(String str) {
        return this.f98001a.getParameterValues(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getProtocol() {
        return this.f98001a.getProtocol();
    }

    @Override // javax.servlet.ServletRequest
    public BufferedReader getReader() throws IOException {
        return this.f98001a.getReader();
    }

    @Override // javax.servlet.ServletRequest
    public String getRealPath(String str) {
        return this.f98001a.getRealPath(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteAddr() {
        return this.f98001a.getRemoteAddr();
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteHost() {
        return this.f98001a.getRemoteHost();
    }

    @Override // javax.servlet.ServletRequest
    public int getRemotePort() {
        return this.f98001a.getRemotePort();
    }

    public ServletRequest getRequest() {
        return this.f98001a;
    }

    @Override // javax.servlet.ServletRequest
    public RequestDispatcher getRequestDispatcher(String str) {
        return this.f98001a.getRequestDispatcher(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getScheme() {
        return this.f98001a.getScheme();
    }

    @Override // javax.servlet.ServletRequest
    public String getServerName() {
        return this.f98001a.getServerName();
    }

    @Override // javax.servlet.ServletRequest
    public int getServerPort() {
        return this.f98001a.getServerPort();
    }

    @Override // javax.servlet.ServletRequest
    public boolean isSecure() {
        return this.f98001a.isSecure();
    }

    @Override // javax.servlet.ServletRequest
    public void removeAttribute(String str) {
        this.f98001a.removeAttribute(str);
    }

    @Override // javax.servlet.ServletRequest
    public void setAttribute(String str, Object obj) {
        this.f98001a.setAttribute(str, obj);
    }

    @Override // javax.servlet.ServletRequest
    public void setCharacterEncoding(String str) throws UnsupportedEncodingException {
        this.f98001a.setCharacterEncoding(str);
    }

    public void setRequest(ServletRequest servletRequest) {
        if (servletRequest == null) {
            throw new IllegalArgumentException("Request cannot be null");
        }
        this.f98001a = servletRequest;
    }
}
