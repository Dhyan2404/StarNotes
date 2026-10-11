package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public final class k5f<N, E> extends AbstractC13468a3<N, E> {

    /* renamed from: d */
    @CheckForNull
    @LazyInit
    public transient Reference<Multiset<N>> f75101d;

    /* renamed from: e */
    @CheckForNull
    @LazyInit
    public transient Reference<Multiset<N>> f75102e;

    /* renamed from: com.sunia.HTREnginev2.k5f$a */
    /* loaded from: classes6.dex */
    public class C13981a extends wpj<E> {

        /* renamed from: g */
        public final /* synthetic */ Object f75103g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13981a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f75103g = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k5f.this.m55190s().count(this.f75103g);
        }
    }

    public k5f(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    @CheckForNull
    /* renamed from: o */
    public static <T> T m55186o(@CheckForNull Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* renamed from: p */
    public static <N, E> k5f<N, E> m55187p() {
        return new k5f<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    /* renamed from: q */
    public static <N, E> k5f<N, E> m55188q(Map<E, N> map, Map<E, N> map2, int i) {
        return new k5f<>(ImmutableMap.copyOf((Map) map), ImmutableMap.copyOf((Map) map2), i);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: a */
    public Set<N> mo54676a() {
        return Collections.unmodifiableSet(m55189r().elementSet());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: c */
    public Set<N> mo54677c() {
        return Collections.unmodifiableSet(m55190s().elementSet());
    }

    @Override // com.sunia.HTREnginev2.AbstractC13468a3, com.sunia.HTREnginev2.rtj
    /* renamed from: d */
    public N mo52943d(E e) {
        N n = (N) super.mo52943d(e);
        Multiset multiset = (Multiset) m55186o(this.f75102e);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13468a3, com.sunia.HTREnginev2.rtj
    /* renamed from: h */
    public N mo52947h(E e, boolean z) {
        N n = (N) super.mo52947h(e, z);
        Multiset multiset = (Multiset) m55186o(this.f75101d);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13468a3, com.sunia.HTREnginev2.rtj
    /* renamed from: i */
    public void mo52948i(E e, N n) {
        super.mo52948i(e, n);
        Multiset multiset = (Multiset) m55186o(this.f75102e);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13468a3, com.sunia.HTREnginev2.rtj
    /* renamed from: j */
    public void mo52949j(E e, N n, boolean z) {
        super.mo52949j(e, n, z);
        Multiset multiset = (Multiset) m55186o(this.f75101d);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: l */
    public Set<E> mo55041l(N n) {
        return new C13981a(this.f64264b, n, n);
    }

    /* renamed from: r */
    public final Multiset<N> m55189r() {
        Multiset<N> multiset = (Multiset) m55186o(this.f75101d);
        if (multiset != null) {
            return multiset;
        }
        HashMultiset create = HashMultiset.create(this.f64263a.values());
        this.f75101d = new SoftReference(create);
        return create;
    }

    /* renamed from: s */
    public final Multiset<N> m55190s() {
        Multiset<N> multiset = (Multiset) m55186o(this.f75102e);
        if (multiset != null) {
            return multiset;
        }
        HashMultiset create = HashMultiset.create(this.f64264b.values());
        this.f75102e = new SoftReference(create);
        return create;
    }
}
