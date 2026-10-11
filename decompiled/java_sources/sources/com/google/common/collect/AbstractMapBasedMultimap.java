package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractC6111f;
import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractC6111f<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$a */
    /* loaded from: classes6.dex */
    public class C5754a extends AbstractMapBasedMultimap<K, V>.AbstractC5757d<V> {
        public C5754a(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AbstractC5757d
        @xvk
        /* renamed from: a */
        public V mo26012a(@xvk K k, @xvk V v) {
            return v;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$b */
    /* loaded from: classes6.dex */
    public class C5755b extends AbstractMapBasedMultimap<K, V>.AbstractC5757d<Map.Entry<K, V>> {
        public C5755b(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AbstractC5757d
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo26012a(@xvk K k, @xvk V v) {
            return Maps.immutableEntry(k, v);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c */
    /* loaded from: classes6.dex */
    public class C5756c extends Maps.AbstractC5959m0<K, Collection<V>> {

        /* renamed from: h */
        public final transient Map<K, Collection<V>> f33863h;

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c$a */
        /* loaded from: classes6.dex */
        public class a extends Maps.AbstractC5963q<K, Collection<V>> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, Collection<V>> mo26018a() {
                return C5756c.this;
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return Collections2.m26077e(C5756c.this.f33863h.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap.this.removeValuesForKey(entry.getKey());
                return true;
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set
            public Spliterator<Map.Entry<K, Collection<V>>> spliterator() {
                Spliterator<Map.Entry<K, Collection<V>>> spliterator = C5756c.this.f33863h.entrySet().spliterator();
                final C5756c c5756c = C5756c.this;
                return vzd.m57903h(spliterator, new Function() { // from class: com.sunia.HTREnginev2.y3
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return AbstractMapBasedMultimap.C5756c.this.m26017f((Map.Entry) obj);
                    }
                });
            }
        }

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c$b */
        /* loaded from: classes6.dex */
        public class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: e */
            public final Iterator<Map.Entry<K, Collection<V>>> f33866e;

            /* renamed from: f */
            @CheckForNull
            public Collection<V> f33867f;

            public b() {
                this.f33866e = C5756c.this.f33863h.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f33866e.next();
                this.f33867f = next.getValue();
                return C5756c.this.m26017f(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33866e.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.f33867f != null, "no calls to next() since the last call to remove()");
                this.f33866e.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.f33867f.size());
                this.f33867f.clear();
                this.f33867f = null;
            }
        }

        public C5756c(Map<K, Collection<V>> map) {
            this.f33863h = map;
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, Collection<V>>> mo26014a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f33863h == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.m26340c(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return Maps.m26467F(this.f33863h, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(@CheckForNull Object obj) {
            Collection<V> collection = (Collection) Maps.m26468G(this.f33863h, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(@CheckForNull Object obj) {
            Collection<V> remove = this.f33863h.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> createCollection = AbstractMapBasedMultimap.this.createCollection();
            createCollection.addAll(remove);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, remove.size());
            remove.clear();
            return createCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@CheckForNull Object obj) {
            return this == obj || this.f33863h.equals(obj);
        }

        /* renamed from: f */
        public Map.Entry<K, Collection<V>> m26017f(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.immutableEntry(key, AbstractMapBasedMultimap.this.wrapCollection(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f33863h.hashCode();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33863h.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f33863h.toString();
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$d */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5757d<T> implements Iterator<T> {

        /* renamed from: e */
        public final Iterator<Map.Entry<K, Collection<V>>> f33869e;

        /* renamed from: f */
        @CheckForNull
        public K f33870f = null;

        /* renamed from: g */
        @CheckForNull
        public Collection<V> f33871g = null;

        /* renamed from: h */
        public Iterator<V> f33872h = Iterators.m26345h();

        public AbstractC5757d() {
            this.f33869e = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        /* renamed from: a */
        public abstract T mo26012a(@xvk K k, @xvk V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33869e.hasNext() || this.f33872h.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f33872h.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f33869e.next();
                this.f33870f = next.getKey();
                Collection<V> value = next.getValue();
                this.f33871g = value;
                this.f33872h = value.iterator();
            }
            return mo26012a(p5k.m56213a(this.f33870f), this.f33872h.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f33872h.remove();
            Collection<V> collection = this.f33871g;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f33869e.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$e */
    /* loaded from: classes6.dex */
    public class C5758e extends Maps.C5971y<K, Collection<V>> {

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$e$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<K> {

            /* renamed from: e */
            @CheckForNull
            public Map.Entry<K, Collection<V>> f33875e;

            /* renamed from: f */
            public final /* synthetic */ Iterator f33876f;

            public a(Iterator it2) {
                this.f33876f = it2;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33876f.hasNext();
            }

            @Override // java.util.Iterator
            @xvk
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f33876f.next();
                this.f33875e = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.f33875e != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.f33875e.getValue();
                this.f33876f.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, value.size());
                value.clear();
                this.f33875e = null;
            }
        }

        public C5758e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.m26340c(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo26514d().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return this == obj || mo26514d().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return mo26514d().keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(mo26514d().entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            int i;
            Collection<V> remove = mo26514d().remove(obj);
            if (remove != null) {
                i = remove.size();
                remove.clear();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, i);
            } else {
                i = 0;
            }
            return i > 0;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<K> spliterator() {
            return mo26514d().keySet().spliterator();
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$f */
    /* loaded from: classes6.dex */
    public class C5759f extends AbstractMapBasedMultimap<K, V>.C5762i implements NavigableMap<K, Collection<V>> {
        public C5759f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> ceilingEntry(@xvk K k) {
            Map.Entry<K, Collection<V>> ceilingEntry = mo26023i().ceilingEntry(k);
            if (ceilingEntry == null) {
                return null;
            }
            return m26017f(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K ceilingKey(@xvk K k) {
            return mo26023i().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new C5759f(mo26023i().descendingMap());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = mo26023i().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return m26017f(firstEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> floorEntry(@xvk K k) {
            Map.Entry<K, Collection<V>> floorEntry = mo26023i().floorEntry(k);
            if (floorEntry == null) {
                return null;
            }
            return m26017f(floorEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K floorKey(@xvk K k) {
            return mo26023i().floorKey(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> higherEntry(@xvk K k) {
            Map.Entry<K, Collection<V>> higherEntry = mo26023i().higherEntry(k);
            if (higherEntry == null) {
                return null;
            }
            return m26017f(higherEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K higherKey(@xvk K k) {
            return mo26023i().higherKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i
        /* renamed from: j, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> mo26021g() {
            return new C5760g(mo26023i());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> headMap(@xvk K k) {
            return headMap(k, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i, com.google.common.collect.AbstractMapBasedMultimap.C5756c, com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        /* renamed from: l, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = mo26023i().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return m26017f(lastEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> lowerEntry(@xvk K k) {
            Map.Entry<K, Collection<V>> lowerEntry = mo26023i().lowerEntry(k);
            if (lowerEntry == null) {
                return null;
            }
            return m26017f(lowerEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K lowerKey(@xvk K k) {
            return mo26023i().lowerKey(k);
        }

        @CheckForNull
        /* renamed from: m */
        public Map.Entry<K, Collection<V>> m26027m(Iterator<Map.Entry<K, Collection<V>>> it2) {
            if (!it2.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it2.next();
            Collection<V> createCollection = AbstractMapBasedMultimap.this.createCollection();
            createCollection.addAll(next.getValue());
            it2.remove();
            return Maps.immutableEntry(next.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(createCollection));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> mo26023i() {
            return (NavigableMap) super.mo26023i();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return mo26022h();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> subMap(@xvk K k, @xvk K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5762i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: p, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> tailMap(@xvk K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m26027m(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m26027m(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(@xvk K k, boolean z) {
            return new C5759f(mo26023i().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return new C5759f(mo26023i().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(@xvk K k, boolean z) {
            return new C5759f(mo26023i().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$g */
    /* loaded from: classes6.dex */
    public class C5760g extends AbstractMapBasedMultimap<K, V>.C5763j implements NavigableSet<K> {
        public C5760g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K ceiling(@xvk K k) {
            return mo26031d().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new C5760g(mo26031d().descendingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5763j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> headSet(@xvk K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K floor(@xvk K k) {
            return mo26031d().floorKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5763j
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> mo26031d() {
            return (NavigableMap) super.mo26031d();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5763j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> subSet(@xvk K k, @xvk K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K higher(@xvk K k) {
            return mo26031d().higherKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5763j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> tailSet(@xvk K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K lower(@xvk K k) {
            return mo26031d().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K pollFirst() {
            return (K) Iterators.m26348k(iterator());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K pollLast() {
            return (K) Iterators.m26348k(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(@xvk K k, boolean z) {
            return new C5760g(mo26031d().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return new C5760g(mo26031d().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(@xvk K k, boolean z) {
            return new C5760g(mo26031d().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$h */
    /* loaded from: classes6.dex */
    public class C5761h extends AbstractMapBasedMultimap<K, V>.C5765l implements RandomAccess {
        public C5761h(@xvk AbstractMapBasedMultimap abstractMapBasedMultimap, K k, @CheckForNull List<V> list, AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
            super(k, list, c5764k);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$i */
    /* loaded from: classes6.dex */
    public class C5762i extends AbstractMapBasedMultimap<K, V>.C5756c implements SortedMap<K, Collection<V>> {

        /* renamed from: j */
        @CheckForNull
        public SortedSet<K> f33880j;

        public C5762i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return mo26023i().comparator();
        }

        @Override // java.util.SortedMap
        @xvk
        public K firstKey() {
            return mo26023i().firstKey();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: g */
        public SortedSet<K> mo26021g() {
            return new C5763j(mo26023i());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5756c, com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f33880j;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> mo26021g = mo26021g();
            this.f33880j = mo26021g;
            return mo26021g;
        }

        public SortedMap<K, Collection<V>> headMap(@xvk K k) {
            return new C5762i(mo26023i().headMap(k));
        }

        /* renamed from: i */
        public SortedMap<K, Collection<V>> mo26023i() {
            return (SortedMap) this.f33863h;
        }

        @Override // java.util.SortedMap
        @xvk
        public K lastKey() {
            return mo26023i().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(@xvk K k, @xvk K k2) {
            return new C5762i(mo26023i().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(@xvk K k) {
            return new C5762i(mo26023i().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$j */
    /* loaded from: classes6.dex */
    public class C5763j extends AbstractMapBasedMultimap<K, V>.C5758e implements SortedSet<K> {
        public C5763j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public Comparator<? super K> comparator() {
            return mo26031d().comparator();
        }

        /* renamed from: d */
        public SortedMap<K, Collection<V>> mo26031d() {
            return (SortedMap) super.mo26514d();
        }

        @Override // java.util.SortedSet
        @xvk
        public K first() {
            return mo26031d().firstKey();
        }

        public SortedSet<K> headSet(@xvk K k) {
            return new C5763j(mo26031d().headMap(k));
        }

        @Override // java.util.SortedSet
        @xvk
        public K last() {
            return mo26031d().lastKey();
        }

        public SortedSet<K> subSet(@xvk K k, @xvk K k2) {
            return new C5763j(mo26031d().subMap(k, k2));
        }

        public SortedSet<K> tailSet(@xvk K k) {
            return new C5763j(mo26031d().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$m */
    /* loaded from: classes6.dex */
    public class C5766m extends AbstractMapBasedMultimap<K, V>.C5768o implements NavigableSet<V> {
        public C5766m(@xvk K k, NavigableSet<V> navigableSet, @CheckForNull AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
            super(k, navigableSet, c5764k);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V ceiling(@xvk V v) {
            return mo26046h().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new C5764k.a(mo26046h().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return m26048j(mo26046h().descendingSet());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V floor(@xvk V v) {
            return mo26046h().floor(v);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(@xvk V v, boolean z) {
            return m26048j(mo26046h().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V higher(@xvk V v) {
            return mo26046h().higher(v);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5768o
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public NavigableSet<V> mo26046h() {
            return (NavigableSet) super.mo26046h();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* renamed from: j */
        public final NavigableSet<V> m26048j(NavigableSet<V> navigableSet) {
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            K k = this.f33883e;
            AbstractMapBasedMultimap<K, V>.C5764k m26037b = m26037b();
            ?? r4 = this;
            if (m26037b != null) {
                r4 = m26037b();
            }
            return new C5766m(k, navigableSet, r4);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V lower(@xvk V v) {
            return mo26046h().lower(v);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V pollFirst() {
            return (V) Iterators.m26348k(iterator());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public V pollLast() {
            return (V) Iterators.m26348k(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(@xvk V v, boolean z, @xvk V v2, boolean z2) {
            return m26048j(mo26046h().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(@xvk V v, boolean z) {
            return m26048j(mo26046h().tailSet(v, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$n */
    /* loaded from: classes6.dex */
    public class C5767n extends AbstractMapBasedMultimap<K, V>.C5764k implements Set<V> {
        public C5767n(@xvk K k, Set<V> set) {
            super(k, set, null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C5764k, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean m26678d = Sets.m26678d((Set) this.f33884f, collection);
            if (m26678d) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f33884f.size() - size);
                m26041g();
            }
            return m26678d;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$o */
    /* loaded from: classes6.dex */
    public class C5768o extends AbstractMapBasedMultimap<K, V>.C5764k implements SortedSet<V> {
        public C5768o(@xvk K k, SortedSet<V> sortedSet, @CheckForNull AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
            super(k, sortedSet, c5764k);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public Comparator<? super V> comparator() {
            return mo26046h().comparator();
        }

        @Override // java.util.SortedSet
        @xvk
        public V first() {
            m26040e();
            return mo26046h().first();
        }

        /* renamed from: h */
        public SortedSet<V> mo26046h() {
            return (SortedSet) m26038c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> headSet(@xvk V v) {
            m26040e();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object m26039d = m26039d();
            SortedSet<V> headSet = mo26046h().headSet(v);
            AbstractMapBasedMultimap<K, V>.C5764k m26037b = m26037b();
            ?? r4 = this;
            if (m26037b != null) {
                r4 = m26037b();
            }
            return new C5768o(m26039d, headSet, r4);
        }

        @Override // java.util.SortedSet
        @xvk
        public V last() {
            m26040e();
            return mo26046h().last();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> subSet(@xvk V v, @xvk V v2) {
            m26040e();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object m26039d = m26039d();
            SortedSet<V> subSet = mo26046h().subSet(v, v2);
            AbstractMapBasedMultimap<K, V>.C5764k m26037b = m26037b();
            ?? r4 = this;
            if (m26037b != null) {
                r4 = m26037b();
            }
            return new C5768o(m26039d, subSet, r4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(@xvk V v) {
            m26040e();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object m26039d = m26039d();
            SortedSet<V> tailSet = mo26046h().tailSet(v);
            AbstractMapBasedMultimap<K, V>.C5764k m26037b = m26037b();
            ?? r4 = this;
            if (m26037b != null) {
                r4 = m26037b();
            }
            return new C5768o(m26039d, tailSet, r4);
        }
    }

    public AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.map = map;
    }

    public static /* synthetic */ int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i + 1;
        return i;
    }

    public static /* synthetic */ int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i - 1;
        return i;
    }

    public static /* synthetic */ int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize + i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    public static /* synthetic */ int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize - i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    private Collection<V> getOrCreateCollection(@xvk K k) {
        Collection<V> collection = this.map.get(k);
        if (collection != null) {
            return collection;
        }
        Collection<V> createCollection = createCollection(k);
        this.map.put(k, createCollection);
        return createCollection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> iteratorOrListIterator(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$entrySpliterator$1(Map.Entry entry) {
        final Object key = entry.getKey();
        return vzd.m57903h(((Collection) entry.getValue()).spliterator(), new Function() { // from class: com.google.common.collect.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map.Entry immutableEntry;
                immutableEntry = Maps.immutableEntry(key, obj);
                return immutableEntry;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEach$3(final BiConsumer biConsumer, final Object obj, Collection collection) {
        collection.forEach(new Consumer() { // from class: com.google.common.collect.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                biConsumer.accept(obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeValuesForKey(@CheckForNull Object obj) {
        Collection collection = (Collection) Maps.m26469H(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    public Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Iterator<Collection<V>> it2 = this.map.values().iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Map<K, Collection<V>> createAsMap() {
        return new C5756c(this.map);
    }

    abstract Collection<V> createCollection();

    public Collection<V> createCollection(@xvk K k) {
        return createCollection();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof SetMultimap ? new AbstractC6111f.b(this) : new AbstractC6111f.a();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Set<K> createKeySet() {
        return new C5758e(this.map);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Multiset<K> createKeys() {
        return new Multimaps.C5992c(this);
    }

    public final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        return map instanceof NavigableMap ? new C5759f((NavigableMap) this.map) : map instanceof SortedMap ? new C5762i((SortedMap) this.map) : new C5756c(this.map);
    }

    public final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        return map instanceof NavigableMap ? new C5760g((NavigableMap) this.map) : map instanceof SortedMap ? new C5763j((SortedMap) this.map) : new C5758e(this.map);
    }

    public Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<V> createValues() {
        return new AbstractC6111f.c();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new C5755b(this);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return vzd.m57897b(this.map.entrySet().spliterator(), new Function() { // from class: com.google.common.collect.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator lambda$entrySpliterator$1;
                lambda$entrySpliterator$1 = AbstractMapBasedMultimap.lambda$entrySpliterator$1((Map.Entry) obj);
                return lambda$entrySpliterator$1;
            }
        }, 64, size());
    }

    @Override // com.google.common.collect.Multimap
    public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        this.map.forEach(new BiConsumer() { // from class: com.google.common.collect.a
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AbstractMapBasedMultimap.lambda$forEach$3(biConsumer, obj, (Collection) obj2);
            }
        });
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@xvk K k) {
        Collection<V> collection = this.map.get(k);
        if (collection == null) {
            collection = createCollection(k);
        }
        return wrapCollection(k, collection);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public boolean put(@xvk K k, @xvk V v) {
        Collection<V> collection = this.map.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection<V> createCollection = createCollection(k);
        if (!createCollection.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(k, createCollection);
        return true;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@CheckForNull Object obj) {
        Collection<V> remove = this.map.remove(obj);
        if (remove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection createCollection = createCollection();
        createCollection.addAll(remove);
        this.totalSize -= remove.size();
        remove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        Iterator<? extends V> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return removeAll(k);
        }
        Collection<V> orCreateCollection = getOrCreateCollection(k);
        Collection<V> createCollection = createCollection();
        createCollection.addAll(orCreateCollection);
        this.totalSize -= orCreateCollection.size();
        orCreateCollection.clear();
        while (it2.hasNext()) {
            if (orCreateCollection.add(it2.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            Preconditions.checkArgument(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.totalSize;
    }

    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Iterator<V> valueIterator() {
        return new C5754a(this);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Spliterator<V> valueSpliterator() {
        return vzd.m57897b(this.map.values().spliterator(), new Function() { // from class: com.sunia.HTREnginev2.x3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Collection) obj).spliterator();
            }
        }, 64, size());
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    public Collection<V> wrapCollection(@xvk K k, Collection<V> collection) {
        return new C5764k(k, collection, null);
    }

    public final List<V> wrapList(@xvk K k, List<V> list, @CheckForNull AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
        return list instanceof RandomAccess ? new C5761h(this, k, list, c5764k) : new C5765l(k, list, c5764k);
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$k */
    /* loaded from: classes6.dex */
    public class C5764k extends AbstractCollection<V> {

        /* renamed from: e */
        @xvk
        public final K f33883e;

        /* renamed from: f */
        public Collection<V> f33884f;

        /* renamed from: g */
        @CheckForNull
        public final AbstractMapBasedMultimap<K, V>.C5764k f33885g;

        /* renamed from: h */
        @CheckForNull
        public final Collection<V> f33886h;

        public C5764k(@xvk K k, Collection<V> collection, @CheckForNull AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
            this.f33883e = k;
            this.f33884f = collection;
            this.f33885g = c5764k;
            this.f33886h = c5764k == null ? null : c5764k.m26038c();
        }

        /* renamed from: a */
        public void m26036a() {
            AbstractMapBasedMultimap<K, V>.C5764k c5764k = this.f33885g;
            if (c5764k != null) {
                c5764k.m26036a();
            } else {
                AbstractMapBasedMultimap.this.map.put(this.f33883e, this.f33884f);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(@xvk V v) {
            m26040e();
            boolean isEmpty = this.f33884f.isEmpty();
            boolean add = this.f33884f.add(v);
            if (add) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    m26036a();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f33884f.addAll(collection);
            if (addAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f33884f.size() - size);
                if (size == 0) {
                    m26036a();
                }
            }
            return addAll;
        }

        @CheckForNull
        /* renamed from: b */
        public AbstractMapBasedMultimap<K, V>.C5764k m26037b() {
            return this.f33885g;
        }

        /* renamed from: c */
        public Collection<V> m26038c() {
            return this.f33884f;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f33884f.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            m26041g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            m26040e();
            return this.f33884f.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            m26040e();
            return this.f33884f.containsAll(collection);
        }

        @xvk
        /* renamed from: d */
        K m26039d() {
            return this.f33883e;
        }

        /* renamed from: e */
        public void m26040e() {
            Collection<V> collection;
            AbstractMapBasedMultimap<K, V>.C5764k c5764k = this.f33885g;
            if (c5764k != null) {
                c5764k.m26040e();
                if (this.f33885g.m26038c() != this.f33886h) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f33884f.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.f33883e)) == null) {
                    return;
                }
                this.f33884f = collection;
            }
        }

        @Override // java.util.Collection
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            m26040e();
            return this.f33884f.equals(obj);
        }

        /* renamed from: g */
        public void m26041g() {
            AbstractMapBasedMultimap<K, V>.C5764k c5764k = this.f33885g;
            if (c5764k != null) {
                c5764k.m26041g();
            } else if (this.f33884f.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.f33883e);
            }
        }

        @Override // java.util.Collection
        public int hashCode() {
            m26040e();
            return this.f33884f.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            m26040e();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            m26040e();
            boolean remove = this.f33884f.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                m26041g();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f33884f.removeAll(collection);
            if (removeAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f33884f.size() - size);
                m26041g();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean retainAll = this.f33884f.retainAll(collection);
            if (retainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f33884f.size() - size);
                m26041g();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m26040e();
            return this.f33884f.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            m26040e();
            return this.f33884f.spliterator();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m26040e();
            return this.f33884f.toString();
        }

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$k$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<V> {

            /* renamed from: e */
            public final Iterator<V> f33888e;

            /* renamed from: f */
            public final Collection<V> f33889f;

            public a() {
                Collection<V> collection = C5764k.this.f33884f;
                this.f33889f = collection;
                this.f33888e = AbstractMapBasedMultimap.iteratorOrListIterator(collection);
            }

            /* renamed from: a */
            public Iterator<V> m26042a() {
                m26043b();
                return this.f33888e;
            }

            /* renamed from: b */
            public void m26043b() {
                C5764k.this.m26040e();
                if (C5764k.this.f33884f != this.f33889f) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m26043b();
                return this.f33888e.hasNext();
            }

            @Override // java.util.Iterator
            @xvk
            public V next() {
                m26043b();
                return this.f33888e.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f33888e.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                C5764k.this.m26041g();
            }

            public a(Iterator<V> it2) {
                this.f33889f = C5764k.this.f33884f;
                this.f33888e = it2;
            }
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$l */
    /* loaded from: classes6.dex */
    public class C5765l extends AbstractMapBasedMultimap<K, V>.C5764k implements List<V> {

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$l$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractMapBasedMultimap<K, V>.C5764k.a implements ListIterator<V> {
            public a() {
                super();
            }

            @Override // java.util.ListIterator
            public void add(@xvk V v) {
                boolean isEmpty = C5765l.this.isEmpty();
                m26045c().add(v);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    C5765l.this.m26036a();
                }
            }

            /* renamed from: c */
            public final ListIterator<V> m26045c() {
                return (ListIterator) m26042a();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return m26045c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return m26045c().nextIndex();
            }

            @Override // java.util.ListIterator
            @xvk
            public V previous() {
                return m26045c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return m26045c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(@xvk V v) {
                m26045c().set(v);
            }

            public a(int i) {
                super(C5765l.this.m26044h().listIterator(i));
            }
        }

        public C5765l(@xvk K k, List<V> list, @CheckForNull AbstractMapBasedMultimap<K, V>.C5764k c5764k) {
            super(k, list, c5764k);
        }

        @Override // java.util.List
        public void add(int i, @xvk V v) {
            m26040e();
            boolean isEmpty = m26038c().isEmpty();
            m26044h().add(i, v);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (isEmpty) {
                m26036a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = m26044h().addAll(i, collection);
            if (addAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, m26038c().size() - size);
                if (size == 0) {
                    m26036a();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        @xvk
        public V get(int i) {
            m26040e();
            return m26044h().get(i);
        }

        /* renamed from: h */
        public List<V> m26044h() {
            return (List) m26038c();
        }

        @Override // java.util.List
        public int indexOf(@CheckForNull Object obj) {
            m26040e();
            return m26044h().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(@CheckForNull Object obj) {
            m26040e();
            return m26044h().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            m26040e();
            return new a();
        }

        @Override // java.util.List
        @xvk
        public V remove(int i) {
            m26040e();
            V remove = m26044h().remove(i);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            m26041g();
            return remove;
        }

        @Override // java.util.List
        @xvk
        public V set(int i, @xvk V v) {
            m26040e();
            return m26044h().set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.AbstractMapBasedMultimap] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            m26040e();
            ?? r0 = AbstractMapBasedMultimap.this;
            Object m26039d = m26039d();
            List<V> subList = m26044h().subList(i, i2);
            AbstractMapBasedMultimap<K, V>.C5764k m26037b = m26037b();
            ?? r3 = this;
            if (m26037b != null) {
                r3 = m26037b();
            }
            return r0.wrapList(m26039d, subList, r3);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            m26040e();
            return new a(i);
        }
    }
}
