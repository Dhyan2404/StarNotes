package org.apache.http.impl.client;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class FutureRequestExecutionService implements Closeable {

    /* renamed from: e */
    public final HttpClient f110597e;

    /* renamed from: f */
    public final ExecutorService f110598f;

    /* renamed from: g */
    public final FutureRequestExecutionMetrics f110599g = new FutureRequestExecutionMetrics();

    /* renamed from: h */
    public final AtomicBoolean f110600h = new AtomicBoolean(false);

    public FutureRequestExecutionService(HttpClient httpClient, ExecutorService executorService) {
        this.f110597e = httpClient;
        this.f110598f = executorService;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f110600h.set(true);
        this.f110598f.shutdownNow();
        HttpClient httpClient = this.f110597e;
        if (httpClient instanceof Closeable) {
            ((Closeable) httpClient).close();
        }
    }

    public <T> HttpRequestFutureTask<T> execute(HttpUriRequest httpUriRequest, HttpContext httpContext, ResponseHandler<T> responseHandler) {
        return execute(httpUriRequest, httpContext, responseHandler, null);
    }

    public FutureRequestExecutionMetrics metrics() {
        return this.f110599g;
    }

    public <T> HttpRequestFutureTask<T> execute(HttpUriRequest httpUriRequest, HttpContext httpContext, ResponseHandler<T> responseHandler, FutureCallback<T> futureCallback) {
        if (!this.f110600h.get()) {
            this.f110599g.m68490d().incrementAndGet();
            HttpRequestFutureTask<T> httpRequestFutureTask = new HttpRequestFutureTask<>(httpUriRequest, new CallableC19364a(this.f110597e, httpUriRequest, httpContext, responseHandler, futureCallback, this.f110599g));
            this.f110598f.execute(httpRequestFutureTask);
            return httpRequestFutureTask;
        }
        throw new IllegalStateException("Close has been called on this httpclient instance.");
    }
}
