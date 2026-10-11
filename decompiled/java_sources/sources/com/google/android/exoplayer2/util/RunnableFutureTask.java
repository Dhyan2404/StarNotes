package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {

    /* renamed from: e */
    public final ConditionVariable f28425e = new ConditionVariable();

    /* renamed from: f */
    public final ConditionVariable f28426f = new ConditionVariable();

    /* renamed from: g */
    public final Object f28427g = new Object();

    /* renamed from: h */
    @Nullable
    public Exception f28428h;

    /* renamed from: i */
    @Nullable
    public R f28429i;

    /* renamed from: j */
    @Nullable
    public Thread f28430j;

    /* renamed from: k */
    public boolean f28431k;

    @UnknownNull
    /* renamed from: a */
    public final R m21520a() throws ExecutionException {
        if (this.f28431k) {
            throw new CancellationException();
        }
        if (this.f28428h == null) {
            return this.f28429i;
        }
        throw new ExecutionException(this.f28428h);
    }

    public final void blockUntilFinished() {
        this.f28426f.blockUninterruptible();
    }

    public final void blockUntilStarted() {
        this.f28425e.blockUninterruptible();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.f28427g) {
            if (!this.f28431k && !this.f28426f.isOpen()) {
                this.f28431k = true;
                cancelWork();
                Thread thread = this.f28430j;
                if (thread == null) {
                    this.f28425e.open();
                    this.f28426f.open();
                } else if (z) {
                    thread.interrupt();
                }
                return true;
            }
            return false;
        }
    }

    public void cancelWork() {
    }

    @UnknownNull
    public abstract R doWork() throws Exception;

    @Override // java.util.concurrent.Future
    @UnknownNull
    public final R get() throws ExecutionException, InterruptedException {
        this.f28426f.block();
        return m21520a();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f28431k;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f28426f.isOpen();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.f28427g) {
            if (this.f28431k) {
                return;
            }
            this.f28430j = Thread.currentThread();
            this.f28425e.open();
            try {
                try {
                    this.f28429i = doWork();
                    synchronized (this.f28427g) {
                        this.f28426f.open();
                        this.f28430j = null;
                        Thread.interrupted();
                    }
                } catch (Exception e) {
                    this.f28428h = e;
                    synchronized (this.f28427g) {
                        this.f28426f.open();
                        this.f28430j = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.f28427g) {
                    this.f28426f.open();
                    this.f28430j = null;
                    Thread.interrupted();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    @UnknownNull
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f28426f.block(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            return m21520a();
        }
        throw new TimeoutException();
    }
}
