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
public final class jsn<N, E> extends AbstractC13862i5<N, E> {

    /* renamed from: b */
    @CheckForNull
    @LazyInit
    public transient Reference<Multiset<N>> f74674b;

    /* renamed from: com.sunia.HTREnginev2.jsn$a */
    /* loaded from: classes6.dex */
    public class C13949a extends wpj<E> {

        /* renamed from: g */
        public final /* synthetic */ Object f74675g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13949a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f74675g = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return jsn.this.m55042n().count(this.f74675g);
        }
    }

    public jsn(Map<E, N> map) {
        super(map);
    }

    @CheckForNull
    /* renamed from: o */
    public static <T> T m55038o(@CheckForNull Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* renamed from: p */
    public static <N, E> jsn<N, E> m55039p() {
        return new jsn<>(new HashMap(2, 1.0f));
    }

    /* renamed from: q */
    public static <N, E> jsn<N, E> m55040q(Map<E, N> map) {
        return new jsn<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: b */
    public Set<N> mo52942b() {
        return Collections.unmodifiableSet(m55042n().elementSet());
    }

    @Override // com.sunia.HTREnginev2.AbstractC13862i5, com.sunia.HTREnginev2.rtj
    /* renamed from: d */
    public N mo52943d(E e) {
        N n = (N) super.mo52943d(e);
        Multiset multiset = (Multiset) m55038o(this.f74674b);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13862i5, com.sunia.HTREnginev2.rtj
    @CheckForNull
    /* renamed from: h */
    public N mo52947h(E e, boolean z) {
        if (z) {
            return null;
        }
        return mo52943d(e);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13862i5, com.sunia.HTREnginev2.rtj
    /* renamed from: i */
    public void mo52948i(E e, N n) {
        super.mo52948i(e, n);
        Multiset multiset = (Multiset) m55038o(this.f74674b);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13862i5, com.sunia.HTREnginev2.rtj
    /* renamed from: j */
    public void mo52949j(E e, N n, boolean z) {
        if (z) {
            return;
        }
        mo52948i(e, n);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: l */
    public Set<E> mo55041l(N n) {
        return new C13949a(this.f72878a, n, n);
    }

    /* renamed from: n */
    public final Multiset<N> m55042n() {
        Multiset<N> multiset = (Multiset) m55038o(this.f74674b);
        if (multiset != null) {
            return multiset;
        }
        HashMultiset create = HashMultiset.create(this.f72878a.values());
        this.f74674b = new SoftReference(create);
        return create;
    }
}
