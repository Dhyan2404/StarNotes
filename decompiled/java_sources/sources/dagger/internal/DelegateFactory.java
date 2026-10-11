package dagger.internal;

/* loaded from: classes10.dex */
public final class DelegateFactory<T> implements Factory<T> {

    /* renamed from: a */
    public Provider<T> f94534a;

    /* renamed from: b */
    public static <T> void m60905b(DelegateFactory<T> delegateFactory, Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        if (delegateFactory.f94534a != null) {
            throw new IllegalStateException();
        }
        delegateFactory.f94534a = provider;
    }

    public static <T> void setDelegate(Provider<T> provider, Provider<T> provider2) {
        m60905b((DelegateFactory) provider, provider2);
    }

    /* renamed from: a */
    public Provider<T> m60906a() {
        return (Provider) Preconditions.checkNotNull(this.f94534a);
    }

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.f94534a;
        if (provider != null) {
            return provider.get();
        }
        throw new IllegalStateException();
    }

    @Deprecated
    public void setDelegatedProvider(Provider<T> provider) {
        setDelegate((Provider) this, (Provider) provider);
    }

    @Deprecated
    public void setDelegatedProvider(javax.inject.Provider<T> provider) {
        setDelegatedProvider((Provider) Providers.asDaggerProvider(provider));
    }

    @Deprecated
    public static <T> void setDelegate(javax.inject.Provider<T> provider, javax.inject.Provider<T> provider2) {
        m60905b((DelegateFactory) provider, Providers.asDaggerProvider(provider2));
    }
}
