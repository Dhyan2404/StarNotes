package org.apache.http.concurrent;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class BasicFuture<T> implements Future<T>, Cancellable {

    /* renamed from: e */
    public final FutureCallback<T> f110242e;

    /* renamed from: f */
    public volatile boolean f110243f;

    /* renamed from: g */
    public volatile boolean f110244g;

    /* renamed from: h */
    public volatile T f110245h;

    /* renamed from: i */
    public volatile Exception f110246i;

    public BasicFuture(FutureCallback<T> futureCallback) {
        this.f110242e = futureCallback;
    }

    /* renamed from: a */
    public final T m68326a() throws ExecutionException {
        if (this.f110246i != null) {
            throw new ExecutionException(this.f110246i);
        }
        if (this.f110244g) {
            throw new CancellationException();
        }
        return this.f110245h;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f110243f) {
                return false;
            }
            this.f110243f = true;
            this.f110244g = true;
            notifyAll();
            FutureCallback<T> futureCallback = this.f110242e;
            if (futureCallback != null) {
                futureCallback.cancelled();
            }
            return true;
        }
    }

    public boolean completed(T t) {
        synchronized (this) {
            if (this.f110243f) {
                return false;
            }
            this.f110243f = true;
            this.f110245h = t;
            notifyAll();
            FutureCallback<T> futureCallback = this.f110242e;
            if (futureCallback != null) {
                futureCallback.completed(t);
            }
            return true;
        }
    }

    public boolean failed(Exception exc) {
        synchronized (this) {
            if (this.f110243f) {
                return false;
            }
            this.f110243f = true;
            this.f110246i = exc;
            notifyAll();
            FutureCallback<T> futureCallback = this.f110242e;
            if (futureCallback != null) {
                futureCallback.failed(exc);
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized T get() throws InterruptedException, ExecutionException {
        while (!this.f110243f) {
            wait();
        }
        return m68326a();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f110244g;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f110243f;
    }

    @Override // java.util.concurrent.Future
    public synchronized T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j);
        long currentTimeMillis = millis <= 0 ? 0L : System.currentTimeMillis();
        if (this.f110243f) {
            return m68326a();
        }
        if (millis > 0) {
            long j2 = millis;
            do {
                wait(j2);
                if (this.f110243f) {
                    return m68326a();
                }
                j2 = millis - (System.currentTimeMillis() - currentTimeMillis);
            } while (j2 > 0);
            throw new TimeoutException();
        }
        throw new TimeoutException();
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        return cancel(true);
    }
}
