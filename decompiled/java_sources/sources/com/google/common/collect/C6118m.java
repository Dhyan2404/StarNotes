package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.C6118m;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.sunia.HTREnginev2.hmg;
import com.sunia.HTREnginev2.img;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.m */
/* loaded from: classes6.dex */
public class C6118m<K, V> extends AbstractC6111f<K, V> implements hmg<K, V> {

    /* renamed from: e */
    public final Multimap<K, V> f34609e;

    /* renamed from: f */
    public final Predicate<? super Map.Entry<K, V>> f34610f;

    /* renamed from: com.google.common.collect.m$a */
    /* loaded from: classes6.dex */
    public class a extends Maps.AbstractC5959m0<K, Collection<V>> {

        /* renamed from: com.google.common.collect.m$a$a, reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class C20593a extends Maps.AbstractC5963q<K, Collection<V>> {

            /* renamed from: com.google.common.collect.m$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20594a extends AbstractIterator<Map.Entry<K, Collection<V>>> {

                /* renamed from: g */
                public final Iterator<Map.Entry<K, Collection<V>>> f34613g;

                public C20594a() {
                    this.f34613g = C6118m.this.f34609e.asMap().entrySet().iterator();
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, Collection<V>> computeNext() {
                    while (this.f34613g.hasNext()) {
                        Map.Entry<K, Collection<V>> next = this.f34613g.next();
                        K key = next.getKey();
                        Collection m26994f = C6118m.m26994f(next.getValue(), new c(key));
                        if (!m26994f.isEmpty()) {
                            return Maps.immutableEntry(key, m26994f);
                        }
                    }
                    return endOfData();
                }
            }

