package javax.servlet.http;

import java.security.Principal;
import java.util.Enumeration;
import javax.servlet.ServletRequestWrapper;

/* loaded from: classes5.dex */
public class HttpServletRequestWrapper extends ServletRequestWrapper implements HttpServletRequest {
    public HttpServletRequestWrapper(HttpServletRequest httpServletRequest) {
        super(httpServletRequest);
    }

    /* renamed from: a */
    public final HttpServletRequest m61503a() {
        return (HttpServletRequest) super.getRequest();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getAuthType() {
        return m61503a().getAuthType();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getContextPath() {
        return m61503a().getContextPath();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Cookie[] getCookies() {
        return m61503a().getCookies();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public long getDateHeader(String str) {
        return m61503a().getDateHeader(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getHeader(String str) {
        return m61503a().getHeader(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaderNames() {
        return m61503a().getHeaderNames();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaders(String str) {
        return m61503a().getHeaders(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public int getIntHeader(String str) {
        return m61503a().getIntHeader(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getMethod() {
        return m61503a().getMethod();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathInfo() {
        return m61503a().getPathInfo();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathTranslated() {
        return m61503a().getPathTranslated();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getQueryString() {
        return m61503a().getQueryString();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRemoteUser() {
        return m61503a().getRemoteUser();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestURI() {
        return m61503a().getRequestURI();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public StringBuffer getRequestURL() {
        return m61503a().getRequestURL();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestedSessionId() {
        return m61503a().getRequestedSessionId();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getServletPath() {
        return m61503a().getServletPath();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession(boolean z) {
        return m61503a().getSession(z);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Principal getUserPrincipal() {
        return m61503a().getUserPrincipal();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromCookie() {
        return m61503a().isRequestedSessionIdFromCookie();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromURL() {
        return m61503a().isRequestedSessionIdFromURL();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromUrl() {
        return m61503a().isRequestedSessionIdFromUrl();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdValid() {
        return m61503a().isRequestedSessionIdValid();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isUserInRole(String str) {
        return m61503a().isUserInRole(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession() {
        return m61503a().getSession();
    }
}
