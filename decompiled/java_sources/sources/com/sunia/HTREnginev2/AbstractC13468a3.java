package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.Graphs;
import com.google.common.math.IntMath;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* renamed from: com.sunia.HTREnginev2.a3 */
/* loaded from: classes6.dex */
public abstract class AbstractC13468a3<N, E> implements rtj<N, E> {

    /* renamed from: a */
    public final Map<E, N> f64263a;

    /* renamed from: b */
    public final Map<E, N> f64264b;

    /* renamed from: c */
    public int f64265c;

    /* renamed from: com.sunia.HTREnginev2.a3$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractSet<E> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<E> iterator() {
            return Iterators.unmodifiableIterator((AbstractC13468a3.this.f64265c == 0 ? Iterables.concat(AbstractC13468a3.this.f64263a.keySet(), AbstractC13468a3.this.f64264b.keySet()) : Sets.union(AbstractC13468a3.this.f64263a.keySet(), AbstractC13468a3.this.f64264b.keySet())).iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC13468a3.this.f64263a.containsKey(obj) || AbstractC13468a3.this.f64264b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.saturatedAdd(AbstractC13468a3.this.f64263a.size(), AbstractC13468a3.this.f64264b.size() - AbstractC13468a3.this.f64265c);
        }
    }

    public AbstractC13468a3(Map<E, N> map, Map<E, N> map2, int i) {
        this.f64263a = (Map) Preconditions.checkNotNull(map);
        this.f64264b = (Map) Preconditions.checkNotNull(map2);
        this.f64265c = Graphs.m27049b(i);
        Preconditions.checkState(i <= map.size() && i <= map2.size());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: b */
    public Set<N> mo52942b() {
        return Sets.union(mo54676a(), mo54677c());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: d */
    public N mo52943d(E e) {
        N remove = this.f64264b.remove(e);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: e */
    public Set<E> mo52944e() {
        return Collections.unmodifiableSet(this.f64264b.keySet());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: f */
    public N mo52945f(E e) {
        N n = this.f64264b.get(e);
        Objects.requireNonNull(n);
        return n;
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: g */
    public Set<E> mo52946g() {
        return Collections.unmodifiableSet(this.f64263a.keySet());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: h */
    public N mo52947h(E e, boolean z) {
        if (z) {
            int i = this.f64265c - 1;
            this.f64265c = i;
            Graphs.m27049b(i);
        }
        N remove = this.f64263a.remove(e);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: i */
    public void mo52948i(E e, N n) {
        Preconditions.checkNotNull(e);
        Preconditions.checkNotNull(n);
        Preconditions.checkState(this.f64264b.put(e, n) == null);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: j */
    public void mo52949j(E e, N n, boolean z) {
        Preconditions.checkNotNull(e);
        Preconditions.checkNotNull(n);
        if (z) {
            int i = this.f64265c + 1;
            this.f64265c = i;
            Graphs.m27051d(i);
        }
        Preconditions.checkState(this.f64263a.put(e, n) == null);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: k */
    public Set<E> mo52950k() {
        return new a();
    }
}
