package javax.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

/* loaded from: classes5.dex */
public class ServletResponseWrapper implements ServletResponse {

    /* renamed from: a */
    public ServletResponse f98002a;

    public ServletResponseWrapper(ServletResponse servletResponse) {
        if (servletResponse == null) {
            throw new IllegalArgumentException("Response cannot be null");
        }
        this.f98002a = servletResponse;
    }

    @Override // javax.servlet.ServletResponse
    public void flushBuffer() throws IOException {
        this.f98002a.flushBuffer();
    }

    @Override // javax.servlet.ServletResponse
    public int getBufferSize() {
        return this.f98002a.getBufferSize();
    }

    @Override // javax.servlet.ServletResponse
    public String getCharacterEncoding() {
        return this.f98002a.getCharacterEncoding();
    }

    @Override // javax.servlet.ServletResponse
    public String getContentType() {
        return this.f98002a.getContentType();
    }

    @Override // javax.servlet.ServletResponse
    public Locale getLocale() {
        return this.f98002a.getLocale();
    }

    @Override // javax.servlet.ServletResponse
    public ServletOutputStream getOutputStream() throws IOException {
        return this.f98002a.getOutputStream();
    }

    public ServletResponse getResponse() {
        return this.f98002a;
    }

    @Override // javax.servlet.ServletResponse
    public PrintWriter getWriter() throws IOException {
        return this.f98002a.getWriter();
    }

    @Override // javax.servlet.ServletResponse
    public boolean isCommitted() {
        return this.f98002a.isCommitted();
    }

    @Override // javax.servlet.ServletResponse
    public void reset() {
        this.f98002a.reset();
    }

    @Override // javax.servlet.ServletResponse
    public void resetBuffer() {
        this.f98002a.resetBuffer();
    }

    @Override // javax.servlet.ServletResponse
    public void setBufferSize(int i) {
        this.f98002a.setBufferSize(i);
    }

    @Override // javax.servlet.ServletResponse
    public void setCharacterEncoding(String str) {
        this.f98002a.setCharacterEncoding(str);
    }

    @Override // javax.servlet.ServletResponse
    public void setContentLength(int i) {
        this.f98002a.setContentLength(i);
    }

    @Override // javax.servlet.ServletResponse
    public void setContentType(String str) {
        this.f98002a.setContentType(str);
    }

    @Override // javax.servlet.ServletResponse
    public void setLocale(Locale locale) {
        this.f98002a.setLocale(locale);
    }

    public void setResponse(ServletResponse servletResponse) {
        if (servletResponse == null) {
            throw new IllegalArgumentException("Response cannot be null");
        }
        this.f98002a = servletResponse;
    }
}
