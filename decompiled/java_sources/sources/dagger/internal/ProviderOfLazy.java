package dagger.internal;

import dagger.Lazy;

/* loaded from: classes10.dex */
public final class ProviderOfLazy<T> implements Provider<Lazy<T>> {

    /* renamed from: b */
    public static final /* synthetic */ boolean f94547b = false;

    /* renamed from: a */
    public final Provider<T> f94548a;

    public ProviderOfLazy(Provider<T> provider) {
        this.f94548a = provider;
    }

    public static <T> Provider<Lazy<T>> create(Provider<T> provider) {
        return new ProviderOfLazy((Provider) Preconditions.checkNotNull(provider));
    }

    @Deprecated
    public static <T> Provider<Lazy<T>> create(javax.inject.Provider<T> provider) {
        return create(Providers.asDaggerProvider(provider));
    }

    @Override // javax.inject.Provider
    public Lazy<T> get() {
        return DoubleCheck.lazy(this.f94548a);
    }
}
