package com.sunia.HTREnginev2;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* loaded from: classes6.dex */
public class phk<T> implements Provider<T>, Deferred<T> {

    /* renamed from: c */
    public static final Deferred.DeferredHandler<Object> f80802c = new Deferred.DeferredHandler() { // from class: com.sunia.HTREnginev2.mhk
        @Override // com.google.firebase.inject.Deferred.DeferredHandler
        public final void handle(Provider provider) {
            phk.m56267e(provider);
        }
    };

    /* renamed from: d */
    public static final Provider<Object> f80803d = new Provider() { // from class: com.sunia.HTREnginev2.nhk
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            Object m56268f;
            m56268f = phk.m56268f();
            return m56268f;
        }
    };

    /* renamed from: a */
    @GuardedBy("this")
    public Deferred.DeferredHandler<T> f80804a;

    /* renamed from: b */
    public volatile Provider<T> f80805b;

    public phk(Deferred.DeferredHandler<T> deferredHandler, Provider<T> provider) {
        this.f80804a = deferredHandler;
        this.f80805b = provider;
    }

    /* renamed from: d */
    public static <T> phk<T> m56266d() {
        return new phk<>(f80802c, f80803d);
    }

    /* renamed from: e */
    public static /* synthetic */ void m56267e(Provider provider) {
    }

    /* renamed from: f */
    public static /* synthetic */ Object m56268f() {
        return null;
    }

    /* renamed from: g */
    public static /* synthetic */ void m56269g(Deferred.DeferredHandler deferredHandler, Deferred.DeferredHandler deferredHandler2, Provider provider) {
        deferredHandler.handle(provider);
        deferredHandler2.handle(provider);
    }

    /* renamed from: h */
    public static <T> phk<T> m56270h(Provider<T> provider) {
        return new phk<>(null, provider);
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        return this.f80805b.get();
    }

    /* renamed from: i */
    public void m56271i(Provider<T> provider) {
        Deferred.DeferredHandler<T> deferredHandler;
        if (this.f80805b != f80803d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            deferredHandler = this.f80804a;
            this.f80804a = null;
            this.f80805b = provider;
        }
        deferredHandler.handle(provider);
    }

    @Override // com.google.firebase.inject.Deferred
    public void whenAvailable(@NonNull final Deferred.DeferredHandler<T> deferredHandler) {
        Provider<T> provider;
        Provider<T> provider2;
        Provider<T> provider3 = this.f80805b;
        Provider<Object> provider4 = f80803d;
        if (provider3 != provider4) {
            deferredHandler.handle(provider3);
            return;
        }
        synchronized (this) {
            provider = this.f80805b;
            if (provider != provider4) {
                provider2 = provider;
            } else {
                final Deferred.DeferredHandler<T> deferredHandler2 = this.f80804a;
                this.f80804a = new Deferred.DeferredHandler() { // from class: com.sunia.HTREnginev2.ohk
                    @Override // com.google.firebase.inject.Deferred.DeferredHandler
                    public final void handle(Provider provider5) {
                        phk.m56269g(Deferred.DeferredHandler.this, deferredHandler, provider5);
                    }
                };
                provider2 = null;
            }
        }
        if (provider2 != null) {
            deferredHandler.handle(provider);
        }
    }
}
