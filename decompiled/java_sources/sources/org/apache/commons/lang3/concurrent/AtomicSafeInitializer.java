package org.apache.commons.lang3.concurrent;

import com.sunia.HTREnginev2.cyi;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes12.dex */
public abstract class AtomicSafeInitializer<T> implements ConcurrentInitializer<T> {

    /* renamed from: a */
    public final AtomicReference<AtomicSafeInitializer<T>> f107485a = new AtomicReference<>();

    /* renamed from: b */
    public final AtomicReference<T> f107486b = new AtomicReference<>();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public final T get() throws ConcurrentException {
        while (true) {
            T t = this.f107486b.get();
            if (t != null) {
                return t;
            }
            if (cyi.m53538a(this.f107485a, null, this)) {
                this.f107486b.set(initialize());
            }
        }
    }

    public abstract T initialize() throws ConcurrentException;
}
