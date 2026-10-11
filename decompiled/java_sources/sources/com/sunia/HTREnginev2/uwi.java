package com.sunia.HTREnginev2;

import com.google.firebase.inject.Provider;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes6.dex */
public class uwi<T> implements Provider<Set<T>> {

    /* renamed from: b */
    public volatile Set<T> f86910b = null;

    /* renamed from: a */
    public volatile Set<Provider<T>> f86909a = Collections.newSetFromMap(new ConcurrentHashMap());

    public uwi(Collection<Provider<T>> collection) {
        this.f86909a.addAll(collection);
    }

    /* renamed from: b */
    public static uwi<?> m57669b(Collection<Provider<?>> collection) {
        return new uwi<>((Set) collection);
    }

    /* renamed from: a */
    public synchronized void m57670a(Provider<T> provider) {
        if (this.f86910b == null) {
            this.f86909a.add(provider);
        } else {
            this.f86910b.add(provider.get());
        }
    }

    @Override // com.google.firebase.inject.Provider
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        if (this.f86910b == null) {
            synchronized (this) {
                if (this.f86910b == null) {
                    this.f86910b = Collections.newSetFromMap(new ConcurrentHashMap());
                    m57672d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f86910b);
    }

    /* renamed from: d */
    public final synchronized void m57672d() {
        Iterator<Provider<T>> it2 = this.f86909a.iterator();
        while (it2.hasNext()) {
            this.f86910b.add(it2.next().get());
        }
        this.f86909a = null;
    }
}
