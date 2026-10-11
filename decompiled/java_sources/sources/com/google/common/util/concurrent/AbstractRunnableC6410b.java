package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.errorprone.annotations.ForOverride;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtCompatible
@pnf
/* renamed from: com.google.common.util.concurrent.b */
/* loaded from: classes6.dex */
public abstract class AbstractRunnableC6410b<I, O, F, T> extends FluentFuture.AbstractC6362a<O> implements Runnable {

    /* renamed from: m */
    @CheckForNull
    public ListenableFuture<? extends I> f35462m;

    /* renamed from: n */
    @CheckForNull
    public F f35463n;

    /* renamed from: com.google.common.util.concurrent.b$a */
    /* loaded from: classes6.dex */
    public static final class a<I, O> extends AbstractRunnableC6410b<I, O, AsyncFunction<? super I, ? extends O>, ListenableFuture<? extends O>> {
        public a(ListenableFuture<? extends I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
            super(listenableFuture, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractRunnableC6410b
        /* renamed from: B, reason: merged with bridge method [inline-methods] */
        public ListenableFuture<? extends O> mo27859z(AsyncFunction<? super I, ? extends O> asyncFunction, @uvk I i) throws Exception {
            ListenableFuture<? extends O> apply = asyncFunction.apply(i);
            Preconditions.checkNotNull(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return apply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractRunnableC6410b
        /* renamed from: C, reason: merged with bridge method [inline-methods] */
        public void mo27858A(ListenableFuture<? extends O> listenableFuture) {
            setFuture(listenableFuture);
        }
    }

    /* renamed from: com.google.common.util.concurrent.b$b */
    /* loaded from: classes6.dex */
    public static final class b<I, O> extends AbstractRunnableC6410b<I, O, Function<? super I, ? extends O>, O> {
        public b(ListenableFuture<? extends I> listenableFuture, Function<? super I, ? extends O> function) {
            super(listenableFuture, function);
        }

        @Override // com.google.common.util.concurrent.AbstractRunnableC6410b
        /* renamed from: A */
        public void mo27858A(@uvk O o) {
            set(o);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractRunnableC6410b
        @uvk
        /* renamed from: B, reason: merged with bridge method [inline-methods] */
        public O mo27859z(Function<? super I, ? extends O> function, @uvk I i) {
            return function.apply(i);
        }
    }

    public AbstractRunnableC6410b(ListenableFuture<? extends I> listenableFuture, F f) {
        this.f35462m = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.f35463n = (F) Preconditions.checkNotNull(f);
    }

    /* renamed from: x */
    public static <I, O> ListenableFuture<O> m27856x(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        Preconditions.checkNotNull(function);
        b bVar = new b(listenableFuture, function);
        listenableFuture.addListener(bVar, MoreExecutors.m27752f(executor, bVar));
        return bVar;
    }

    /* renamed from: y */
    public static <I, O> ListenableFuture<O> m27857y(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        Preconditions.checkNotNull(executor);
        a aVar = new a(listenableFuture, asyncFunction);
        listenableFuture.addListener(aVar, MoreExecutors.m27752f(executor, aVar));
        return aVar;
    }

    @ForOverride
    /* renamed from: A */
    public abstract void mo27858A(@uvk T t);

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        m27559u(this.f35462m);
        this.f35462m = null;
        this.f35463n = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        String str;
        ListenableFuture<? extends I> listenableFuture = this.f35462m;
        F f = this.f35463n;
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
        if (f == null) {
            if (pendingToString == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            return pendingToString.length() != 0 ? valueOf2.concat(pendingToString) : new String(valueOf2);
        }
        String valueOf3 = String.valueOf(f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + valueOf3.length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(valueOf3);
        sb2.append(IteratorUtils.f104924b);
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends I> listenableFuture = this.f35462m;
        F f = this.f35463n;
        if ((isCancelled() | (listenableFuture == null)) || (f == null)) {
            return;
        }
        this.f35462m = null;
        if (listenableFuture.isCancelled()) {
            setFuture(listenableFuture);
            return;
        }
        try {
            try {
                Object mo27859z = mo27859z(f, Futures.getDone(listenableFuture));
                this.f35463n = null;
                mo27858A(mo27859z);
            } catch (Throwable th) {
                try {
                    setException(th);
                } finally {
                    this.f35463n = null;
                }
            }
        } catch (Error e) {
            setException(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            setException(e2);
        } catch (ExecutionException e3) {
            setException(e3.getCause());
        }
    }

    @ForOverride
    @uvk
    /* renamed from: z */
    public abstract T mo27859z(F f, @uvk I i) throws Exception;
}
