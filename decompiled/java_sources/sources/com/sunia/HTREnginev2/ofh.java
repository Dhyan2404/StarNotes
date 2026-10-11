package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class ofh extends Scheduler {

    /* renamed from: g */
    public final Handler f79665g;

    /* renamed from: h */
    public final boolean f79666h;

    /* renamed from: com.sunia.HTREnginev2.ofh$a */
    /* loaded from: classes3.dex */
    public static final class C14187a extends Scheduler.Worker {

        /* renamed from: e */
        public final Handler f79667e;

        /* renamed from: f */
        public final boolean f79668f;

        /* renamed from: g */
        public volatile boolean f79669g;

        public C14187a(Handler handler, boolean async) {
            this.f79667e = handler;
            this.f79668f = async;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f79669g = true;
            this.f79667e.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f79669g;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @SuppressLint({"NewApi"})
        public Disposable schedule(Runnable run, long delay, TimeUnit unit) {
            if (run == null) {
                throw new NullPointerException("run == null");
            }
            if (unit == null) {
                throw new NullPointerException("unit == null");
            }
            if (this.f79669g) {
                return Disposable.disposed();
            }
            RunnableC14188b runnableC14188b = new RunnableC14188b(this.f79667e, RxJavaPlugins.onSchedule(run));
            Message obtain = Message.obtain(this.f79667e, runnableC14188b);
            obtain.obj = this;
            if (this.f79668f) {
                obtain.setAsynchronous(true);
            }
            this.f79667e.sendMessageDelayed(obtain, unit.toMillis(delay));
            if (!this.f79669g) {
                return runnableC14188b;
            }
            this.f79667e.removeCallbacks(runnableC14188b);
            return Disposable.disposed();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ofh$b */
    /* loaded from: classes3.dex */
    public static final class RunnableC14188b implements Runnable, Disposable {

        /* renamed from: e */
        public final Handler f79670e;

        /* renamed from: f */
        public final Runnable f79671f;

        /* renamed from: g */
        public volatile boolean f79672g;

        public RunnableC14188b(Handler handler, Runnable delegate) {
            this.f79670e = handler;
            this.f79671f = delegate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f79670e.removeCallbacks(this);
            this.f79672g = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f79672g;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f79671f.run();
            } catch (Throwable th) {
                RxJavaPlugins.onError(th);
            }
        }
    }

    public ofh(Handler handler, boolean async) {
        this.f79665g = handler;
        this.f79666h = async;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker createWorker() {
        return new C14187a(this.f79665g, this.f79666h);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @SuppressLint({"NewApi"})
    public Disposable scheduleDirect(Runnable run, long delay, TimeUnit unit) {
        if (run == null) {
            throw new NullPointerException("run == null");
        }
        if (unit == null) {
            throw new NullPointerException("unit == null");
        }
        RunnableC14188b runnableC14188b = new RunnableC14188b(this.f79665g, RxJavaPlugins.onSchedule(run));
        Message obtain = Message.obtain(this.f79665g, runnableC14188b);
        if (this.f79666h) {
            obtain.setAsynchronous(true);
        }
        this.f79665g.sendMessageDelayed(obtain, unit.toMillis(delay));
        return runnableC14188b;
    }
}
