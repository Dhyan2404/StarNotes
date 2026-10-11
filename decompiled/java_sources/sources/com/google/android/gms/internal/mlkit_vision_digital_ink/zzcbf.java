package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import okhttp3.Handshake;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzcbf extends HttpsURLConnection {
    private final HttpURLConnection zza;

    public zzcbf(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.zza = httpURLConnection;
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        this.zza.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public final void connect() throws IOException {
        ((HttpsURLConnection) this).connected = true;
        this.zza.connect();
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        this.zza.disconnect();
    }

    @Override // java.net.URLConnection
    public final boolean getAllowUserInteraction() {
        return this.zza.getAllowUserInteraction();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final String getCipherSuite() {
        Handshake zza = zza();
        if (zza != null) {
            return zza.cipherSuite().javaName();
        }
        return null;
    }

    @Override // java.net.URLConnection
    public final int getConnectTimeout() {
        return ((zzcbh) this.zza).zza.connectTimeoutMillis();
    }

    @Override // java.net.URLConnection
    public final Object getContent() throws IOException {
        return this.zza.getContent();
    }

    @Override // java.net.URLConnection
    public final String getContentEncoding() {
        return this.zza.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        return this.zza.getContentLength();
    }

    @Override // java.net.URLConnection
    public final long getContentLengthLong() {
        return this.zza.getContentLengthLong();
    }

    @Override // java.net.URLConnection
    public final String getContentType() {
        return this.zza.getContentType();
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        return this.zza.getDate();
    }

    @Override // java.net.URLConnection
    public final boolean getDefaultUseCaches() {
        return this.zza.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public final boolean getDoInput() {
        return this.zza.getDoInput();
    }

    @Override // java.net.URLConnection
    public final boolean getDoOutput() {
        return this.zza.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        return this.zza.getErrorStream();
    }

    @Override // java.net.URLConnection
    public final long getExpiration() {
        return this.zza.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        return this.zza.getHeaderField(i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final long getHeaderFieldDate(String str, long j) {
        return this.zza.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public final int getHeaderFieldInt(String str, int i) {
        return this.zza.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        return this.zza.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public final long getHeaderFieldLong(String str, long j) {
        return this.zza.getHeaderFieldLong(str, j);
    }

    @Override // java.net.URLConnection
    public final Map getHeaderFields() {
        return this.zza.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public final long getIfModifiedSince() {
        return this.zza.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() throws IOException {
        return this.zza.getInputStream();
    }

    @Override // java.net.HttpURLConnection
    public final boolean getInstanceFollowRedirects() {
        return ((zzcbh) this.zza).zza.followRedirects();
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        return this.zza.getLastModified();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getLocalCertificates() {
        Handshake zza = zza();
        if (zza == null) {
            return null;
        }
        List<Certificate> localCertificates = zza.localCertificates();
        if (localCertificates.isEmpty()) {
            return null;
        }
        return (Certificate[]) localCertificates.toArray(new Certificate[localCertificates.size()]);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getLocalPrincipal() {
        Handshake zza = zza();
        if (zza != null) {
            return zza.localPrincipal();
        }
        return null;
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() throws IOException {
        return this.zza.getOutputStream();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getPeerPrincipal() {
        Handshake zza = zza();
        if (zza != null) {
            return zza.peerPrincipal();
        }
        return null;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() throws IOException {
        return this.zza.getPermission();
    }

    @Override // java.net.URLConnection
    public final int getReadTimeout() {
        return ((zzcbh) this.zza).zza.readTimeoutMillis();
    }

    @Override // java.net.HttpURLConnection
    public final String getRequestMethod() {
        return this.zza.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public final Map getRequestProperties() {
        return this.zza.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        return this.zza.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() throws IOException {
        return this.zza.getResponseCode();
    }

    @Override // java.net.HttpURLConnection
    public final String getResponseMessage() throws IOException {
        return this.zza.getResponseMessage();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getServerCertificates() {
        Handshake zza = zza();
        if (zza == null) {
            return null;
        }
        List<Certificate> peerCertificates = zza.peerCertificates();
        if (peerCertificates.isEmpty()) {
            return null;
        }
        return (Certificate[]) peerCertificates.toArray(new Certificate[peerCertificates.size()]);
    }

    @Override // java.net.URLConnection
    public final URL getURL() {
        return this.zza.getURL();
    }

    @Override // java.net.URLConnection
    public final boolean getUseCaches() {
        return this.zza.getUseCaches();
    }

    @Override // java.net.URLConnection
    public final void setAllowUserInteraction(boolean z) {
        this.zza.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setChunkedStreamingMode(int i) {
        this.zza.setChunkedStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public final void setConnectTimeout(int i) {
        this.zza.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public final void setDefaultUseCaches(boolean z) {
        this.zza.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final void setDoInput(boolean z) {
        this.zza.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public final void setDoOutput(boolean z) {
        this.zza.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(int i) {
        ((zzcbh) this.zza).setFixedLengthStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public final void setIfModifiedSince(long j) {
        this.zza.setIfModifiedSince(j);
    }

    @Override // java.net.HttpURLConnection
    public final void setInstanceFollowRedirects(boolean z) {
        this.zza.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public final void setReadTimeout(int i) {
        this.zza.setReadTimeout(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setRequestMethod(String str) throws ProtocolException {
        this.zza.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        this.zza.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public final void setUseCaches(boolean z) {
        this.zza.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final String toString() {
        return this.zza.toString();
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        return this.zza.usingProxy();
    }

    public abstract Handshake zza();

    @Override // java.net.URLConnection
    public final Object getContent(Class[] clsArr) throws IOException {
        return this.zza.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        return this.zza.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(long j) {
        this.zza.setFixedLengthStreamingMode(j);
    }
}
