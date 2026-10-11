package com.squareup.okhttp.internal.spdy;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes9.dex */
public final class Ping {

    /* renamed from: a */
    public final CountDownLatch f63876a = new CountDownLatch(1);

    /* renamed from: b */
    public long f63877b = -1;

    /* renamed from: c */
    public long f63878c = -1;

    /* renamed from: a */
    public void m52750a() {
        if (this.f63878c == -1) {
            long j = this.f63877b;
            if (j != -1) {
                this.f63878c = j - 1;
                this.f63876a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public void m52751b() {
        if (this.f63878c != -1 || this.f63877b == -1) {
            throw new IllegalStateException();
        }
        this.f63878c = System.nanoTime();
        this.f63876a.countDown();
    }

    /* renamed from: c */
    public void m52752c() {
        if (this.f63877b != -1) {
            throw new IllegalStateException();
        }
        this.f63877b = System.nanoTime();
    }

    public long roundTripTime() throws InterruptedException {
        this.f63876a.await();
        return this.f63878c - this.f63877b;
    }

    public long roundTripTime(long j, TimeUnit timeUnit) throws InterruptedException {
        if (this.f63876a.await(j, timeUnit)) {
            return this.f63878c - this.f63877b;
        }
        return -2L;
    }
}
