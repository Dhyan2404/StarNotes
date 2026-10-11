package com.google.android.datatransport.runtime.dagger.internal;

import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class DelegateFactory<T> implements Factory<T> {

    /* renamed from: a */
    public Provider<T> f21980a;

    public static <T> void setDelegate(Provider<T> provider, Provider<T> provider2) {
        Preconditions.checkNotNull(provider2);
        DelegateFactory delegateFactory = (DelegateFactory) provider;
        if (delegateFactory.f21980a != null) {
            throw new IllegalStateException();
        }
        delegateFactory.f21980a = provider2;
    }

    /* renamed from: a */
    public Provider<T> m17444a() {
        return (Provider) Preconditions.checkNotNull(this.f21980a);
    }

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.f21980a;
        if (provider != null) {
            return provider.get();
        }
        throw new IllegalStateException();
    }

    @Deprecated
    public void setDelegatedProvider(Provider<T> provider) {
        setDelegate(this, provider);
    }
}
