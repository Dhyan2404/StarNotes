package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.JdkFutureAdapters;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

@Beta
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class JdkFutureAdapters {

    /* renamed from: com.google.common.util.concurrent.JdkFutureAdapters$a */
    /* loaded from: classes6.dex */
    public static class C6376a<V> extends ForwardingFuture<V> implements ListenableFuture<V> {

        /* renamed from: i */
        public static final ThreadFactory f35353i;

        /* renamed from: j */
        public static final Executor f35354j;

        /* renamed from: e */
        public final Executor f35355e;

        /* renamed from: f */
        public final ExecutionList f35356f;

        /* renamed from: g */
        public final AtomicBoolean f35357g;

        /* renamed from: h */
        public final Future<V> f35358h;

        static {
            ThreadFactory build = new ThreadFactoryBuilder().setDaemon(true).setNameFormat("ListenableFutureAdapter-thread-%d").build();
            f35353i = build;
            f35354j = Executors.newCachedThreadPool(build);
        }

        public C6376a(Future<V> future) {
            this(future, f35354j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m27734g() {
            try {
                Uninterruptibles.getUninterruptibly(this.f35358h);
            } catch (Throwable unused) {
            }
            this.f35356f.execute();
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            this.f35356f.add(runnable, executor);
            if (this.f35357g.compareAndSet(false, true)) {
                if (this.f35358h.isDone()) {
                    this.f35356f.execute();
                } else {
                    this.f35355e.execute(new Runnable() { // from class: com.sunia.HTREnginev2.mri
                        @Override // java.lang.Runnable
                        public final void run() {
                            JdkFutureAdapters.C6376a.this.m27734g();
                        }
                    });
                }
            }
        }

        public C6376a(Future<V> future, Executor executor) {
            this.f35356f = new ExecutionList();
            this.f35357g = new AtomicBoolean(false);
            this.f35358h = (Future) Preconditions.checkNotNull(future);
            this.f35355e = (Executor) Preconditions.checkNotNull(executor);
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public Future<V> delegate() {
            return this.f35358h;
        }
    }

    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future) {
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new C6376a(future);
    }

    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future, Executor executor) {
        Preconditions.checkNotNull(executor);
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new C6376a(future, executor);
    }
}