            public C20593a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, Collection<V>> mo26018a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C20594a();
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return C6118m.this.m26997g(Predicates.m25817in(collection));
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C6118m.this.m26997g(Predicates.not(Predicates.m25817in(collection)));
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Iterators.size(iterator());
            }
        }

        /* renamed from: com.google.common.collect.m$a$b */
        /* loaded from: classes6.dex */
        public class b extends Maps.C5971y<K, Collection<V>> {
            public b() {
                super(a.this);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                return a.this.remove(obj) != null;
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return C6118m.this.m26997g(Maps.m26505y(Predicates.m25817in(collection)));
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C6118m.this.m26997g(Maps.m26505y(Predicates.not(Predicates.m25817in(collection))));
            }
        }

        /* renamed from: com.google.common.collect.m$a$c */
        /* loaded from: classes6.dex */
        public class c extends Maps.C5957l0<K, Collection<V>> {
            public c() {
                super(a.this);
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Collection)) {
                    return false;
                }
                Collection collection = (Collection) obj;
                Iterator<Map.Entry<K, Collection<V>>> it2 = C6118m.this.f34609e.asMap().entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<K, Collection<V>> next = it2.next();
                    Collection m26994f = C6118m.m26994f(next.getValue(), new c(next.getKey()));
                    if (!m26994f.isEmpty() && collection.equals(m26994f)) {
                        if (m26994f.size() == next.getValue().size()) {
                            it2.remove();
                            return true;
                        }
                        m26994f.clear();
                        return true;
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return C6118m.this.m26997g(Maps.m26480S(Predicates.m25817in(collection)));
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return C6118m.this.m26997g(Maps.m26480S(Predicates.not(Predicates.m25817in(collection))));
            }
        }

        public a() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, Collection<V>>> mo26014a() {
            return new C20593a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: b */
        public Set<K> mo26021g() {
            return new b();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: c */
        public Collection<Collection<V>> mo26534c() {
            return new c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            C6118m.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(@CheckForNull Object obj) {
            Collection<V> collection = C6118m.this.f34609e.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> m26994f = C6118m.m26994f(collection, new c(obj));
            if (m26994f.isEmpty()) {
                return null;
            }
            return m26994f;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(@CheckForNull Object obj) {
            Collection<V> collection = C6118m.this.f34609e.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList newArrayList = Lists.newArrayList();
            Iterator<V> it2 = collection.iterator();
            while (it2.hasNext()) {
                V next = it2.next();
                if (C6118m.this.m26998h(obj, next)) {
                    it2.remove();
                    newArrayList.add(next);
                }
            }
            if (newArrayList.isEmpty()) {
                return null;
            }
            return C6118m.this.f34609e instanceof SetMultimap ? Collections.unmodifiableSet(Sets.newLinkedHashSet(newArrayList)) : Collections.unmodifiableList(newArrayList);
        }
    }

    /* renamed from: com.google.common.collect.m$b */
    /* loaded from: classes6.dex */
    public class b extends Multimaps.C5992c<K, V> {

        /* renamed from: com.google.common.collect.m$b$a */
        /* loaded from: classes6.dex */
        public class a extends Multisets.AbstractC6003i<K> {
            public a() {
            }

            /* renamed from: c */
            public static /* synthetic */ boolean m27004c(Predicate predicate, Map.Entry entry) {
                return predicate.apply(Multisets.immutableEntry(entry.getKey(), ((Collection) entry.getValue()).size()));
            }

            @Override // com.google.common.collect.Multisets.AbstractC6003i
            /* renamed from: a */
            public Multiset<K> mo26120a() {
                return b.this;
            }

            /* renamed from: d */
            public final boolean m27005d(final Predicate<? super Multiset.Entry<K>> predicate) {
                return C6118m.this.m26997g(new Predicate() { // from class: com.sunia.HTREnginev2.cmg
                    @Override // com.google.common.base.Predicate
                    public final boolean apply(Object obj) {
                        boolean m27004c;
                        m27004c = C6118m.b.a.m27004c(Predicate.this, (Map.Entry) obj);
                        return m27004c;
                    }
                });
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Multiset.Entry<K>> iterator() {
                return b.this.entryIterator();
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return m27005d(Predicates.m25817in(collection));
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return m27005d(Predicates.not(Predicates.m25817in(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return C6118m.this.keySet().size();
            }
        }

        public b() {
            super(C6118m.this);
        }

        @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public Set<Multiset.Entry<K>> entrySet() {
            return new a();
        }

        @Override // com.google.common.collect.Multimaps.C5992c, com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public int remove(@CheckForNull Object obj, int i) {
            szd.m57279b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection<V> collection = C6118m.this.f34609e.asMap().get(obj);
            int i2 = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (C6118m.this.m26998h(obj, it2.next()) && (i2 = i2 + 1) <= i) {
                    it2.remove();
                }
            }
            return i2;
        }
    }

    /* renamed from: com.google.common.collect.m$c */
    /* loaded from: classes6.dex */
    public final class c implements Predicate<V> {

        /* renamed from: e */
        @xvk
        public final K f34619e;

        public c(@xvk K k) {
            this.f34619e = k;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@xvk V v) {
            return C6118m.this.m26998h(this.f34619e, v);
        }
    }

    public C6118m(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        this.f34609e = (Multimap) Preconditions.checkNotNull(multimap);
        this.f34610f = (Predicate) Preconditions.checkNotNull(predicate);
    }

    /* renamed from: f */
    public static <E> Collection<E> m26994f(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof Set ? Sets.filter((Set) collection, predicate) : Collections2.filter(collection, predicate);
    }

    @Override // com.sunia.HTREnginev2.hmg
    /* renamed from: a */
    public Multimap<K, V> mo26995a() {
        return this.f34609e;
    }

    @Override // com.sunia.HTREnginev2.hmg
    /* renamed from: c */
    public Predicate<? super Map.Entry<K, V>> mo26996c() {
        return this.f34610f;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        entries().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        return asMap().get(obj) != null;
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Map<K, Collection<V>> createAsMap() {
        return new a();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<Map.Entry<K, V>> createEntries() {
        return m26994f(this.f34609e.entries(), this.f34610f);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Set<K> createKeySet() {
        return asMap().keySet();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Multiset<K> createKeys() {
        return new b();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<V> createValues() {
        return new img(this);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    /* renamed from: g */
    public boolean m26997g(Predicate<? super Map.Entry<K, Collection<V>>> predicate) {
        Iterator<Map.Entry<K, Collection<V>>> it2 = this.f34609e.asMap().entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Map.Entry<K, Collection<V>> next = it2.next();
            K key = next.getKey();
            Collection m26994f = m26994f(next.getValue(), new c(key));
            if (!m26994f.isEmpty() && predicate.apply(Maps.immutableEntry(key, m26994f))) {
                if (m26994f.size() == next.getValue().size()) {
                    it2.remove();
                } else {
                    m26994f.clear();
                }
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@xvk K k) {
        return m26994f(this.f34609e.get(k), new c(k));
    }

    /* renamed from: h */
    public final boolean m26998h(@xvk K k, @xvk V v) {
        return this.f34610f.apply(Maps.immutableEntry(k, v));
    }

    /* renamed from: i */
    public Collection<V> m26999i() {
        return this.f34609e instanceof SetMultimap ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@CheckForNull Object obj) {
        return (Collection) MoreObjects.firstNonNull(asMap().remove(obj), m26999i());
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return entries().size();
    }
}
