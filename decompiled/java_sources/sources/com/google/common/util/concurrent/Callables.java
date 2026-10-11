package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Callables;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.concurrent.Callable;

@GwtCompatible(emulated = true)
@pnf
/* loaded from: classes6.dex */
public final class Callables {
    @Beta
    @GwtIncompatible
    public static <T> AsyncCallable<T> asAsyncCallable(final Callable<T> callable, final ListeningExecutorService listeningExecutorService) {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(listeningExecutorService);
        return new AsyncCallable() { // from class: com.sunia.HTREnginev2.ymd
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                ListenableFuture submit;
                submit = ListeningExecutorService.this.submit(callable);
                return submit;
            }
        };
    }

    /* renamed from: f */
    public static /* synthetic */ Object m27638f(Object obj) throws Exception {
        return obj;
    }

    /* renamed from: g */
    public static /* synthetic */ Object m27639g(Supplier supplier, Callable callable) throws Exception {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean m27643k = m27643k((String) supplier.get(), currentThread);
        try {
            return callable.call();
        } finally {
            if (m27643k) {
                m27643k(name, currentThread);
            }
        }
    }

    /* renamed from: h */
    public static /* synthetic */ void m27640h(Supplier supplier, Runnable runnable) {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean m27643k = m27643k((String) supplier.get(), currentThread);
        try {
            runnable.run();
        } finally {
            if (m27643k) {
                m27643k(name, currentThread);
            }
        }
    }

    @GwtIncompatible
    /* renamed from: i */
    public static Runnable m27641i(final Runnable runnable, final Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(runnable);
        return new Runnable() { // from class: com.sunia.HTREnginev2.wmd
            @Override // java.lang.Runnable
            public final void run() {
                Callables.m27640h(Supplier.this, runnable);
            }
        };
    }

    @GwtIncompatible
    /* renamed from: j */
    public static <T> Callable<T> m27642j(final Callable<T> callable, final Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(callable);
        return new Callable() { // from class: com.sunia.HTREnginev2.xmd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object m27639g;
                m27639g = Callables.m27639g(Supplier.this, callable);
                return m27639g;
            }
        };
    }

    @GwtIncompatible
    /* renamed from: k */
    public static boolean m27643k(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static <T> Callable<T> returning(@uvk final T t) {
        return new Callable() { // from class: com.sunia.HTREnginev2.vmd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object m27638f;
                m27638f = Callables.m27638f(t);
                return m27638f;
            }
        };
    }
}
