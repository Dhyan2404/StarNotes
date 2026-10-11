package com.sunia.HTREnginev2;

import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthState;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.HttpClientParamConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpParamsNames;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public class jpi extends CloseableHttpClient implements Configurable {

    /* renamed from: e */
    public final Log f74564e = LogFactory.getLog(getClass());

    /* renamed from: f */
    public final ClientExecChain f74565f;

    /* renamed from: g */
    public final HttpClientConnectionManager f74566g;

    /* renamed from: h */
    public final HttpRoutePlanner f74567h;

    /* renamed from: i */
    public final Lookup<CookieSpecProvider> f74568i;

    /* renamed from: j */
    public final Lookup<AuthSchemeProvider> f74569j;

    /* renamed from: k */
    public final CookieStore f74570k;

    /* renamed from: l */
    public final CredentialsProvider f74571l;

    /* renamed from: m */
    public final RequestConfig f74572m;

    /* renamed from: n */
    public final List<Closeable> f74573n;

    /* renamed from: com.sunia.HTREnginev2.jpi$a */
    /* loaded from: classes12.dex */
    public class C13945a implements ClientConnectionManager {
        public C13945a() {
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void closeExpiredConnections() {
            jpi.this.f74566g.closeExpiredConnections();
        }

        @Override // org.apache.http.conn.ClientConnectionManager
        public void closeIdleConnections(long j, TimeUnit timeUnit) {
            jpi.this.f74566g.closeIdleConnections(j, timeUnit);
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
            jpi.this.f74566g.shutdown();
        }
    }

    public jpi(ClientExecChain clientExecChain, HttpClientConnectionManager httpClientConnectionManager, HttpRoutePlanner httpRoutePlanner, Lookup<CookieSpecProvider> lookup, Lookup<AuthSchemeProvider> lookup2, CookieStore cookieStore, CredentialsProvider credentialsProvider, RequestConfig requestConfig, List<Closeable> list) {
        Args.notNull(clientExecChain, "HTTP client exec chain");
        Args.notNull(httpClientConnectionManager, "HTTP connection manager");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        this.f74565f = clientExecChain;
        this.f74566g = httpClientConnectionManager;
        this.f74567h = httpRoutePlanner;
        this.f74568i = lookup;
        this.f74569j = lookup2;
        this.f74570k = cookieStore;
        this.f74571l = credentialsProvider;
        this.f74572m = requestConfig;
        this.f74573n = list;
    }

    /* renamed from: H */
    public final void m55015H(HttpClientContext httpClientContext) {
        if (httpClientContext.getAttribute("http.auth.target-scope") == null) {
            httpClientContext.setAttribute("http.auth.target-scope", new AuthState());
        }
        if (httpClientContext.getAttribute("http.auth.proxy-scope") == null) {
            httpClientContext.setAttribute("http.auth.proxy-scope", new AuthState());
        }
        if (httpClientContext.getAttribute("http.authscheme-registry") == null) {
            httpClientContext.setAttribute("http.authscheme-registry", this.f74569j);
        }
        if (httpClientContext.getAttribute("http.cookiespec-registry") == null) {
            httpClientContext.setAttribute("http.cookiespec-registry", this.f74568i);
        }
        if (httpClientContext.getAttribute("http.cookie-store") == null) {
            httpClientContext.setAttribute("http.cookie-store", this.f74570k);
        }
        if (httpClientContext.getAttribute("http.auth.credentials-provider") == null) {
            httpClientContext.setAttribute("http.auth.credentials-provider", this.f74571l);
        }
        if (httpClientContext.getAttribute("http.request-config") == null) {
            httpClientContext.setAttribute("http.request-config", this.f74572m);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        List<Closeable> list = this.f74573n;
        if (list != null) {
            Iterator<Closeable> it2 = list.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().close();
                } catch (IOException e) {
                    this.f74564e.error(e.getMessage(), e);
                }
            }
        }
    }

    @Override // org.apache.http.impl.client.CloseableHttpClient
    public CloseableHttpResponse doExecute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(httpRequest, "HTTP request");
        HttpExecutionAware httpExecutionAware = httpRequest instanceof HttpExecutionAware ? (HttpExecutionAware) httpRequest : null;
        try {
            HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequest, httpHost);
            if (httpContext == null) {
                httpContext = new BasicHttpContext();
            }
            HttpClientContext adapt = HttpClientContext.adapt(httpContext);
            RequestConfig config = httpRequest instanceof Configurable ? ((Configurable) httpRequest).getConfig() : null;
            if (config == null) {
                HttpParams params = httpRequest.getParams();
                if (!(params instanceof HttpParamsNames)) {
                    config = HttpClientParamConfig.getRequestConfig(params, this.f74572m);
                } else if (!((HttpParamsNames) params).getNames().isEmpty()) {
                    config = HttpClientParamConfig.getRequestConfig(params, this.f74572m);
                }
            }
            if (config != null) {
                adapt.setRequestConfig(config);
            }
            m55015H(adapt);
            return this.f74565f.execute(m55016w(httpHost, wrap, adapt), wrap, adapt, httpExecutionAware);
        } catch (HttpException e) {
            throw new ClientProtocolException(e);
        }
    }

    @Override // org.apache.http.client.methods.Configurable
    public RequestConfig getConfig() {
        return this.f74572m;
    }

    @Override // org.apache.http.client.HttpClient
    public ClientConnectionManager getConnectionManager() {
        return new C13945a();
    }

    @Override // org.apache.http.client.HttpClient
    public HttpParams getParams() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: w */
    public final HttpRoute m55016w(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        if (httpHost == null) {
            httpHost = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HOST);
        }
        return this.f74567h.determineRoute(httpHost, httpRequest, httpContext);
    }
}
