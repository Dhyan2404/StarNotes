package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.Lazy;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class ProviderOfLazy<T> implements Provider<Lazy<T>> {

    /* renamed from: b */
    public static final /* synthetic */ boolean f21989b = false;

    /* renamed from: a */
    public final Provider<T> f21990a;

    public ProviderOfLazy(Provider<T> provider) {
        this.f21990a = provider;
    }

    public static <T> Provider<Lazy<T>> create(Provider<T> provider) {
        return new ProviderOfLazy((Provider) Preconditions.checkNotNull(provider));
    }

    @Override // javax.inject.Provider
    public Lazy<T> get() {
        return DoubleCheck.lazy(this.f21990a);
    }
}
