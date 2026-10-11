package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.Lazy;

/* loaded from: classes4.dex */
public final class InstanceFactory<T> implements Factory<T>, Lazy<T> {

    /* renamed from: b */
    public static final InstanceFactory<Object> f21985b = new InstanceFactory<>(null);

    /* renamed from: a */
    public final T f21986a;

    public InstanceFactory(T t) {
        this.f21986a = t;
    }

    /* renamed from: a */
    public static <T> InstanceFactory<T> m17445a() {
        return (InstanceFactory<T>) f21985b;
    }

    public static <T> Factory<T> create(T t) {
        return new InstanceFactory(Preconditions.checkNotNull(t, "instance cannot be null"));
    }

    public static <T> Factory<T> createNullable(T t) {
        return t == null ? m17445a() : new InstanceFactory(t);
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.f21986a;
    }
}
