package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.errorprone.annotations.ForOverride;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.lang.Throwable;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtCompatible
@pnf
/* renamed from: com.google.common.util.concurrent.a */
/* loaded from: classes6.dex */
public abstract class AbstractRunnableC6409a<V, X extends Throwable, F, T> extends FluentFuture.AbstractC6362a<V> implements Runnable {

    /* renamed from: m */
    @CheckForNull
    public ListenableFuture<? extends V> f35459m;

    /* renamed from: n */
    @CheckForNull
    public Class<X> f35460n;

    /* renamed from: o */
    @CheckForNull
    public F f35461o;

    /* renamed from: com.google.common.util.concurrent.a$a */
    /* loaded from: classes6.dex */
    public static final class a<V, X extends Throwable> extends AbstractRunnableC6409a<V, X, AsyncFunction<? super X, ? extends V>, ListenableFuture<? extends V>> {
        public a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction) {
            super(listenableFuture, cls, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractRunnableC6409a
        /* renamed from: B, reason: merged with bridge method [inline-methods] */
        public ListenableFuture<? extends V> mo27852z(AsyncFunction<? super X, ? extends V> asyncFunction, X x) throws Exception {
            ListenableFuture<? extends V> apply = asyncFunction.apply(x);
            Preconditions.checkNotNull(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return apply;
        }

        @Override // com.google.common.util.concurrent.AbstractRunnableC6409a
        /* renamed from: C, reason: merged with bridge method [inline-methods] */
        public void mo27851A(ListenableFuture<? extends V> listenableFuture) {
            setFuture(listenableFuture);
        }
    }

    /* renamed from: com.google.common.util.concurrent.a$b */
    /* loaded from: classes6.dex */
    public static final class b<V, X extends Throwable> extends AbstractRunnableC6409a<V, X, Function<? super X, ? extends V>, V> {
        public b(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
            super(listenableFuture, cls, function);
        }

        @Override // com.google.common.util.concurrent.AbstractRunnableC6409a
        /* renamed from: A */
        public void mo27851A(@uvk V v) {
            set(v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractRunnableC6409a
        @uvk
        /* renamed from: B, reason: merged with bridge method [inline-methods] */
        public V mo27852z(Function<? super X, ? extends V> function, X x) throws Exception {
            return function.apply(x);
        }
    }

    public AbstractRunnableC6409a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f) {
        this.f35459m = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.f35460n = (Class) Preconditions.checkNotNull(cls);
        this.f35461o = (F) Preconditions.checkNotNull(f);
    }

    /* renamed from: x */
    public static <V, X extends Throwable> ListenableFuture<V> m27849x(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        b bVar = new b(listenableFuture, cls, function);
        listenableFuture.addListener(bVar, MoreExecutors.m27752f(executor, bVar));
        return bVar;
    }

    /* renamed from: y */
    public static <X extends Throwable, V> ListenableFuture<V> m27850y(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        a aVar = new a(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(aVar, MoreExecutors.m27752f(executor, aVar));
        return aVar;
    }

    @ForOverride
    /* renamed from: A */
    public abstract void mo27851A(@uvk T t);

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        m27559u(this.f35459m);
        this.f35459m = null;
        this.f35460n = null;
        this.f35461o = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        String str;
        ListenableFuture<? extends V> listenableFuture = this.f35459m;
        Class<X> cls = this.f35460n;
        F f = this.f35461o;
        String pendingToString = super.pendingToString();
        if (listenableFuture != null) {
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (pendingToString == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            return pendingToString.length() != 0 ? valueOf2.concat(pendingToString) : new String(valueOf2);
        }
        String valueOf3 = String.valueOf(cls);
        String valueOf4 = String.valueOf(f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + valueOf3.length() + valueOf4.length());
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(valueOf3);
        sb2.append("], fallback=[");
        sb2.append(valueOf4);
        sb2.append(IteratorUtils.f104924b);
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            com.google.common.util.concurrent.ListenableFuture<? extends V> r0 = r9.f35459m
            java.lang.Class<X extends java.lang.Throwable> r1 = r9.f35460n
            F r2 = r9.f35461o
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = r3
            goto Ld
        Lc:
            r5 = r4
        Ld:
            if (r1 != 0) goto L11
            r6 = r3
            goto L12
        L11:
            r6 = r4
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = r4
        L17:
            r3 = r3 | r5
            if (r3 != 0) goto Lb2
            boolean r3 = r9.isCancelled()
            if (r3 == 0) goto L22
            goto Lb2
        L22:
            r3 = 0
            r9.f35459m = r3
            boolean r4 = r0 instanceof com.google.common.util.concurrent.internal.InternalFutureFailureAccess     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            if (r4 == 0) goto L31
            r4 = r0
            com.google.common.util.concurrent.internal.InternalFutureFailureAccess r4 = (com.google.common.util.concurrent.internal.InternalFutureFailureAccess) r4     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            java.lang.Throwable r4 = com.google.common.util.concurrent.internal.InternalFutures.tryInternalFastPathGetFailure(r4)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L32
        L31:
            r4 = r3
        L32:
            if (r4 != 0) goto L3a
            java.lang.Object r5 = com.google.common.util.concurrent.Futures.getDone(r0)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L83
        L39:
            r4 = move-exception
        L3a:
            r5 = r3
            goto L83
        L3c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L81
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r7 = r6.length()
            int r7 = r7 + 35
            int r8 = r4.length()
            int r7 = r7 + r8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>(r7)
            java.lang.String r7 = "Future type "
            r8.append(r7)
            r8.append(r6)
            java.lang.String r6 = " threw "
            r8.append(r6)
            r8.append(r4)
            java.lang.String r4 = " without a cause"
            r8.append(r4)
            java.lang.String r4 = r8.toString()
            r5.<init>(r4)
        L81:
            r4 = r5
            goto L3a
        L83:
            if (r4 != 0) goto L8d
            java.lang.Object r0 = com.sunia.HTREnginev2.q5k.m56637a(r5)
            r9.set(r0)
            return
        L8d:
            boolean r1 = com.sunia.HTREnginev2.j4l.m54869a(r4, r1)
            if (r1 != 0) goto L97
            r9.setFuture(r0)
            return
        L97:
            java.lang.Object r0 = r9.mo27852z(r2, r4)     // Catch: java.lang.Throwable -> La3
            r9.f35460n = r3
            r9.f35461o = r3
            r9.mo27851A(r0)
            return
        La3:
            r0 = move-exception
            r9.setException(r0)     // Catch: java.lang.Throwable -> Lac
            r9.f35460n = r3
            r9.f35461o = r3
            return
        Lac:
            r0 = move-exception
            r9.f35460n = r3
            r9.f35461o = r3
            throw r0
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractRunnableC6409a.run():void");
    }

    @ForOverride
    @uvk
    /* renamed from: z */
    public abstract T mo27852z(F f, X x) throws Exception;
}
