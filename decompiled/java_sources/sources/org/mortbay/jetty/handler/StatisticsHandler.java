package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Response;

/* loaded from: classes13.dex */
public class StatisticsHandler extends AbstractStatisticsHandler {

    /* renamed from: g */
    public transient long f114932g;

    /* renamed from: h */
    public transient int f114933h;

    /* renamed from: i */
    public transient long f114934i;

    /* renamed from: j */
    public transient long f114935j;

    /* renamed from: k */
    public transient long f114936k;

    /* renamed from: l */
    public transient int f114937l;

    /* renamed from: m */
    public transient int f114938m;

    /* renamed from: n */
    public transient int f114939n;

    /* renamed from: o */
    public transient int f114940o;

    /* renamed from: p */
    public transient int f114941p;

    /* renamed from: q */
    public transient int f114942q;

    /* renamed from: r */
    public transient int f114943r;

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeAverage() {
        long j;
        synchronized (this) {
            int i = this.f114933h;
            j = i == 0 ? 0L : this.f114936k / i;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeMax() {
        long j;
        synchronized (this) {
            j = this.f114935j;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeMin() {
        long j;
        synchronized (this) {
            j = this.f114934i;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeTotal() {
        long j;
        synchronized (this) {
            j = this.f114936k;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequests() {
        int i;
        synchronized (this) {
            i = this.f114933h;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequestsActive() {
        int i;
        synchronized (this) {
            i = this.f114937l;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequestsActiveMax() {
        int i;
        synchronized (this) {
            i = this.f114938m;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses1xx() {
        int i;
        synchronized (this) {
            i = this.f114939n;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses2xx() {
        int i;
        synchronized (this) {
            i = this.f114940o;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses3xx() {
        int i;
        synchronized (this) {
            i = this.f114941p;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses4xx() {
        int i;
        synchronized (this) {
            i = this.f114942q;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses5xx() {
        int i;
        synchronized (this) {
            i = this.f114943r;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getStatsOnMs() {
        long currentTimeMillis;
        synchronized (this) {
            currentTimeMillis = System.currentTimeMillis() - this.f114932g;
        }
        return currentTimeMillis;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        synchronized (this) {
            this.f114933h++;
            int i2 = this.f114937l + 1;
            this.f114937l = i2;
            if (i2 > this.f114938m) {
                this.f114938m = i2;
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            super.handle(str, httpServletRequest, httpServletResponse, i);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            synchronized (this) {
                int i3 = this.f114937l - 1;
                this.f114937l = i3;
                if (i3 < 0) {
                    this.f114937l = 0;
                }
                this.f114936k += currentTimeMillis2;
                long j = this.f114934i;
                if (currentTimeMillis2 < j || j == 0) {
                    this.f114934i = currentTimeMillis2;
                }
                if (currentTimeMillis2 > this.f114935j) {
                    this.f114935j = currentTimeMillis2;
                }
                int status = (httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse()).getStatus() / 100;
                if (status == 1) {
                    this.f114939n++;
                } else if (status == 2) {
                    this.f114940o++;
                } else if (status == 3) {
                    this.f114941p++;
                } else if (status == 4) {
                    this.f114942q++;
                } else if (status == 5) {
                    this.f114943r++;
                }
            }
        } catch (Throwable th) {
            long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
            synchronized (this) {
                this.f114937l--;
                if (this.f114937l < 0) {
                    this.f114937l = 0;
                }
                this.f114936k += currentTimeMillis3;
                long j2 = this.f114934i;
                if (currentTimeMillis3 < j2 || j2 == 0) {
                    this.f114934i = currentTimeMillis3;
                }
                if (currentTimeMillis3 > this.f114935j) {
                    this.f114935j = currentTimeMillis3;
                }
                int status2 = (httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse()).getStatus() / 100;
                if (status2 == 1) {
                    this.f114939n++;
                } else if (status2 == 2) {
                    this.f114940o++;
                } else if (status2 == 3) {
                    this.f114941p++;
                } else if (status2 == 4) {
                    this.f114942q++;
                } else if (status2 == 5) {
                    this.f114943r++;
                }
                throw th;
            }
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public void statsReset() {
        synchronized (this) {
            this.f114932g = System.currentTimeMillis();
            this.f114933h = 0;
            this.f114934i = 0L;
            this.f114935j = 0L;
            this.f114936k = 0L;
            this.f114938m = this.f114937l;
            this.f114937l = 0;
            this.f114939n = 0;
            this.f114940o = 0;
            this.f114941p = 0;
            this.f114942q = 0;
            this.f114943r = 0;
        }
    }
}
