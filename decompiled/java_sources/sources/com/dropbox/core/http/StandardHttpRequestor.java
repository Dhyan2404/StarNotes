package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.ProgressOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes4.dex */
public class StandardHttpRequestor extends HttpRequestor {

    /* renamed from: a */
    public final Config f16578a;

    /* renamed from: b */
    public static final Logger f16576b = Logger.getLogger(StandardHttpRequestor.class.getCanonicalName());
    public static final StandardHttpRequestor INSTANCE = new StandardHttpRequestor(Config.DEFAULT_INSTANCE);

    /* renamed from: c */
    public static volatile boolean f16577c = false;

    /* loaded from: classes4.dex */
    public static final class Config {
        public static final Config DEFAULT_INSTANCE = builder().build();

        /* renamed from: a */
        public final Proxy f16579a;

        /* renamed from: b */
        public final long f16580b;

        /* renamed from: c */
        public final long f16581c;

        public static Builder builder() {
            return new Builder();
        }

        public Builder copy() {
            return new Builder(this.f16579a, this.f16580b, this.f16581c);
        }

        public long getConnectTimeoutMillis() {
            return this.f16580b;
        }

        public Proxy getProxy() {
            return this.f16579a;
        }

        public long getReadTimeoutMillis() {
            return this.f16581c;
        }

        /* loaded from: classes4.dex */
        public static final class Builder {

            /* renamed from: a */
            public Proxy f16582a;

            /* renamed from: b */
            public long f16583b;

            /* renamed from: c */
            public long f16584c;

            /* renamed from: a */
            public static long m10071a(long j, TimeUnit timeUnit) {
                if (timeUnit == null) {
                    throw new NullPointerException("unit");
                }
                if (j < 0) {
                    throw new IllegalArgumentException("timeout must be non-negative");
                }
                long millis = timeUnit.toMillis(j);
                if (2147483647L >= millis) {
                    return millis;
                }
                throw new IllegalArgumentException("timeout too large, must be less than: 2147483647");
            }

            public Config build() {
                return new Config(this.f16582a, this.f16583b, this.f16584c);
            }

            public Builder withConnectTimeout(long j, TimeUnit timeUnit) {
                this.f16583b = m10071a(j, timeUnit);
                return this;
            }

            public Builder withNoConnectTimeout() {
                return withConnectTimeout(0L, TimeUnit.MILLISECONDS);
            }

            public Builder withNoReadTimeout() {
                return withReadTimeout(0L, TimeUnit.MILLISECONDS);
            }

            public Builder withProxy(Proxy proxy) {
                if (proxy == null) {
                    throw new NullPointerException("proxy");
                }
                this.f16582a = proxy;
                return this;
            }

            public Builder withReadTimeout(long j, TimeUnit timeUnit) {
                this.f16584c = m10071a(j, timeUnit);
                return this;
            }

            public Builder() {
                this(Proxy.NO_PROXY, HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS, HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS);
            }

            public Builder(Proxy proxy, long j, long j2) {
                this.f16582a = proxy;
                this.f16583b = j;
                this.f16584c = j2;
            }
        }

        public Config(Proxy proxy, long j, long j2) {
            this.f16579a = proxy;
            this.f16580b = j;
            this.f16581c = j2;
        }
    }

    /* renamed from: com.dropbox.core.http.StandardHttpRequestor$b */
    /* loaded from: classes4.dex */
    public class C2276b extends HttpRequestor.Uploader {

        /* renamed from: a */
        public final ProgressOutputStream f16585a;

        /* renamed from: b */
        public HttpURLConnection f16586b;

