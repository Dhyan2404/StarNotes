package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class CallbackToFutureAdapter {

    /* loaded from: classes3.dex */
    public static final class Completer<T> {

        /* renamed from: a */
        public Object f2570a;

        /* renamed from: b */
        public C0383a<T> f2571b;

        /* renamed from: c */
        public ResolvableFuture<Void> f2572c = ResolvableFuture.create();

        /* renamed from: d */
        public boolean f2573d;

        /* renamed from: a */
        public void m1349a() {
            this.f2570a = null;
            this.f2571b = null;
            this.f2572c.set(null);
        }

        public void addCancellationListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            ResolvableFuture<Void> resolvableFuture = this.f2572c;
            if (resolvableFuture != null) {
                resolvableFuture.addListener(runnable, executor);
            }
        }

        /* renamed from: b */
        public final void m1350b() {
            this.f2570a = null;
            this.f2571b = null;
            this.f2572c = null;
        }

        public void finalize() {
            ResolvableFuture<Void> resolvableFuture;
            C0383a<T> c0383a = this.f2571b;
            if (c0383a != null && !c0383a.isDone()) {
                c0383a.m1353c(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f2570a));
            }
            if (this.f2573d || (resolvableFuture = this.f2572c) == null) {
                return;
            }
            resolvableFuture.set(null);
        }

        public boolean set(T t) {
            this.f2573d = true;
            C0383a<T> c0383a = this.f2571b;
            boolean z = c0383a != null && c0383a.m1352b(t);
            if (z) {
                m1350b();
            }
            return z;
        }

        public boolean setCancelled() {
            this.f2573d = true;
            C0383a<T> c0383a = this.f2571b;
            boolean z = c0383a != null && c0383a.m1351a(true);
            if (z) {
                m1350b();
            }
            return z;
        }

        public boolean setException(@NonNull Throwable th) {
            this.f2573d = true;
            C0383a<T> c0383a = this.f2571b;
            boolean z = c0383a != null && c0383a.m1353c(th);
            if (z) {
                m1350b();
            }
            return z;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FutureGarbageCollectedException extends Throwable {
        public FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface Resolver<T> {
        @Nullable
        Object attachCompleter(@NonNull Completer<T> completer) throws Exception;
    }

    /* renamed from: androidx.concurrent.futures.CallbackToFutureAdapter$a */
    /* loaded from: classes3.dex */
    public static final class C0383a<T> implements ListenableFuture<T> {

        /* renamed from: e */
        public final WeakReference<Completer<T>> f2574e;

        /* renamed from: f */
        public final AbstractResolvableFuture<T> f2575f = new a();

        /* renamed from: androidx.concurrent.futures.CallbackToFutureAdapter$a$a */
        /* loaded from: classes3.dex */
        public class a extends AbstractResolvableFuture<T> {
            public a() {
            }

            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public String pendingToString() {
                Completer<T> completer = C0383a.this.f2574e.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.f2570a + IteratorUtils.f104924b;
            }
        }

        public C0383a(Completer<T> completer) {
            this.f2574e = new WeakReference<>(completer);
        }

        /* renamed from: a */
        public boolean m1351a(boolean z) {
            return this.f2575f.cancel(z);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            this.f2575f.addListener(runnable, executor);
        }

        /* renamed from: b */
        public boolean m1352b(T t) {
            return this.f2575f.set(t);
        }

        /* renamed from: c */
        public boolean m1353c(Throwable th) {
            return this.f2575f.setException(th);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            Completer<T> completer = this.f2574e.get();
            boolean cancel = this.f2575f.cancel(z);
            if (cancel && completer != null) {
                completer.m1349a();
            }
            return cancel;
        }

        @Override // java.util.concurrent.Future
        public T get() throws InterruptedException, ExecutionException {
            return this.f2575f.get();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f2575f.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f2575f.isDone();
        }

        public String toString() {
            return this.f2575f.toString();
        }

        @Override // java.util.concurrent.Future
        public T get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return this.f2575f.get(j, timeUnit);
        }
    }

    @NonNull
    public static <T> ListenableFuture<T> getFuture(@NonNull Resolver<T> resolver) {
        Completer<T> completer = new Completer<>();
        C0383a<T> c0383a = new C0383a<>(completer);
        completer.f2571b = c0383a;
        completer.f2570a = resolver.getClass();
        try {
            Object attachCompleter = resolver.attachCompleter(completer);
            if (attachCompleter != null) {
                completer.f2570a = attachCompleter;
            }
        } catch (Exception e) {
            c0383a.m1353c(e);
        }
        return c0383a;
    }
}
