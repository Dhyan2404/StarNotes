package dagger.internal;

/* loaded from: classes10.dex */
public final class Providers {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: dagger.internal.Providers$a */
    /* loaded from: classes10.dex */
    public class C17067a<T> implements Provider<T> {

        /* renamed from: a */
        public final /* synthetic */ javax.inject.Provider f94549a;

        public C17067a(javax.inject.Provider provider) {
            this.f94549a = provider;
        }

        @Override // javax.inject.Provider
        public T get() {
            return (T) this.f94549a.get();
        }
    }

    public static <T> Provider<T> asDaggerProvider(javax.inject.Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        return new C17067a(provider);
    }
}
