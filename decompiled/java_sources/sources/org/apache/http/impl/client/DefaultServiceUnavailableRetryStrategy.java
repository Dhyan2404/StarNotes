package org.apache.http.impl.client;

import org.apache.http.HttpResponse;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class DefaultServiceUnavailableRetryStrategy implements ServiceUnavailableRetryStrategy {

    /* renamed from: a */
    public final int f110584a;

    /* renamed from: b */
    public final long f110585b;

    public DefaultServiceUnavailableRetryStrategy(int i, int i2) {
        Args.positive(i, "Max retries");
        Args.positive(i2, "Retry interval");
        this.f110584a = i;
        this.f110585b = i2;
    }

    @Override // org.apache.http.client.ServiceUnavailableRetryStrategy
    public long getRetryInterval() {
        return this.f110585b;
    }

    @Override // org.apache.http.client.ServiceUnavailableRetryStrategy
    public boolean retryRequest(HttpResponse httpResponse, int i, HttpContext httpContext) {
        return i <= this.f110584a && httpResponse.getStatusLine().getStatusCode() == 503;
    }

    public DefaultServiceUnavailableRetryStrategy() {
        this(1, 1000);
    }
}
