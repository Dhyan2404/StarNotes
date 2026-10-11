package org.apache.http.impl.execchain;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class MainClientExec implements ClientExecChain {

    /* renamed from: a */
    public final Log f110911a;

    /* renamed from: b */
    public final HttpRequestExecutor f110912b;

    /* renamed from: c */
    public final HttpClientConnectionManager f110913c;

    /* renamed from: d */
    public final ConnectionReuseStrategy f110914d;

    /* renamed from: e */
    public final ConnectionKeepAliveStrategy f110915e;

    /* renamed from: f */
    public final HttpProcessor f110916f;

    /* renamed from: g */
    public final AuthenticationStrategy f110917g;

    /* renamed from: h */
    public final AuthenticationStrategy f110918h;

    /* renamed from: i */
    public final HttpAuthenticator f110919i;

    /* renamed from: j */
    public final UserTokenHandler f110920j;

    /* renamed from: k */
    public final HttpRouteDirector f110921k;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpProcessor httpProcessor, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this.f110911a = LogFactory.getLog(getClass());
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(httpProcessor, "Proxy HTTP processor");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.f110919i = new HttpAuthenticator();
        this.f110921k = new BasicRouteDirector();
        this.f110912b = httpRequestExecutor;
        this.f110913c = httpClientConnectionManager;
        this.f110914d = connectionReuseStrategy;
        this.f110915e = connectionKeepAliveStrategy;
        this.f110916f = httpProcessor;
        this.f110917g = authenticationStrategy;
        this.f110918h = authenticationStrategy2;
        this.f110920j = userTokenHandler;
    }

    /* renamed from: a */
    public final boolean m68563a(HttpRoute httpRoute, int i, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
    
        if (r16.f110914d.keepAlive(r7, r21) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
    
        r18.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
    
        r16.f110911a.debug("Connection kept alive");
        org.apache.http.util.EntityUtils.consume(r7.getEntity());
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m68564b(org.apache.http.auth.AuthState r17, org.apache.http.HttpClientConnection r18, org.apache.http.conn.routing.HttpRoute r19, org.apache.http.HttpRequest r20, org.apache.http.client.protocol.HttpClientContext r21) throws org.apache.http.HttpException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.m68564b(org.apache.http.auth.AuthState, org.apache.http.HttpClientConnection, org.apache.http.conn.routing.HttpRoute, org.apache.http.HttpRequest, org.apache.http.client.protocol.HttpClientContext):boolean");
    }

    /* renamed from: c */
    public void m68565c(AuthState authState, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int nextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            nextStep = this.f110921k.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.f110913c.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.f110913c.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.f110913c.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), httpRoute.isSecure() && !httpRoute.isTunnelled());
                    break;
                case 3:
                    boolean m68564b = m68564b(authState, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    this.f110911a.debug("Tunnel to target created.");
                    routeTracker.tunnelTarget(m68564b);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean m68563a = m68563a(httpRoute, hopCount, httpClientContext);
                    this.f110911a.debug("Tunnel to proxy created.");
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), m68563a);
                    break;
                case 5:
                    this.f110913c.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* renamed from: d */
    public final boolean m68566d(AuthState authState, AuthState authState2, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (!httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            return false;
        }
        HttpHost targetHost = httpClientContext.getTargetHost();
        if (targetHost == null) {
            targetHost = httpRoute.getTargetHost();
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        boolean isAuthenticationRequested = this.f110919i.isAuthenticationRequested(targetHost, httpResponse, this.f110917g, authState, httpClientContext);
        HttpHost proxyHost = httpRoute.getProxyHost();
        if (proxyHost == null) {
            proxyHost = httpRoute.getTargetHost();
        }
        boolean isAuthenticationRequested2 = this.f110919i.isAuthenticationRequested(proxyHost, httpResponse, this.f110918h, authState2, httpClientContext);
        if (isAuthenticationRequested) {
            return this.f110919i.handleAuthChallenge(targetHost, httpResponse, this.f110917g, authState, httpClientContext);
        }
        if (!isAuthenticationRequested2) {
            return false;
        }
        return this.f110919i.handleAuthChallenge(proxyHost, httpResponse, this.f110918h, authState2, httpClientContext);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:52|53|(1:55)|(3:60|61|62)|63|(1:65)|66|(3:68|(1:70)|71)|72|(4:(3:185|186|(13:188|(1:190)|191|192|193|194|75|76|(7:150|151|(3:153|(1:155)(1:171)|156)(1:172)|157|158|159|160)(3:78|79|80)|81|82|83|(7:85|(1:87)(4:97|(1:101)|102|(1:106))|88|(1:90)|91|(2:93|94)(1:96)|95)(2:107|108)))|82|83|(0)(0))|74|75|76|(0)(0)|81) */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0375, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0376, code lost:
    
        r22 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x037e, code lost:
    
        r11 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0371, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0372, code lost:
    
        r22 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x037a, code lost:
    
        r11 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00eb, code lost:
    
        if (r28.isAborted() != false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f3, code lost:
    
        throw new org.apache.http.impl.execchain.RequestAbortedException(r5);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x032d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:144:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0242 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c7 A[Catch: Error -> 0x00b7, ConnectionShutdownException -> 0x00ce, RuntimeException -> 0x033d, IOException -> 0x033f, HttpException -> 0x0342, TryCatch #0 {HttpException -> 0x0342, blocks: (B:160:0x0291, B:83:0x02c1, B:85:0x02c7, B:87:0x02d1, B:88:0x0306, B:90:0x0310, B:91:0x0313, B:93:0x0319, B:95:0x031c, B:97:0x02d5, B:99:0x02e0, B:101:0x02e6, B:102:0x02f0, B:104:0x02f6, B:106:0x02fc, B:110:0x0331, B:112:0x0349, B:113:0x034c, B:115:0x0352, B:118:0x0359, B:120:0x035f, B:80:0x02b0), top: B:159:0x0291 }] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r25, org.apache.http.client.methods.HttpRequestWrapper r26, org.apache.http.client.protocol.HttpClientContext r27, org.apache.http.client.methods.HttpExecutionAware r28) throws java.io.IOException, org.apache.http.HttpException {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this(httpRequestExecutor, httpClientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, new ImmutableHttpProcessor(new RequestTargetHost()), authenticationStrategy, authenticationStrategy2, userTokenHandler);
    }
}
