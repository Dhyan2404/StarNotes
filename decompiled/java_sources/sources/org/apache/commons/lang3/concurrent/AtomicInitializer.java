package org.apache.commons.lang3.concurrent;

import com.sunia.HTREnginev2.cyi;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes12.dex */
public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {

    /* renamed from: a */
    public final AtomicReference<T> f107484a = new AtomicReference<>();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t = this.f107484a.get();
        if (t != null) {
            return t;
        }
        T initialize = initialize();
        return !cyi.m53538a(this.f107484a, null, initialize) ? this.f107484a.get() : initialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
