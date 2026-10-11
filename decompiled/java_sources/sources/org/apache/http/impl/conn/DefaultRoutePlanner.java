package org.apache.http.impl.conn;

import com.bumptech.glide.request.SingleRequest;
import java.net.InetAddress;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class DefaultRoutePlanner implements HttpRoutePlanner {

    /* renamed from: a */
    public final SchemePortResolver f110755a;

    public DefaultRoutePlanner(SchemePortResolver schemePortResolver) {
        this.f110755a = schemePortResolver == null ? DefaultSchemePortResolver.INSTANCE : schemePortResolver;
    }

    public HttpHost determineProxy(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        return null;
    }

    @Override // org.apache.http.conn.routing.HttpRoutePlanner
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        Args.notNull(httpRequest, SingleRequest.f15334D);
        if (httpHost == null) {
            throw new ProtocolException("Target host is not specified");
        }
        RequestConfig requestConfig = HttpClientContext.adapt(httpContext).getRequestConfig();
        InetAddress localAddress = requestConfig.getLocalAddress();
        HttpHost proxy = requestConfig.getProxy();
        if (proxy == null) {
            proxy = determineProxy(httpHost, httpRequest, httpContext);
        }
        if (httpHost.getPort() <= 0) {
            try {
                httpHost = new HttpHost(httpHost.getHostName(), this.f110755a.resolve(httpHost), httpHost.getSchemeName());
            } catch (UnsupportedSchemeException e) {
                throw new HttpException(e.getMessage());
            }
        }
        boolean equalsIgnoreCase = httpHost.getSchemeName().equalsIgnoreCase("https");
        return proxy == null ? new HttpRoute(httpHost, localAddress, equalsIgnoreCase) : new HttpRoute(httpHost, localAddress, proxy, equalsIgnoreCase);
    }
}
