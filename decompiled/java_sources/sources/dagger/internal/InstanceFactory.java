package dagger.internal;

import dagger.Lazy;

/* loaded from: classes10.dex */
public final class InstanceFactory<T> implements Factory<T>, Lazy<T> {

    /* renamed from: b */
    public static final InstanceFactory<Object> f94539b = new InstanceFactory<>(null);

    /* renamed from: a */
    public final T f94540a;

    public InstanceFactory(T t) {
        this.f94540a = t;
    }

    /* renamed from: a */
    public static <T> InstanceFactory<T> m60908a() {
        return (InstanceFactory<T>) f94539b;
    }

    public static <T> Factory<T> create(T t) {
        return new InstanceFactory(Preconditions.checkNotNull(t, "instance cannot be null"));
    }

    public static <T> Factory<T> createNullable(T t) {
        return t == null ? m60908a() : new InstanceFactory(t);
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.f94540a;
    }
}
