package org.apache.http.impl.client;

import com.sunia.HTREnginev2.avd;
import com.sunia.HTREnginev2.p6n;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.BackoffManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class AIMDBackoffManager implements BackoffManager {

    /* renamed from: a */
    public final ConnPoolControl<HttpRoute> f110552a;

    /* renamed from: b */
    public final avd f110553b;

    /* renamed from: c */
    public final Map<HttpRoute, Long> f110554c;

    /* renamed from: d */
    public final Map<HttpRoute, Long> f110555d;

    /* renamed from: e */
    public long f110556e;

    /* renamed from: f */
    public double f110557f;

    /* renamed from: g */
    public int f110558g;

    public AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl) {
        this(connPoolControl, new p6n());
    }

    /* renamed from: a */
    public final int m68475a(int i) {
        if (i <= 1) {
            return 1;
        }
        return (int) Math.floor(this.f110557f * i);
    }

    /* renamed from: b */
    public final Long m68476b(Map<HttpRoute, Long> map, HttpRoute httpRoute) {
        Long l = map.get(httpRoute);
        if (l == null) {
            return 0L;
        }
        return l;
    }

    @Override // org.apache.http.client.BackoffManager
    public void backOff(HttpRoute httpRoute) {
        synchronized (this.f110552a) {
            int maxPerRoute = this.f110552a.getMaxPerRoute(httpRoute);
            Long m68476b = m68476b(this.f110555d, httpRoute);
            long currentTime = this.f110553b.getCurrentTime();
            if (currentTime - m68476b.longValue() < this.f110556e) {
                return;
            }
            this.f110552a.setMaxPerRoute(httpRoute, m68475a(maxPerRoute));
            this.f110555d.put(httpRoute, Long.valueOf(currentTime));
        }
    }

    @Override // org.apache.http.client.BackoffManager
    public void probe(HttpRoute httpRoute) {
        synchronized (this.f110552a) {
            int maxPerRoute = this.f110552a.getMaxPerRoute(httpRoute);
            int i = this.f110558g;
            if (maxPerRoute < i) {
                i = maxPerRoute + 1;
            }
            Long m68476b = m68476b(this.f110554c, httpRoute);
            Long m68476b2 = m68476b(this.f110555d, httpRoute);
            long currentTime = this.f110553b.getCurrentTime();
            if (currentTime - m68476b.longValue() >= this.f110556e && currentTime - m68476b2.longValue() >= this.f110556e) {
                this.f110552a.setMaxPerRoute(httpRoute, i);
                this.f110554c.put(httpRoute, Long.valueOf(currentTime));
            }
        }
    }

    public void setBackoffFactor(double d) {
        Args.check(d > 0.0d && d < 1.0d, "Backoff factor must be 0.0 < f < 1.0");
        this.f110557f = d;
    }

    public void setCooldownMillis(long j) {
        Args.positive(this.f110556e, "Cool down");
        this.f110556e = j;
    }

    public void setPerHostConnectionCap(int i) {
        Args.positive(i, "Per host connection cap");
        this.f110558g = i;
    }

    public AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl, avd avdVar) {
        this.f110556e = 5000L;
        this.f110557f = 0.5d;
        this.f110558g = 2;
        this.f110553b = avdVar;
        this.f110552a = connPoolControl;
        this.f110554c = new HashMap();
        this.f110555d = new HashMap();
    }
}
