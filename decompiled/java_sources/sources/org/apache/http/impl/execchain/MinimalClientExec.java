package org.apache.http.impl.execchain;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpHost;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.Args;
import org.apache.http.util.VersionInfo;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class MinimalClientExec implements ClientExecChain {

    /* renamed from: a */
    public final Log f110922a = LogFactory.getLog(getClass());

    /* renamed from: b */
    public final HttpRequestExecutor f110923b;

    /* renamed from: c */
    public final HttpClientConnectionManager f110924c;

    /* renamed from: d */
    public final ConnectionReuseStrategy f110925d;

    /* renamed from: e */
    public final ConnectionKeepAliveStrategy f110926e;

    /* renamed from: f */
    public final HttpProcessor f110927f;

    public MinimalClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        this.f110927f = new ImmutableHttpProcessor(new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent(VersionInfo.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass())));
        this.f110923b = httpRequestExecutor;
        this.f110924c = httpClientConnectionManager;
        this.f110925d = connectionReuseStrategy;
        this.f110926e = connectionKeepAliveStrategy;
    }

    /* renamed from: a */
    public static void m68567a(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute, boolean z) throws ProtocolException {
        URI rewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (uri.isAbsolute()) {
                    rewriteURI = URIUtils.rewriteURI(uri, (HttpHost) null, z ? URIUtils.DROP_FRAGMENT_AND_NORMALIZE : URIUtils.DROP_FRAGMENT);
                } else {
                    rewriteURI = URIUtils.rewriteURI(uri);
                }
                httpRequestWrapper.setURI(rewriteURI);
            }
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4 A[Catch: Error -> 0x0110, RuntimeException -> 0x0117, IOException -> 0x011c, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, TryCatch #3 {IOException -> 0x011c, Error -> 0x0110, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, RuntimeException -> 0x0117, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0061, B:53:0x0069, B:17:0x006a, B:19:0x0070, B:22:0x007a, B:24:0x0082, B:26:0x0088, B:27:0x008b, B:29:0x0093, B:31:0x009f, B:33:0x00b4, B:34:0x00b8, B:36:0x00e4, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:44:0x0107, B:46:0x00f1), top: B:48:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e4 A[Catch: Error -> 0x0110, RuntimeException -> 0x0117, IOException -> 0x011c, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, TryCatch #3 {IOException -> 0x011c, Error -> 0x0110, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, RuntimeException -> 0x0117, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0061, B:53:0x0069, B:17:0x006a, B:19:0x0070, B:22:0x007a, B:24:0x0082, B:26:0x0088, B:27:0x008b, B:29:0x0093, B:31:0x009f, B:33:0x00b4, B:34:0x00b8, B:36:0x00e4, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:44:0x0107, B:46:0x00f1), top: B:48:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f1 A[Catch: Error -> 0x0110, RuntimeException -> 0x0117, IOException -> 0x011c, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, TryCatch #3 {IOException -> 0x011c, Error -> 0x0110, HttpException -> 0x0121, ConnectionShutdownException -> 0x0126, RuntimeException -> 0x0117, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0061, B:53:0x0069, B:17:0x006a, B:19:0x0070, B:22:0x007a, B:24:0x0082, B:26:0x0088, B:27:0x008b, B:29:0x0093, B:31:0x009f, B:33:0x00b4, B:34:0x00b8, B:36:0x00e4, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:44:0x0107, B:46:0x00f1), top: B:48:0x0057 }] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r9, org.apache.http.client.methods.HttpRequestWrapper r10, org.apache.http.client.protocol.HttpClientContext r11, org.apache.http.client.methods.HttpExecutionAware r12) throws java.io.IOException, org.apache.http.HttpException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MinimalClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }
}
