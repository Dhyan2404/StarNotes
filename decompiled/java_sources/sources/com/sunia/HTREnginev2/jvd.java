package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public final class jvd extends URLConnection implements AutoCloseable {

    /* renamed from: e */
    public final URLConnection f74740e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jvd(URLConnection uRLConnection) {
        super(uRLConnection.getURL());
        Objects.requireNonNull(uRLConnection, "urlConnection");
        this.f74740e = uRLConnection;
    }

    /* renamed from: f */
    public static jvd m55052f(URI uri) throws IOException {
        Objects.requireNonNull(uri, "uri");
        return m55053j(uri.toURL());
    }

    /* renamed from: j */
    public static jvd m55053j(URL url) throws IOException {
        return new jvd(url.openConnection());
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f74740e.addRequestProperty(str, str2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        IOUtils.close(this.f74740e);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.f74740e.connect();
    }

    public boolean equals(Object obj) {
        return this.f74740e.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f74740e.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f74740e.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        return this.f74740e.getContent();
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f74740e.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f74740e.getContentLength();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f74740e.getContentLengthLong();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f74740e.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f74740e.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f74740e.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f74740e.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f74740e.getDoOutput();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f74740e.getExpiration();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f74740e.getHeaderField(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f74740e.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f74740e.getHeaderFieldInt(str, i);
    }

    @Override // java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f74740e.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f74740e.getHeaderFieldLong(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f74740e.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f74740e.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        return this.f74740e.getInputStream();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f74740e.getLastModified();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        return this.f74740e.getOutputStream();
    }

    @Override // java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.f74740e.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f74740e.getReadTimeout();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f74740e.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f74740e.getRequestProperty(str);
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f74740e.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f74740e.getUseCaches();
    }

    public int hashCode() {
        return this.f74740e.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f74740e.setAllowUserInteraction(z);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f74740e.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f74740e.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f74740e.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f74740e.setDoOutput(z);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f74740e.setIfModifiedSince(j);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f74740e.setReadTimeout(i);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f74740e.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f74740e.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f74740e.toString();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        return this.f74740e.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f74740e.getHeaderField(str);
    }
}
