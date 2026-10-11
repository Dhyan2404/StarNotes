package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.Map;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public final class ukf<E> extends AbstractSet<E> {

    /* renamed from: e */
    public final Map<?, E> f86577e;

    /* renamed from: f */
    public final Object f86578f;

    public ukf(Map<?, E> map, Object obj) {
        this.f86577e = (Map) Preconditions.checkNotNull(map);
        this.f86578f = Preconditions.checkNotNull(obj);
    }

    @CheckForNull
    /* renamed from: a */
    public final E m57634a() {
        return this.f86577e.get(this.f86578f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public UnmodifiableIterator<E> iterator() {
        E m57634a = m57634a();
        return m57634a == null ? ImmutableSet.m26234of().iterator() : Iterators.singletonIterator(m57634a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        E m57634a = m57634a();
        return m57634a != null && m57634a.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return m57634a() == null ? 0 : 1;
    }
}
