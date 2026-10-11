package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.params.HttpParams;

/* loaded from: classes12.dex */
public class k0i implements CloseableHttpResponse {

    /* renamed from: e */
    public final HttpResponse f74884e;

    /* renamed from: f */
    public final n9e f74885f;

    public k0i(HttpResponse httpResponse, n9e n9eVar) {
        this.f74884e = httpResponse;
        this.f74885f = n9eVar;
        bml.m53282b(httpResponse, n9eVar);
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(Header header) {
        this.f74884e.addHeader(header);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        n9e n9eVar = this.f74885f;
        if (n9eVar != null) {
            n9eVar.close();
        }
    }

    @Override // org.apache.http.HttpMessage
    public boolean containsHeader(String str) {
        return this.f74884e.containsHeader(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getAllHeaders() {
        return this.f74884e.getAllHeaders();
    }

    @Override // org.apache.http.HttpResponse
    public HttpEntity getEntity() {
        return this.f74884e.getEntity();
    }

    @Override // org.apache.http.HttpMessage
    public Header getFirstHeader(String str) {
        return this.f74884e.getFirstHeader(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getHeaders(String str) {
        return this.f74884e.getHeaders(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header getLastHeader(String str) {
        return this.f74884e.getLastHeader(str);
    }

    @Override // org.apache.http.HttpResponse
    public Locale getLocale() {
        return this.f74884e.getLocale();
    }

    @Override // org.apache.http.HttpMessage
    public HttpParams getParams() {
        return this.f74884e.getParams();
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        return this.f74884e.getProtocolVersion();
    }

    @Override // org.apache.http.HttpResponse
    public StatusLine getStatusLine() {
        return this.f74884e.getStatusLine();
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator() {
        return this.f74884e.headerIterator();
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeader(Header header) {
        this.f74884e.removeHeader(header);
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeaders(String str) {
        this.f74884e.removeHeaders(str);
    }

    @Override // org.apache.http.HttpResponse
    public void setEntity(HttpEntity httpEntity) {
        this.f74884e.setEntity(httpEntity);
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(Header header) {
        this.f74884e.setHeader(header);
    }

    @Override // org.apache.http.HttpMessage
    public void setHeaders(Header[] headerArr) {
        this.f74884e.setHeaders(headerArr);
    }

    @Override // org.apache.http.HttpResponse
    public void setLocale(Locale locale) {
        this.f74884e.setLocale(locale);
    }

    @Override // org.apache.http.HttpMessage
    public void setParams(HttpParams httpParams) {
        this.f74884e.setParams(httpParams);
    }

    @Override // org.apache.http.HttpResponse
    public void setReasonPhrase(String str) throws IllegalStateException {
        this.f74884e.setReasonPhrase(str);
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusCode(int i) throws IllegalStateException {
        this.f74884e.setStatusCode(i);
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(StatusLine statusLine) {
        this.f74884e.setStatusLine(statusLine);
    }

    public String toString() {
        return "HttpResponseProxy{" + this.f74884e + '}';
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(String str, String str2) {
        this.f74884e.addHeader(str, str2);
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator(String str) {
        return this.f74884e.headerIterator(str);
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(String str, String str2) {
        this.f74884e.setHeader(str, str2);
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i) {
        this.f74884e.setStatusLine(protocolVersion, i);
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        this.f74884e.setStatusLine(protocolVersion, i, str);
    }
}
