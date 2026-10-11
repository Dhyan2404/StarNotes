package com.liulishuo.okdownload.core.connection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.IRedirectHandler;
import com.liulishuo.okdownload.RedirectUtil;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class DownloadUrlConnection implements DownloadConnection, DownloadConnection.Connected {

    /* renamed from: d */
    public static final String f39316d = "DownloadUrlConnection";

    /* renamed from: a */
    public Configuration f39317a;

    /* renamed from: b */
    public URL f39318b;

    /* renamed from: c */
    public IRedirectHandler f39319c;
    protected URLConnection connection;

    /* loaded from: classes4.dex */
    public static class Configuration {

        /* renamed from: a */
        public Proxy f39320a;

        /* renamed from: b */
        public Integer f39321b;

        /* renamed from: c */
        public Integer f39322c;

        public Configuration connectTimeout(int i) {
            this.f39322c = Integer.valueOf(i);
            return this;
        }

        public Configuration proxy(Proxy proxy) {
            this.f39320a = proxy;
            return this;
        }

        public Configuration readTimeout(int i) {
            this.f39321b = Integer.valueOf(i);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Factory implements DownloadConnection.Factory {

        /* renamed from: a */
        public final Configuration f39323a;

        public Factory() {
            this(null);
        }

        /* renamed from: a */
        public DownloadConnection m31011a(URL url) throws IOException {
            return new DownloadUrlConnection(url, this.f39323a);
        }

        @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Factory
        public DownloadConnection create(String str) throws IOException {
            return new DownloadUrlConnection(str, this.f39323a);
        }

        public Factory(Configuration configuration) {
            this.f39323a = configuration;
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.connection.DownloadUrlConnection$a */
    /* loaded from: classes4.dex */
    public static final class C6963a implements IRedirectHandler {

        /* renamed from: a */
        public String f39324a;

        @Override // com.liulishuo.okdownload.IRedirectHandler
        @Nullable
        public String getRedirectLocation() {
            return this.f39324a;
        }

        @Override // com.liulishuo.okdownload.IRedirectHandler
        public void handleRedirect(DownloadConnection downloadConnection, DownloadConnection.Connected connected, Map<String, List<String>> map) throws IOException {
            DownloadUrlConnection downloadUrlConnection = (DownloadUrlConnection) downloadConnection;
            int i = 0;
            for (int responseCode = connected.getResponseCode(); RedirectUtil.isRedirect(responseCode); responseCode = downloadUrlConnection.getResponseCode()) {
                downloadUrlConnection.release();
                i++;
                if (i > 10) {
                    throw new ProtocolException("Too many redirect requests: " + i);
                }
                this.f39324a = RedirectUtil.getRedirectedUrl(connected, responseCode);
                downloadUrlConnection.f39318b = new URL(this.f39324a);
                downloadUrlConnection.m31007b();
                Util.addRequestHeaderFields(map, downloadUrlConnection);
                downloadUrlConnection.connection.connect();
            }
        }
    }

    public DownloadUrlConnection(URLConnection uRLConnection) {
        this(uRLConnection, new C6963a());
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public void addHeader(String str, String str2) {
        this.connection.addRequestProperty(str, str2);
    }

    /* renamed from: b */
    public void m31007b() throws IOException {
        Util.m30983d(f39316d, "config connection for " + this.f39318b);
        Configuration configuration = this.f39317a;
        if (configuration == null || configuration.f39320a == null) {
            this.connection = this.f39318b.openConnection();
        } else {
            this.connection = this.f39318b.openConnection(this.f39317a.f39320a);
        }
        URLConnection uRLConnection = this.connection;
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setInstanceFollowRedirects(false);
        }
        Configuration configuration2 = this.f39317a;
        if (configuration2 != null) {
            if (configuration2.f39321b != null) {
                this.connection.setReadTimeout(this.f39317a.f39321b.intValue());
            }
            if (this.f39317a.f39322c != null) {
                this.connection.setConnectTimeout(this.f39317a.f39322c.intValue());
            }
        }
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public DownloadConnection.Connected execute() throws IOException {
        Map<String, List<String>> requestProperties = getRequestProperties();
        this.connection.connect();
        this.f39319c.handleRedirect(this, this, requestProperties);
        return this;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public InputStream getInputStream() throws IOException {
        return this.connection.getInputStream();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public String getRedirectLocation() {
        return this.f39319c.getRedirectLocation();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.connection.getRequestProperties();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public String getRequestProperty(String str) {
        return this.connection.getRequestProperty(str);
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public int getResponseCode() throws IOException {
        URLConnection uRLConnection = this.connection;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public String getResponseHeaderField(String str) {
        return this.connection.getHeaderField(str);
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public Map<String, List<String>> getResponseHeaderFields() {
        return this.connection.getHeaderFields();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public void release() {
        try {
            InputStream inputStream = this.connection.getInputStream();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public boolean setRequestMethod(@NonNull String str) throws ProtocolException {
        URLConnection uRLConnection = this.connection;
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return false;
        }
        ((HttpURLConnection) uRLConnection).setRequestMethod(str);
        return true;
    }

    public DownloadUrlConnection(URLConnection uRLConnection, IRedirectHandler iRedirectHandler) {
        this.connection = uRLConnection;
        this.f39318b = uRLConnection.getURL();
        this.f39319c = iRedirectHandler;
    }

    public DownloadUrlConnection(String str, Configuration configuration) throws IOException {
        this(new URL(str), configuration);
    }

    public DownloadUrlConnection(URL url, Configuration configuration) throws IOException {
        this(url, configuration, new C6963a());
    }

    public DownloadUrlConnection(URL url, Configuration configuration, IRedirectHandler iRedirectHandler) throws IOException {
        this.f39317a = configuration;
        this.f39318b = url;
        this.f39319c = iRedirectHandler;
        m31007b();
    }

    public DownloadUrlConnection(String str) throws IOException {
        this(str, (Configuration) null);
    }
}
