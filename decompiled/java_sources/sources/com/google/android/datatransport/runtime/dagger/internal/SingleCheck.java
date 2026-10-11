package com.google.android.datatransport.runtime.dagger.internal;

import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class SingleCheck<T> implements Provider<T> {

    /* renamed from: c */
    public static final Object f21999c = new Object();

    /* renamed from: d */
    public static final /* synthetic */ boolean f22000d = false;

    /* renamed from: a */
    public volatile Provider<T> f22001a;

    /* renamed from: b */
    public volatile Object f22002b = f21999c;

    public SingleCheck(Provider<T> provider) {
        this.f22001a = provider;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((Provider) Preconditions.checkNotNull(p));
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.f22002b;
        if (t != f21999c) {
            return t;
        }
        Provider<T> provider = this.f22001a;
        if (provider == null) {
            return (T) this.f22002b;
        }
        T t2 = provider.get();
        this.f22002b = t2;
        this.f22001a = null;
        return t2;
    }
}
