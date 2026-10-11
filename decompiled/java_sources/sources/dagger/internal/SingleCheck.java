package dagger.internal;

/* loaded from: classes10.dex */
public final class SingleCheck<T> implements Provider<T> {

    /* renamed from: c */
    public static final Object f94558c = new Object();

    /* renamed from: d */
    public static final /* synthetic */ boolean f94559d = false;

    /* renamed from: a */
    public volatile Provider<T> f94560a;

    /* renamed from: b */
    public volatile Object f94561b = f94558c;

    public SingleCheck(Provider<T> provider) {
        this.f94560a = provider;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((Provider) Preconditions.checkNotNull(p));
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.f94561b;
        if (t != f94558c) {
            return t;
        }
        Provider<T> provider = this.f94560a;
        if (provider == null) {
            return (T) this.f94561b;
        }
        T t2 = provider.get();
        this.f94561b = t2;
        this.f94560a = null;
        return t2;
    }

    public static <P extends javax.inject.Provider<T>, T> javax.inject.Provider<T> provider(P p) {
        return provider(Providers.asDaggerProvider(p));
    }
}
