package org.apache.http.conn.params;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
@Deprecated
/* loaded from: classes12.dex */
public final class ConnPerRouteBean implements ConnPerRoute {
    public static final int DEFAULT_MAX_CONNECTIONS_PER_ROUTE = 2;

    /* renamed from: a */
    public final ConcurrentHashMap<HttpRoute, Integer> f110285a;

    /* renamed from: b */
    public volatile int f110286b;

    public ConnPerRouteBean(int i) {
        this.f110285a = new ConcurrentHashMap<>();
        setDefaultMaxPerRoute(i);
    }

    public int getDefaultMax() {
        return this.f110286b;
    }

    public int getDefaultMaxPerRoute() {
        return this.f110286b;
    }

    @Override // org.apache.http.conn.params.ConnPerRoute
    public int getMaxForRoute(HttpRoute httpRoute) {
        Args.notNull(httpRoute, "HTTP route");
        Integer num = this.f110285a.get(httpRoute);
        return num != null ? num.intValue() : this.f110286b;
    }

    public void setDefaultMaxPerRoute(int i) {
        Args.positive(i, "Default max per route");
        this.f110286b = i;
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i) {
        Args.notNull(httpRoute, "HTTP route");
        Args.positive(i, "Max per route");
        this.f110285a.put(httpRoute, Integer.valueOf(i));
    }

    public void setMaxForRoutes(Map<HttpRoute, Integer> map) {
        if (map == null) {
            return;
        }
        this.f110285a.clear();
        this.f110285a.putAll(map);
    }

    public String toString() {
        return this.f110285a.toString();
    }

    public ConnPerRouteBean() {
        this(2);
    }
}
