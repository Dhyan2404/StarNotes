package com.sunia.HTREnginev2;

import io.opencensus.common.Scope;
import io.opencensus.trace.ContextHandle;
import io.opencensus.trace.Span;
import io.opencensus.trace.Status;
import io.opencensus.trace.unsafe.ContextHandleUtils;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class oie {

    /* renamed from: com.sunia.HTREnginev2.oie$b */
    /* loaded from: classes10.dex */
    public static final class CallableC14194b<V> implements Callable<V> {

        /* renamed from: e */
        public final Span f79770e;

        /* renamed from: f */
        public final Callable<V> f79771f;

        /* renamed from: g */
        public final boolean f79772g;

        @Override // java.util.concurrent.Callable
        public V call() throws Exception {
            ContextHandle attach = ContextHandleUtils.withValue(ContextHandleUtils.currentContext(), this.f79770e).attach();
            try {
                try {
                    try {
                        V call = this.f79771f.call();
                        ContextHandleUtils.currentContext().detach(attach);
                        if (this.f79772g) {
                            this.f79770e.end();
                        }
                        return call;
                    } catch (Throwable th) {
                        oie.m55983c(this.f79770e, th);
                        if (th instanceof Error) {
                            throw th;
                        }
                        throw new RuntimeException("unexpected", th);
                    }
                } catch (Exception e) {
                    oie.m55983c(this.f79770e, e);
                    throw e;
                }
            } catch (Throwable th2) {
                ContextHandleUtils.currentContext().detach(attach);
                if (this.f79772g) {
                    this.f79770e.end();
                }
                throw th2;
            }
        }

        public CallableC14194b(Span span, Callable<V> callable, boolean z) {
            this.f79770e = span;
            this.f79771f = callable;
            this.f79772g = z;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.oie$c */
    /* loaded from: classes10.dex */
    public static final class RunnableC14195c implements Runnable {

        /* renamed from: e */
        public final Span f79773e;

        /* renamed from: f */
        public final Runnable f79774f;

        /* renamed from: g */
        public final boolean f79775g;

        @Override // java.lang.Runnable
        public void run() {
            ContextHandle attach = ContextHandleUtils.withValue(ContextHandleUtils.currentContext(), this.f79773e).attach();
            try {
                this.f79774f.run();
            } catch (Throwable th) {
                try {
                    oie.m55983c(this.f79773e, th);
                    if (th instanceof RuntimeException) {
                        throw ((RuntimeException) th);
                    }
                    if (!(th instanceof Error)) {
                        throw new RuntimeException("unexpected", th);
                    }
                    throw ((Error) th);
                } finally {
                    ContextHandleUtils.currentContext().detach(attach);
                    if (this.f79775g) {
                        this.f79773e.end();
                    }
                }
            }
        }

        public RunnableC14195c(Span span, Runnable runnable, boolean z) {
            this.f79773e = span;
            this.f79774f = runnable;
            this.f79775g = z;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.oie$d */
    /* loaded from: classes10.dex */
    public static final class C14196d implements Scope {

        /* renamed from: e */
        public final ContextHandle f79776e;

        /* renamed from: f */
        public final Span f79777f;

        /* renamed from: g */
        public final boolean f79778g;

        @Override // io.opencensus.common.Scope, io.opencensus.common.NonThrowingCloseable, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            ContextHandleUtils.currentContext().detach(this.f79776e);
            if (this.f79778g) {
                this.f79777f.end();
            }
        }

        public C14196d(Span span, boolean z) {
            this.f79777f = span;
            this.f79778g = z;
            this.f79776e = ContextHandleUtils.withValue(ContextHandleUtils.currentContext(), span).attach();
        }
    }

    @Nullable
    /* renamed from: b */
    public static Span m55982b() {
        return ContextHandleUtils.getValue(ContextHandleUtils.currentContext());
    }

    /* renamed from: c */
    public static void m55983c(Span span, Throwable th) {
        span.setStatus(Status.UNKNOWN.withDescription(th.getMessage() == null ? th.getClass().getSimpleName() : th.getMessage()));
    }

    /* renamed from: d */
    public static Scope m55984d(Span span, boolean z) {
        return new C14196d(span, z);
    }

    /* renamed from: e */
    public static Runnable m55985e(Span span, boolean z, Runnable runnable) {
        return new RunnableC14195c(span, runnable, z);
    }

    /* renamed from: f */
    public static <C> Callable<C> m55986f(Span span, boolean z, Callable<C> callable) {
        return new CallableC14194b(span, callable, z);
    }
}
