package org.apache.http.impl.client;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.protocol.HttpContext;

/* renamed from: org.apache.http.impl.client.a */
/* loaded from: classes12.dex */
public class CallableC19364a<V> implements Callable<V> {

    /* renamed from: e */
    public final HttpUriRequest f110688e;

    /* renamed from: f */
    public final HttpClient f110689f;

    /* renamed from: g */
    public final AtomicBoolean f110690g = new AtomicBoolean(false);

    /* renamed from: h */
    public final long f110691h = System.currentTimeMillis();

    /* renamed from: i */
    public long f110692i = -1;

    /* renamed from: j */
    public long f110693j = -1;

    /* renamed from: k */
    public final HttpContext f110694k;

    /* renamed from: l */
    public final ResponseHandler<V> f110695l;

    /* renamed from: m */
    public final FutureCallback<V> f110696m;

    /* renamed from: n */
    public final FutureRequestExecutionMetrics f110697n;

    public CallableC19364a(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, ResponseHandler<V> responseHandler, FutureCallback<V> futureCallback, FutureRequestExecutionMetrics futureRequestExecutionMetrics) {
        this.f110689f = httpClient;
        this.f110695l = responseHandler;
        this.f110688e = httpUriRequest;
        this.f110694k = httpContext;
        this.f110696m = futureCallback;
        this.f110697n = futureRequestExecutionMetrics;
    }

    /* renamed from: a */
    public void m68503a() {
        this.f110690g.set(true);
        FutureCallback<V> futureCallback = this.f110696m;
        if (futureCallback != null) {
            futureCallback.cancelled();
        }
    }

    /* renamed from: b */
    public long m68504b() {
        return this.f110693j;
    }

    /* renamed from: c */
    public long m68505c() {
        return this.f110691h;
    }

    @Override // java.util.concurrent.Callable
    public V call() throws Exception {
        if (this.f110690g.get()) {
            throw new IllegalStateException("call has been cancelled for request " + this.f110688e.getURI());
        }
        try {
            this.f110697n.m68487a().incrementAndGet();
            this.f110692i = System.currentTimeMillis();
            try {
                this.f110697n.m68490d().decrementAndGet();
                V v = (V) this.f110689f.execute(this.f110688e, this.f110695l, this.f110694k);
                this.f110693j = System.currentTimeMillis();
                this.f110697n.m68491e().m68495c(this.f110692i);
                FutureCallback<V> futureCallback = this.f110696m;
                if (futureCallback != null) {
                    futureCallback.completed(v);
                }
                return v;
            } catch (Exception e) {
                this.f110697n.m68488b().m68495c(this.f110692i);
                this.f110693j = System.currentTimeMillis();
                FutureCallback<V> futureCallback2 = this.f110696m;
                if (futureCallback2 != null) {
                    futureCallback2.failed(e);
                }
                throw e;
            }
        } finally {
            this.f110697n.m68489c().m68495c(this.f110692i);
            this.f110697n.m68492f().m68495c(this.f110692i);
            this.f110697n.m68487a().decrementAndGet();
        }
    }

    /* renamed from: d */
    public long m68506d() {
        return this.f110692i;
    }
}
