package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class kmi implements Callable<Void>, Disposable {

    /* renamed from: j */
    public static final FutureTask<Void> f75590j = new FutureTask<>(Functions.EMPTY_RUNNABLE, null);

    /* renamed from: e */
    public final Runnable f75591e;

    /* renamed from: h */
    public final ExecutorService f75594h;

    /* renamed from: i */
    public Thread f75595i;

    /* renamed from: g */
    public final AtomicReference<Future<?>> f75593g = new AtomicReference<>();

    /* renamed from: f */
    public final AtomicReference<Future<?>> f75592f = new AtomicReference<>();

    public kmi(Runnable task, ExecutorService executor) {
        this.f75591e = task;
        this.f75594h = executor;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() {
        this.f75595i = Thread.currentThread();
        try {
            this.f75591e.run();
            this.f75595i = null;
            m55243c(this.f75594h.submit(this));
            return null;
        } catch (Throwable th) {
            this.f75595i = null;
            RxJavaPlugins.onError(th);
            throw th;
        }
    }

    /* renamed from: b */
    public void m55242b(Future<?> f) {
        Future<?> future;
        do {
            future = this.f75593g.get();
            if (future == f75590j) {
                f.cancel(this.f75595i != Thread.currentThread());
                return;
            }
        } while (!cyi.m53538a(this.f75593g, future, f));
    }

    /* renamed from: c */
    public void m55243c(Future<?> f) {
        Future<?> future;
        do {
            future = this.f75592f.get();
            if (future == f75590j) {
                f.cancel(this.f75595i != Thread.currentThread());
                return;
            }
        } while (!cyi.m53538a(this.f75592f, future, f));
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f75593g;
        FutureTask<Void> futureTask = f75590j;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f75595i != Thread.currentThread());
        }
        Future<?> andSet2 = this.f75592f.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f75595i != Thread.currentThread());
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f75593g.get() == f75590j;
    }
}
