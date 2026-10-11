package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/* loaded from: classes5.dex */
public class auj implements HttpServletResponse {

    /* renamed from: a */
    public HttpServletResponse f65103a;

    /* renamed from: b */
    public ztj f65104b = new ztj();

    /* renamed from: c */
    public PrintWriter f65105c;

    /* renamed from: d */
    public boolean f65106d;

    public auj(HttpServletResponse httpServletResponse) {
        this.f65103a = httpServletResponse;
    }

    /* renamed from: a */
    public void m53097a() {
        if (this.f65106d) {
            return;
        }
        this.f65103a.setContentLength(this.f65104b.m58753f());
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addCookie(Cookie cookie) {
        this.f65103a.addCookie(cookie);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addDateHeader(String str, long j) {
        this.f65103a.addDateHeader(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addHeader(String str, String str2) {
        this.f65103a.addHeader(str, str2);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addIntHeader(String str, int i) {
        this.f65103a.addIntHeader(str, i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public boolean containsHeader(String str) {
        return this.f65103a.containsHeader(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectURL(String str) {
        return this.f65103a.encodeRedirectURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectUrl(String str) {
        return encodeRedirectURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeURL(String str) {
        return this.f65103a.encodeURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeUrl(String str) {
        return encodeURL(str);
    }

    @Override // javax.servlet.ServletResponse
    public void flushBuffer() throws IOException {
        this.f65103a.flushBuffer();
    }

    @Override // javax.servlet.ServletResponse
    public int getBufferSize() {
        return this.f65103a.getBufferSize();
    }

    @Override // javax.servlet.ServletResponse
    public String getCharacterEncoding() {
        return this.f65103a.getCharacterEncoding();
    }

    @Override // javax.servlet.ServletResponse
    public String getContentType() {
        return this.f65103a.getContentType();
    }

    @Override // javax.servlet.ServletResponse
    public Locale getLocale() {
        return this.f65103a.getLocale();
    }

    @Override // javax.servlet.ServletResponse
    public ServletOutputStream getOutputStream() throws IOException {
        return this.f65104b;
    }

    @Override // javax.servlet.ServletResponse
    public PrintWriter getWriter() throws UnsupportedEncodingException {
        if (this.f65105c == null) {
            this.f65105c = new PrintWriter(new OutputStreamWriter(this.f65104b, getCharacterEncoding()));
        }
        return this.f65105c;
    }

    @Override // javax.servlet.ServletResponse
    public boolean isCommitted() {
        return this.f65103a.isCommitted();
    }

    @Override // javax.servlet.ServletResponse
    public void reset() throws IllegalStateException {
        this.f65103a.reset();
    }

    @Override // javax.servlet.ServletResponse
    public void resetBuffer() throws IllegalStateException {
        this.f65103a.resetBuffer();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i, String str) throws IOException {
        this.f65103a.sendError(i, str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendRedirect(String str) throws IOException {
        this.f65103a.sendRedirect(str);
    }

    @Override // javax.servlet.ServletResponse
    public void setBufferSize(int i) throws IllegalStateException {
        this.f65103a.setBufferSize(i);
    }

    @Override // javax.servlet.ServletResponse
    public void setCharacterEncoding(String str) {
        this.f65103a.setCharacterEncoding(str);
    }

    @Override // javax.servlet.ServletResponse
    public void setContentLength(int i) {
        this.f65103a.setContentLength(i);
        this.f65106d = true;
    }

    @Override // javax.servlet.ServletResponse
    public void setContentType(String str) {
        this.f65103a.setContentType(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setDateHeader(String str, long j) {
        this.f65103a.setDateHeader(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setHeader(String str, String str2) {
        this.f65103a.setHeader(str, str2);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setIntHeader(String str, int i) {
        this.f65103a.setIntHeader(str, i);
    }

    @Override // javax.servlet.ServletResponse
    public void setLocale(Locale locale) {
        this.f65103a.setLocale(locale);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i, String str) {
        this.f65103a.setStatus(i, str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i) throws IOException {
        this.f65103a.sendError(i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i) {
        this.f65103a.setStatus(i);
    }
}
