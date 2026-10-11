package org.apache.http.conn.routing;

import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public final class HttpRoute implements RouteInfo, Cloneable {

    /* renamed from: e */
    public final HttpHost f110287e;

    /* renamed from: f */
    public final InetAddress f110288f;

    /* renamed from: g */
    public final List<HttpHost> f110289g;

    /* renamed from: h */
    public final RouteInfo.TunnelType f110290h;

    /* renamed from: i */
    public final RouteInfo.LayerType f110291i;

    /* renamed from: j */
    public final boolean f110292j;

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, List<HttpHost> list, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        Args.notNull(httpHost, "Target host");
        this.f110287e = m68331b(httpHost);
        this.f110288f = inetAddress;
        if (list != null && !list.isEmpty()) {
            this.f110289g = new ArrayList(list);
        } else {
            this.f110289g = null;
        }
        if (tunnelType == RouteInfo.TunnelType.TUNNELLED) {
            Args.check(this.f110289g != null, "Proxy required if tunnelled");
        }
        this.f110292j = z;
        this.f110290h = tunnelType == null ? RouteInfo.TunnelType.PLAIN : tunnelType;
        this.f110291i = layerType == null ? RouteInfo.LayerType.PLAIN : layerType;
    }

    /* renamed from: a */
    public static int m68330a(String str) {
        if ("http".equalsIgnoreCase(str)) {
            return 80;
        }
        if ("https".equalsIgnoreCase(str)) {
            return PsExtractor.f24604m;
        }
        return -1;
    }

    /* renamed from: b */
    public static HttpHost m68331b(HttpHost httpHost) {
        if (httpHost.getPort() >= 0) {
            return httpHost;
        }
        InetAddress address = httpHost.getAddress();
        String schemeName = httpHost.getSchemeName();
        return address != null ? new HttpHost(address, m68330a(schemeName), schemeName) : new HttpHost(httpHost.getHostName(), m68330a(schemeName), schemeName);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpRoute)) {
            return false;
        }
        HttpRoute httpRoute = (HttpRoute) obj;
        return this.f110292j == httpRoute.f110292j && this.f110290h == httpRoute.f110290h && this.f110291i == httpRoute.f110291i && LangUtils.equals(this.f110287e, httpRoute.f110287e) && LangUtils.equals(this.f110288f, httpRoute.f110288f) && LangUtils.equals(this.f110289g, httpRoute.f110289g);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final int getHopCount() {
        List<HttpHost> list = this.f110289g;
        if (list != null) {
            return 1 + list.size();
        }
        return 1;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getHopTarget(int i) {
        Args.notNegative(i, "Hop index");
        int hopCount = getHopCount();
        Args.check(i < hopCount, "Hop index exceeds tracked route length");
        return i < hopCount - 1 ? this.f110289g.get(i) : this.f110287e;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.LayerType getLayerType() {
        return this.f110291i;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final InetAddress getLocalAddress() {
        return this.f110288f;
    }

    public final InetSocketAddress getLocalSocketAddress() {
        if (this.f110288f != null) {
            return new InetSocketAddress(this.f110288f, 0);
        }
        return null;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getProxyHost() {
        List<HttpHost> list = this.f110289g;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.f110289g.get(0);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getTargetHost() {
        return this.f110287e;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.TunnelType getTunnelType() {
        return this.f110290h;
    }

    public final int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.f110287e), this.f110288f);
        List<HttpHost> list = this.f110289g;
        if (list != null) {
            Iterator<HttpHost> it2 = list.iterator();
            while (it2.hasNext()) {
                hashCode = LangUtils.hashCode(hashCode, it2.next());
            }
        }
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(hashCode, this.f110292j), this.f110290h), this.f110291i);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isLayered() {
        return this.f110291i == RouteInfo.LayerType.LAYERED;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isSecure() {
        return this.f110292j;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isTunnelled() {
        return this.f110290h == RouteInfo.TunnelType.TUNNELLED;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getHopCount() * 30) + 50);
        InetAddress inetAddress = this.f110288f;
        if (inetAddress != null) {
            sb.append(inetAddress);
            sb.append("->");
        }
        sb.append('{');
        if (this.f110290h == RouteInfo.TunnelType.TUNNELLED) {
            sb.append('t');
        }
        if (this.f110291i == RouteInfo.LayerType.LAYERED) {
            sb.append('l');
        }
        if (this.f110292j) {
            sb.append('s');
        }
        sb.append("}->");
        List<HttpHost> list = this.f110289g;
        if (list != null) {
            Iterator<HttpHost> it2 = list.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next());
                sb.append("->");
            }
        }
        sb.append(this.f110287e);
        return sb.toString();
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost[] httpHostArr, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(httpHost, inetAddress, (List<HttpHost>) (httpHostArr != null ? Arrays.asList(httpHostArr) : null), z, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(httpHost, inetAddress, (List<HttpHost>) (httpHost2 != null ? Collections.singletonList(httpHost2) : null), z, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, boolean z) {
        this(httpHost, inetAddress, (List<HttpHost>) Collections.emptyList(), z, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost) {
        this(httpHost, (InetAddress) null, (List<HttpHost>) Collections.emptyList(), false, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z) {
        this(httpHost, inetAddress, (List<HttpHost>) Collections.singletonList(Args.notNull(httpHost2, "Proxy host")), z, z ? RouteInfo.TunnelType.TUNNELLED : RouteInfo.TunnelType.PLAIN, z ? RouteInfo.LayerType.LAYERED : RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost, HttpHost httpHost2) {
        this(httpHost, null, httpHost2, false);
    }
}
