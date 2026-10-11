package org.apache.http.impl.client;

import java.util.concurrent.FutureTask;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes12.dex */
public class HttpRequestFutureTask<V> extends FutureTask<V> {

    /* renamed from: e */
    public final HttpUriRequest f110658e;

    /* renamed from: f */
    public final CallableC19364a<V> f110659f;

    public HttpRequestFutureTask(HttpUriRequest httpUriRequest, CallableC19364a<V> callableC19364a) {
        super(callableC19364a);
        this.f110658e = httpUriRequest;
        this.f110659f = callableC19364a;
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        this.f110659f.m68503a();
        if (z) {
            this.f110658e.abort();
        }
        return super.cancel(z);
    }

    public long endedTime() {
        if (isDone()) {
            return this.f110659f.m68504b();
        }
        throw new IllegalStateException("Task is not done yet");
    }

    public long requestDuration() {
        if (isDone()) {
            return endedTime() - startedTime();
        }
        throw new IllegalStateException("Task is not done yet");
    }

    public long scheduledTime() {
        return this.f110659f.m68505c();
    }

    public long startedTime() {
        return this.f110659f.m68506d();
    }

    public long taskDuration() {
        if (isDone()) {
            return endedTime() - scheduledTime();
        }
        throw new IllegalStateException("Task is not done yet");
    }

    @Override // java.util.concurrent.FutureTask
    public String toString() {
        return this.f110658e.getRequestLine().getUri();
    }
}
