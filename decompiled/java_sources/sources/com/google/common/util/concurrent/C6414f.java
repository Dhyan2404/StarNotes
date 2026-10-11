package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtCompatible
@pnf
/* renamed from: com.google.common.util.concurrent.f */
/* loaded from: classes6.dex */
public class C6414f<V> implements ListenableFuture<V> {

    /* renamed from: f */
    public static final ListenableFuture<?> f35477f = new C6414f(null);

    /* renamed from: g */
    public static final Logger f35478g = Logger.getLogger(C6414f.class.getName());

    /* renamed from: e */
    @uvk
    public final V f35479e;

    /* renamed from: com.google.common.util.concurrent.f$a */
    /* loaded from: classes6.dex */
    public static final class a<V> extends AbstractFuture.AbstractC6303i<V> {

        /* renamed from: m */
        public static final a<Object> f35480m;

        static {
            f35480m = AbstractFuture.f35140h ? null : new a<>();
        }

        public a() {
            cancel(false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.f$b */
    /* loaded from: classes6.dex */
    public static final class b<V> extends AbstractFuture.AbstractC6303i<V> {
        public b(Throwable th) {
            setException(th);
        }
    }

    public C6414f(@uvk V v) {
        this.f35479e = v;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f35478g;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.log(level, sb.toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    @uvk
    public V get() {
        return this.f35479e;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f35479e);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + valueOf.length());
        sb.append(obj);
        sb.append("[status=SUCCESS, result=[");
        sb.append(valueOf);
        sb.append("]]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    @uvk
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        Preconditions.checkNotNull(timeUnit);
        return get();
    }
}
