package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.impl.execchain.MinimalClientExec;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public class wnj extends CloseableHttpClient {

    /* renamed from: e */
    public final HttpClientConnectionManager f88800e;

    /* renamed from: f */
    public final MinimalClientExec f88801f;

    /* renamed from: g */
    public final HttpParams f88802g = new BasicHttpParams();

    /* renamed from: com.sunia.HTREnginev2.wnj$a */
    /* loaded from: classes12.dex */
    public class C14613a implements ClientConnectionManager {
        public C14613a() {
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void closeExpiredConnections() {
            wnj.this.f88800e.closeExpiredConnections();
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void closeIdleConnections(long j, TimeUnit timeUnit) {
            wnj.this.f88800e.closeIdleConnections(j, timeUnit);
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public SchemeRegistry getSchemeRegistry() {
            throw new UnsupportedOperationException();
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
            throw new UnsupportedOperationException();
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void shutdown() {
            wnj.this.f88800e.shutdown();
        }
    }

    public wnj(HttpClientConnectionManager httpClientConnectionManager) {
        this.f88800e = (HttpClientConnectionManager) Args.notNull(httpClientConnectionManager, "HTTP connection manager");
        this.f88801f = new MinimalClientExec(new HttpRequestExecutor(), httpClientConnectionManager, DefaultConnectionReuseStrategy.INSTANCE, DefaultConnectionKeepAliveStrategy.INSTANCE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f88800e.shutdown();
    }

    @Override // org.apache.http.impl.client.CloseableHttpClient
    public CloseableHttpResponse doExecute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(httpHost, "Target host");
        Args.notNull(httpRequest, "HTTP request");
        HttpExecutionAware httpExecutionAware = httpRequest instanceof HttpExecutionAware ? (HttpExecutionAware) httpRequest : null;
        try {
            HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequest);
            if (httpContext == null) {
                httpContext = new BasicHttpContext();
            }
            HttpClientContext adapt = HttpClientContext.adapt(httpContext);
            HttpRoute httpRoute = new HttpRoute(httpHost);
            RequestConfig config = httpRequest instanceof Configurable ? ((Configurable) httpRequest).getConfig() : null;
            if (config != null) {
                adapt.setRequestConfig(config);
            }
            return this.f88801f.execute(httpRoute, wrap, adapt, httpExecutionAware);
        } catch (HttpException e) {
            throw new ClientProtocolException(e);
        }
    }

    @Override // org.apache.http.client.HttpClient
    public ClientConnectionManager getConnectionManager() {
        return new C14613a();
    }

    @Override // org.apache.http.client.HttpClient
    public HttpParams getParams() {
        return this.f88802g;
    }
}
