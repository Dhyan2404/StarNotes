package org.apache.commons.lang3.concurrent;

/* loaded from: classes12.dex */
public abstract class LazyInitializer<T> implements ConcurrentInitializer<T> {

    /* renamed from: b */
    public static final Object f107515b = new Object();

    /* renamed from: a */
    public volatile T f107516a = (T) f107515b;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t = this.f107516a;
        Object obj = f107515b;
        if (t == obj) {
            synchronized (this) {
                t = this.f107516a;
                if (t == obj) {
                    t = initialize();
                    this.f107516a = t;
                }
            }
        }
        return t;
    }

    public abstract T initialize() throws ConcurrentException;
}
