package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.LangUtils;

/* loaded from: classes12.dex */
public final class RouteTracker implements RouteInfo, Cloneable {

    /* renamed from: e */
    public final HttpHost f110293e;

    /* renamed from: f */
    public final InetAddress f110294f;

    /* renamed from: g */
    public boolean f110295g;

    /* renamed from: h */
    public HttpHost[] f110296h;

    /* renamed from: i */
    public RouteInfo.TunnelType f110297i;

    /* renamed from: j */
    public RouteInfo.LayerType f110298j;

    /* renamed from: k */
    public boolean f110299k;

    public RouteTracker(HttpHost httpHost, InetAddress inetAddress) {
        Args.notNull(httpHost, "Target host");
        this.f110293e = httpHost;
        this.f110294f = inetAddress;
        this.f110297i = RouteInfo.TunnelType.PLAIN;
        this.f110298j = RouteInfo.LayerType.PLAIN;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public final void connectProxy(HttpHost httpHost, boolean z) {
        Args.notNull(httpHost, "Proxy host");
        Asserts.check(!this.f110295g, "Already connected");
        this.f110295g = true;
        this.f110296h = new HttpHost[]{httpHost};
        this.f110299k = z;
    }

    public final void connectTarget(boolean z) {
        Asserts.check(!this.f110295g, "Already connected");
        this.f110295g = true;
        this.f110299k = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RouteTracker)) {
            return false;
        }
        RouteTracker routeTracker = (RouteTracker) obj;
        return this.f110295g == routeTracker.f110295g && this.f110299k == routeTracker.f110299k && this.f110297i == routeTracker.f110297i && this.f110298j == routeTracker.f110298j && LangUtils.equals(this.f110293e, routeTracker.f110293e) && LangUtils.equals(this.f110294f, routeTracker.f110294f) && LangUtils.equals((Object[]) this.f110296h, (Object[]) routeTracker.f110296h);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final int getHopCount() {
        if (!this.f110295g) {
            return 0;
        }
        HttpHost[] httpHostArr = this.f110296h;
        if (httpHostArr == null) {
            return 1;
        }
        return 1 + httpHostArr.length;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getHopTarget(int i) {
        Args.notNegative(i, "Hop index");
        int hopCount = getHopCount();
        Args.check(i < hopCount, "Hop index exceeds tracked route length");
        return i < hopCount - 1 ? this.f110296h[i] : this.f110293e;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.LayerType getLayerType() {
        return this.f110298j;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final InetAddress getLocalAddress() {
        return this.f110294f;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getProxyHost() {
        HttpHost[] httpHostArr = this.f110296h;
        if (httpHostArr == null) {
            return null;
        }
        return httpHostArr[0];
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getTargetHost() {
        return this.f110293e;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.TunnelType getTunnelType() {
        return this.f110297i;
    }

    public final int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.f110293e), this.f110294f);
        HttpHost[] httpHostArr = this.f110296h;
        if (httpHostArr != null) {
            for (HttpHost httpHost : httpHostArr) {
                hashCode = LangUtils.hashCode(hashCode, httpHost);
            }
        }
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(hashCode, this.f110295g), this.f110299k), this.f110297i), this.f110298j);
    }

    public final boolean isConnected() {
        return this.f110295g;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isLayered() {
        return this.f110298j == RouteInfo.LayerType.LAYERED;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isSecure() {
        return this.f110299k;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isTunnelled() {
        return this.f110297i == RouteInfo.TunnelType.TUNNELLED;
    }

    public final void layerProtocol(boolean z) {
        Asserts.check(this.f110295g, "No layered protocol unless connected");
        this.f110298j = RouteInfo.LayerType.LAYERED;
        this.f110299k = z;
    }

    public void reset() {
        this.f110295g = false;
        this.f110296h = null;
        this.f110297i = RouteInfo.TunnelType.PLAIN;
        this.f110298j = RouteInfo.LayerType.PLAIN;
        this.f110299k = false;
    }

    public final HttpRoute toRoute() {
        if (this.f110295g) {
            return new HttpRoute(this.f110293e, this.f110294f, this.f110296h, this.f110299k, this.f110297i, this.f110298j);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getHopCount() * 30) + 50);
        sb.append("RouteTracker[");
        InetAddress inetAddress = this.f110294f;
        if (inetAddress != null) {
            sb.append(inetAddress);
            sb.append("->");
        }
        sb.append('{');
        if (this.f110295g) {
            sb.append('c');
        }
        if (this.f110297i == RouteInfo.TunnelType.TUNNELLED) {
            sb.append('t');
        }
        if (this.f110298j == RouteInfo.LayerType.LAYERED) {
            sb.append('l');
        }
        if (this.f110299k) {
            sb.append('s');
        }
        sb.append("}->");
        HttpHost[] httpHostArr = this.f110296h;
        if (httpHostArr != null) {
            for (HttpHost httpHost : httpHostArr) {
                sb.append(httpHost);
                sb.append("->");
            }
        }
        sb.append(this.f110293e);
        sb.append(']');
        return sb.toString();
    }

    public final void tunnelProxy(HttpHost httpHost, boolean z) {
        Args.notNull(httpHost, "Proxy host");
        Asserts.check(this.f110295g, "No tunnel unless connected");
        Asserts.notNull(this.f110296h, "No tunnel without proxy");
        HttpHost[] httpHostArr = this.f110296h;
        int length = httpHostArr.length + 1;
        HttpHost[] httpHostArr2 = new HttpHost[length];
        System.arraycopy(httpHostArr, 0, httpHostArr2, 0, httpHostArr.length);
        httpHostArr2[length - 1] = httpHost;
        this.f110296h = httpHostArr2;
        this.f110299k = z;
    }

    public final void tunnelTarget(boolean z) {
        Asserts.check(this.f110295g, "No tunnel unless connected");
        Asserts.notNull(this.f110296h, "No tunnel without proxy");
        this.f110297i = RouteInfo.TunnelType.TUNNELLED;
        this.f110299k = z;
    }

    public RouteTracker(HttpRoute httpRoute) {
        this(httpRoute.getTargetHost(), httpRoute.getLocalAddress());
    }
}