        public C2276b(HttpURLConnection httpURLConnection) throws IOException {
            this.f16586b = httpURLConnection;
            this.f16585a = new ProgressOutputStream(StandardHttpRequestor.m10067c(httpURLConnection));
            httpURLConnection.connect();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            HttpURLConnection httpURLConnection = this.f16586b;
            if (httpURLConnection == null) {
                throw new IllegalStateException("Can't abort().  Uploader already closed.");
            }
            httpURLConnection.disconnect();
            this.f16586b = null;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            HttpURLConnection httpURLConnection = this.f16586b;
            if (httpURLConnection == null) {
                return;
            }
            if (httpURLConnection.getDoOutput()) {
                try {
                    IOUtil.closeQuietly(this.f16586b.getOutputStream());
                } catch (IOException unused) {
                }
            }
            this.f16586b = null;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            HttpURLConnection httpURLConnection = this.f16586b;
            if (httpURLConnection == null) {
                throw new IllegalStateException("Can't finish().  Uploader already closed.");
            }
            try {
                return StandardHttpRequestor.this.m10070f(httpURLConnection);
            } finally {
                this.f16586b = null;
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            return this.f16585a;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void setProgressListener(IOUtil.ProgressListener progressListener) {
            this.f16585a.setListener(progressListener);
        }
    }

    public StandardHttpRequestor(Config config) {
        this.f16578a = config;
    }

    /* renamed from: c */
    public static OutputStream m10067c(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.setDoOutput(true);
        return httpURLConnection.getOutputStream();
    }

    /* renamed from: d */
    public static void m10068d() {
        if (f16577c) {
            return;
        }
        f16577c = true;
        f16576b.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
    }

    public void configure(HttpURLConnection httpURLConnection) throws IOException {
    }

    @Deprecated
    public void configureConnection(HttpsURLConnection httpsURLConnection) throws IOException {
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection m10069e = m10069e(str, iterable, false);
        m10069e.setRequestMethod("GET");
        m10069e.connect();
        return m10070f(m10069e);
    }

    /* renamed from: e */
    public final HttpURLConnection m10069e(String str, Iterable<HttpRequestor.Header> iterable, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.f16578a.getProxy());
        httpURLConnection.setConnectTimeout((int) this.f16578a.getConnectTimeoutMillis());
        httpURLConnection.setReadTimeout((int) this.f16578a.getReadTimeoutMillis());
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        if (z) {
            httpURLConnection.setChunkedStreamingMode(16384);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            SSLConfig.apply(httpsURLConnection);
            configureConnection(httpsURLConnection);
        } else {
            m10068d();
        }
        configure(httpURLConnection);
        for (HttpRequestor.Header header : iterable) {
            httpURLConnection.addRequestProperty(header.getKey(), header.getValue());
        }
        return httpURLConnection;
    }

    /* renamed from: f */
    public final HttpRequestor.Response m10070f(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = (responseCode >= 400 || responseCode == -1) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
        interceptResponse(httpURLConnection);
        return new HttpRequestor.Response(responseCode, errorStream, httpURLConnection.getHeaderFields());
    }

    public void interceptResponse(HttpURLConnection httpURLConnection) throws IOException {
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public /* bridge */ /* synthetic */ HttpRequestor.Uploader startPost(String str, Iterable iterable) throws IOException {
        return startPost(str, (Iterable<HttpRequestor.Header>) iterable);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public /* bridge */ /* synthetic */ HttpRequestor.Uploader startPostInStreamingMode(String str, Iterable iterable) throws IOException {
        return startPostInStreamingMode(str, (Iterable<HttpRequestor.Header>) iterable);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public /* bridge */ /* synthetic */ HttpRequestor.Uploader startPut(String str, Iterable iterable) throws IOException {
        return startPut(str, (Iterable<HttpRequestor.Header>) iterable);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public C2276b startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection m10069e = m10069e(str, iterable, false);
        m10069e.setRequestMethod("POST");
        return new C2276b(m10069e);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public C2276b startPostInStreamingMode(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection m10069e = m10069e(str, iterable, true);
        m10069e.setRequestMethod("POST");
        return new C2276b(m10069e);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public C2276b startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection m10069e = m10069e(str, iterable, false);
        m10069e.setRequestMethod("PUT");
        return new C2276b(m10069e);
    }
}
