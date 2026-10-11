package org.apache.http.impl.client;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.params.HttpClientParamConfig;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.auth.BasicSchemeFactory;
import org.apache.http.impl.auth.DigestSchemeFactory;
import org.apache.http.impl.auth.KerberosSchemeFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.auth.SPNegoSchemeFactory;
import org.apache.http.impl.conn.ManagedHttpClientConnectionFactory;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

/* loaded from: classes12.dex */
public class ProxyClient {

    /* renamed from: a */
    public final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> f110668a;

    /* renamed from: b */
    public final ConnectionConfig f110669b;

    /* renamed from: c */
    public final RequestConfig f110670c;

    /* renamed from: d */
    public final HttpProcessor f110671d;

    /* renamed from: e */
    public final HttpRequestExecutor f110672e;

    /* renamed from: f */
    public final ProxyAuthenticationStrategy f110673f;

    /* renamed from: g */
    public final org.apache.http.impl.auth.HttpAuthenticator f110674g;

    /* renamed from: h */
    public final AuthState f110675h;

    /* renamed from: i */
    public final AuthSchemeRegistry f110676i;

    /* renamed from: j */
    public final ConnectionReuseStrategy f110677j;

    public ProxyClient(HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, ConnectionConfig connectionConfig, RequestConfig requestConfig) {
        this.f110668a = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        this.f110669b = connectionConfig == null ? ConnectionConfig.DEFAULT : connectionConfig;
        this.f110670c = requestConfig == null ? RequestConfig.DEFAULT : requestConfig;
        this.f110671d = new ImmutableHttpProcessor(new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent());
        this.f110672e = new HttpRequestExecutor();
        this.f110673f = new ProxyAuthenticationStrategy();
        this.f110674g = new org.apache.http.impl.auth.HttpAuthenticator();
        this.f110675h = new AuthState();
        AuthSchemeRegistry authSchemeRegistry = new AuthSchemeRegistry();
        this.f110676i = authSchemeRegistry;
        authSchemeRegistry.register("Basic", new BasicSchemeFactory());
        authSchemeRegistry.register("Digest", new DigestSchemeFactory());
        authSchemeRegistry.register("NTLM", new NTLMSchemeFactory());
        authSchemeRegistry.register("Negotiate", new SPNegoSchemeFactory());
        authSchemeRegistry.register("Kerberos", new KerberosSchemeFactory());
        this.f110677j = new DefaultConnectionReuseStrategy();
    }

    @Deprecated
    public AuthSchemeRegistry getAuthSchemeRegistry() {
        return this.f110676i;
    }

    @Deprecated
    public HttpParams getParams() {
        return new BasicHttpParams();
    }

    public Socket tunnel(HttpHost httpHost, HttpHost httpHost2, Credentials credentials) throws IOException, HttpException {
        HttpResponse execute;
        Args.notNull(httpHost, "Proxy host");
        Args.notNull(httpHost2, "Target host");
        Args.notNull(credentials, "Credentials");
        HttpHost httpHost3 = httpHost2.getPort() <= 0 ? new HttpHost(httpHost2.getHostName(), 80, httpHost2.getSchemeName()) : httpHost2;
        HttpRoute httpRoute = new HttpRoute(httpHost3, this.f110670c.getLocalAddress(), httpHost, false, RouteInfo.TunnelType.TUNNELLED, RouteInfo.LayerType.PLAIN);
        ManagedHttpClientConnection create = this.f110668a.create(httpRoute, this.f110669b);
        HttpContext basicHttpContext = new BasicHttpContext();
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", httpHost3.toHostString(), HttpVersion.HTTP_1_1);
        BasicCredentialsProvider basicCredentialsProvider = new BasicCredentialsProvider();
        basicCredentialsProvider.setCredentials(new AuthScope(httpHost), credentials);
        basicHttpContext.setAttribute("http.target_host", httpHost2);
        basicHttpContext.setAttribute("http.connection", create);
        basicHttpContext.setAttribute("http.request", basicHttpRequest);
        basicHttpContext.setAttribute("http.route", httpRoute);
        basicHttpContext.setAttribute("http.auth.proxy-scope", this.f110675h);
        basicHttpContext.setAttribute("http.auth.credentials-provider", basicCredentialsProvider);
        basicHttpContext.setAttribute("http.authscheme-registry", this.f110676i);
        basicHttpContext.setAttribute("http.request-config", this.f110670c);
        this.f110672e.preProcess(basicHttpRequest, this.f110671d, basicHttpContext);
        while (true) {
            if (!create.isOpen()) {
                create.bind(new Socket(httpHost.getHostName(), httpHost.getPort()));
            }
            this.f110674g.generateAuthResponse(basicHttpRequest, this.f110675h, basicHttpContext);
            execute = this.f110672e.execute(basicHttpRequest, create, basicHttpContext);
            if (execute.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + execute.getStatusLine());
            }
            if (!this.f110674g.isAuthenticationRequested(httpHost, execute, this.f110673f, this.f110675h, basicHttpContext) || !this.f110674g.handleAuthChallenge(httpHost, execute, this.f110673f, this.f110675h, basicHttpContext)) {
                break;
            }
            if (this.f110677j.keepAlive(execute, basicHttpContext)) {
                EntityUtils.consume(execute.getEntity());
            } else {
                create.close();
            }
            basicHttpRequest.removeHeaders("Proxy-Authorization");
        }
        if (execute.getStatusLine().getStatusCode() <= 299) {
            return create.getSocket();
        }
        HttpEntity entity = execute.getEntity();
        if (entity != null) {
            execute.setEntity(new BufferedHttpEntity(entity));
        }
        create.close();
        throw new org.apache.http.impl.execchain.TunnelRefusedException("CONNECT refused by proxy: " + execute.getStatusLine(), execute);
    }

    @Deprecated
    public ProxyClient(HttpParams httpParams) {
        this(null, HttpParamConfig.getConnectionConfig(httpParams), HttpClientParamConfig.getRequestConfig(httpParams));
    }

    public ProxyClient(RequestConfig requestConfig) {
        this(null, null, requestConfig);
    }

    public ProxyClient() {
        this(null, null, null);
    }
}
