package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public class p8j<K, V> {

    /* renamed from: a */
    public final Map<K, V> f80556a;

    /* renamed from: b */
    @CheckForNull
    public volatile transient Map.Entry<K, V> f80557b;

    /* renamed from: com.sunia.HTREnginev2.p8j$a */
    /* loaded from: classes6.dex */
    public class C14230a extends AbstractSet<K> {

        /* renamed from: com.sunia.HTREnginev2.p8j$a$a */
        /* loaded from: classes6.dex */
        public class a extends UnmodifiableIterator<K> {

            /* renamed from: e */
            public final /* synthetic */ Iterator f80559e;

            public a(Iterator it2) {
                this.f80559e = it2;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f80559e.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.f80559e.next();
                p8j.this.f80557b = entry;
                return (K) entry.getKey();
            }
        }

        public C14230a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<K> iterator() {
            return new a(p8j.this.f80556a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return p8j.this.m56241e(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return p8j.this.f80556a.size();
        }
    }

    public p8j(Map<K, V> map) {
        this.f80556a = (Map) Preconditions.checkNotNull(map);
    }

    /* renamed from: c */
    public final void m56239c() {
        mo56240d();
        this.f80556a.clear();
    }

    /* renamed from: d */
    public void mo56240d() {
        this.f80557b = null;
    }

    /* renamed from: e */
    public final boolean m56241e(@CheckForNull Object obj) {
        return mo56243g(obj) != null || this.f80556a.containsKey(obj);
    }

    @CheckForNull
    /* renamed from: f */
    public V mo56242f(Object obj) {
        Preconditions.checkNotNull(obj);
        V mo56243g = mo56243g(obj);
        return mo56243g == null ? m56244h(obj) : mo56243g;
    }

    @CheckForNull
    /* renamed from: g */
    public V mo56243g(@CheckForNull Object obj) {
        Map.Entry<K, V> entry = this.f80557b;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }

    @CheckForNull
    /* renamed from: h */
    public final V m56244h(Object obj) {
        Preconditions.checkNotNull(obj);
        return this.f80556a.get(obj);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: i */
    public final V m56245i(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        mo56240d();
        return this.f80556a.put(k, v);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: j */
    public final V m56246j(Object obj) {
        Preconditions.checkNotNull(obj);
        mo56240d();
        return this.f80556a.remove(obj);
    }

    /* renamed from: k */
    public final Set<K> m56247k() {
        return new C14230a();
    }
}
