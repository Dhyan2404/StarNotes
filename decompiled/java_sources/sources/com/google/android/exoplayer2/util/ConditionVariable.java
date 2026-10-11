package com.google.android.exoplayer2.util;

/* loaded from: classes5.dex */
public class ConditionVariable {

    /* renamed from: a */
    public final Clock f28279a;

    /* renamed from: b */
    public boolean f28280b;

    public ConditionVariable() {
        this(Clock.DEFAULT);
    }

    public synchronized void block() throws InterruptedException {
        while (!this.f28280b) {
            wait();
        }
    }

    public synchronized void blockUninterruptible() {
        boolean z = false;
        while (!this.f28280b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean close() {
        boolean z;
        z = this.f28280b;
        this.f28280b = false;
        return z;
    }

    public synchronized boolean isOpen() {
        return this.f28280b;
    }

    public synchronized boolean open() {
        if (this.f28280b) {
            return false;
        }
        this.f28280b = true;
        notifyAll();
        return true;
    }

    public ConditionVariable(Clock clock) {
        this.f28279a = clock;
    }

    public synchronized boolean block(long j) throws InterruptedException {
        if (j <= 0) {
            return this.f28280b;
        }
        long elapsedRealtime = this.f28279a.elapsedRealtime();
        long j2 = j + elapsedRealtime;
        if (j2 < elapsedRealtime) {
            block();
        } else {
            while (!this.f28280b && elapsedRealtime < j2) {
                wait(j2 - elapsedRealtime);
                elapsedRealtime = this.f28279a.elapsedRealtime();
            }
        }
        return this.f28280b;
    }
}
