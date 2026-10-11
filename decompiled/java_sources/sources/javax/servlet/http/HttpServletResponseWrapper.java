package javax.servlet.http;

import java.io.IOException;
import javax.servlet.ServletResponseWrapper;

/* loaded from: classes5.dex */
public class HttpServletResponseWrapper extends ServletResponseWrapper implements HttpServletResponse {
    public HttpServletResponseWrapper(HttpServletResponse httpServletResponse) {
        super(httpServletResponse);
    }

    /* renamed from: a */
    public final HttpServletResponse m61504a() {
        return (HttpServletResponse) super.getResponse();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addCookie(Cookie cookie) {
        m61504a().addCookie(cookie);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addDateHeader(String str, long j) {
        m61504a().addDateHeader(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addHeader(String str, String str2) {
        m61504a().addHeader(str, str2);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addIntHeader(String str, int i) {
        m61504a().addIntHeader(str, i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public boolean containsHeader(String str) {
        return m61504a().containsHeader(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectURL(String str) {
        return m61504a().encodeRedirectURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectUrl(String str) {
        return m61504a().encodeRedirectUrl(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeURL(String str) {
        return m61504a().encodeURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeUrl(String str) {
        return m61504a().encodeUrl(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i, String str) throws IOException {
        m61504a().sendError(i, str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendRedirect(String str) throws IOException {
        m61504a().sendRedirect(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setDateHeader(String str, long j) {
        m61504a().setDateHeader(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setHeader(String str, String str2) {
        m61504a().setHeader(str, str2);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setIntHeader(String str, int i) {
        m61504a().setIntHeader(str, i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i) {
        m61504a().setStatus(i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i) throws IOException {
        m61504a().sendError(i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i, String str) {
        m61504a().setStatus(i, str);
    }
}
