package com.google.firebase.components;

import androidx.annotation.VisibleForTesting;
import com.google.firebase.inject.Provider;

/* loaded from: classes6.dex */
public class Lazy<T> implements Provider<T> {

    /* renamed from: c */
    public static final Object f35830c = new Object();

    /* renamed from: a */
    public volatile Object f35831a;

    /* renamed from: b */
    public volatile Provider<T> f35832b;

    public Lazy(T t) {
        this.f35831a = f35830c;
        this.f35831a = t;
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m28051a() {
        return this.f35831a != f35830c;
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        T t = (T) this.f35831a;
        Object obj = f35830c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f35831a;
                if (t == obj) {
                    t = this.f35832b.get();
                    this.f35831a = t;
                    this.f35832b = null;
                }
            }
        }
        return t;
    }

    public Lazy(Provider<T> provider) {
        this.f35831a = f35830c;
        this.f35832b = provider;
    }
}
