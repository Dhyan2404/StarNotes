package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.snf;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@snf
/* loaded from: classes6.dex */
public final class TreeRangeMap<K extends Comparable, V> implements RangeMap<K, V> {

    /* renamed from: f */
    public static final RangeMap<Comparable<?>, Object> f34515f = new C6084a();

    /* renamed from: e */
    public final NavigableMap<Cut<K>, C6086c<K, V>> f34516e = Maps.newTreeMap();

    /* renamed from: com.google.common.collect.TreeRangeMap$a */
    /* loaded from: classes6.dex */
    public class C6084a implements RangeMap<Comparable<?>, Object> {
        @Override // com.google.common.collect.RangeMap
        public Map<Range<Comparable<?>>, Object> asDescendingMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<Comparable<?>>, Object> asMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
        }

        @Override // com.google.common.collect.RangeMap
        @CheckForNull
        public Object get(Comparable<?> comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @CheckForNull
        public Map.Entry<Range<Comparable<?>>, Object> getEntry(Comparable<?> comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        public void merge(Range<Comparable<?>> range, @CheckForNull Object obj, BiFunction<? super Object, ? super Object, ? extends Object> biFunction) {
            Preconditions.checkNotNull(range);
            String valueOf = String.valueOf(range);
            StringBuilder sb = new StringBuilder(valueOf.length() + 45);
            sb.append("Cannot merge range ");
            sb.append(valueOf);
            sb.append(" into an empty subRangeMap");
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range<Comparable<?>> range, Object obj) {
            Preconditions.checkNotNull(range);
            String valueOf = String.valueOf(range);
            StringBuilder sb = new StringBuilder(valueOf.length() + 46);
            sb.append("Cannot insert range ");
            sb.append(valueOf);
            sb.append(" into an empty subRangeMap");
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap<Comparable<?>, Object> rangeMap) {
            if (!rangeMap.asMapOfRanges().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(Range<Comparable<?>> range, Object obj) {
            Preconditions.checkNotNull(range);
            String valueOf = String.valueOf(range);
            StringBuilder sb = new StringBuilder(valueOf.length() + 46);
            sb.append("Cannot insert range ");
            sb.append(valueOf);
            sb.append(" into an empty subRangeMap");
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.RangeMap
        public void remove(Range<Comparable<?>> range) {
            Preconditions.checkNotNull(range);
        }

        @Override // com.google.common.collect.RangeMap
        public Range<Comparable<?>> span() {
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.RangeMap
        public RangeMap<Comparable<?>, Object> subRangeMap(Range<Comparable<?>> range) {
            Preconditions.checkNotNull(range);
            return this;
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeMap$b */
    /* loaded from: classes6.dex */
    public final class C6085b extends Maps.AbstractC5970x<Range<K>, V> {

        /* renamed from: e */
        public final Iterable<Map.Entry<Range<K>, V>> f34517e;

        public C6085b(Iterable<C6086c<K, V>> iterable) {
            this.f34517e = iterable;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<Range<K>, V>> entryIterator() {
            return this.f34517e.iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            if (!(obj instanceof Range)) {
                return null;
            }
            Range range = (Range) obj;
            C6086c c6086c = (C6086c) TreeRangeMap.this.f34516e.get(range.lowerBound);
            if (c6086c == null || !c6086c.getKey().equals(range)) {
                return null;
            }
            return (V) c6086c.getValue();
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return TreeRangeMap.this.f34516e.size();
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeMap$c */
    /* loaded from: classes6.dex */
    public static final class C6086c<K extends Comparable, V> extends AbstractC14741z3<Range<K>, V> {

        /* renamed from: e */
        public final Range<K> f34519e;

        /* renamed from: f */
        public final V f34520f;

        public C6086c(Cut<K> cut, Cut<K> cut2, V v) {
            this(Range.create(cut, cut2), v);
        }

        /* renamed from: a */
        public boolean m26842a(K k) {
            return this.f34519e.contains(k);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Range<K> getKey() {
            return this.f34519e;
        }

        /* renamed from: c */
        public Cut<K> m26844c() {
            return this.f34519e.lowerBound;
        }

        /* renamed from: d */
        public Cut<K> m26845d() {
            return this.f34519e.upperBound;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public V getValue() {
            return this.f34520f;
        }

        public C6086c(Range<K> range, V v) {
            this.f34519e = range;
            this.f34520f = v;
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeMap$d */
    /* loaded from: classes6.dex */
    public class C6087d implements RangeMap<K, V> {

        /* renamed from: e */
        public final Range<K> f34521e;

        /* renamed from: com.google.common.collect.TreeRangeMap$d$a */
        /* loaded from: classes6.dex */
        public class a extends TreeRangeMap<K, V>.C6087d.b {

            /* renamed from: com.google.common.collect.TreeRangeMap$d$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20591a extends AbstractIterator<Map.Entry<Range<K>, V>> {

                /* renamed from: g */
                public final /* synthetic */ Iterator f34524g;

                public C20591a(Iterator it2) {
                    this.f34524g = it2;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<Range<K>, V> computeNext() {
                    if (!this.f34524g.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    C6086c c6086c = (C6086c) this.f34524g.next();
                    return c6086c.m26845d().compareTo((Cut) C6087d.this.f34521e.lowerBound) <= 0 ? (Map.Entry) endOfData() : Maps.immutableEntry(c6086c.getKey().intersection(C6087d.this.f34521e), c6086c.getValue());
                }
            }

            public a() {
                super();
            }

            @Override // com.google.common.collect.TreeRangeMap.C6087d.b
            /* renamed from: b */
            public Iterator<Map.Entry<Range<K>, V>> mo26847b() {
                return C6087d.this.f34521e.isEmpty() ? Iterators.m26343f() : new C20591a(TreeRangeMap.this.f34516e.headMap(C6087d.this.f34521e.upperBound, false).descendingMap().values().iterator());
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeMap$d$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractMap<Range<K>, V> {

            /* renamed from: com.google.common.collect.TreeRangeMap$d$b$a */
            /* loaded from: classes6.dex */
            public class a extends Maps.C5971y<Range<K>, V> {
                public a(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean remove(@CheckForNull Object obj) {
                    return b.this.remove(obj) != null;
                }

                @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.this.m26850c(Predicates.compose(Predicates.not(Predicates.m25817in(collection)), Maps.m26502v()));
                }
            }

            /* renamed from: com.google.common.collect.TreeRangeMap$d$b$b, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20592b extends Maps.AbstractC5963q<Range<K>, V> {
                public C20592b() {
                }

                @Override // com.google.common.collect.Maps.AbstractC5963q
                /* renamed from: a */
                public Map<Range<K>, V> mo26018a() {
                    return b.this;
                }

                @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean isEmpty() {
                    return !iterator().hasNext();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Map.Entry<Range<K>, V>> iterator() {
                    return b.this.mo26847b();
                }

                @Override // com.google.common.collect.Maps.AbstractC5963q, com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.this.m26850c(Predicates.not(Predicates.m25817in(collection)));
                }

                @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return Iterators.size(iterator());
                }
            }

            /* renamed from: com.google.common.collect.TreeRangeMap$d$b$c */
            /* loaded from: classes6.dex */
            public class c extends AbstractIterator<Map.Entry<Range<K>, V>> {

                /* renamed from: g */
                public final /* synthetic */ Iterator f34529g;

                public c(Iterator it2) {
                    this.f34529g = it2;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<Range<K>, V> computeNext() {
                    while (this.f34529g.hasNext()) {
                        C6086c c6086c = (C6086c) this.f34529g.next();
                        if (c6086c.m26844c().compareTo((Cut) C6087d.this.f34521e.upperBound) >= 0) {
                            return (Map.Entry) endOfData();
                        }
                        if (c6086c.m26845d().compareTo((Cut) C6087d.this.f34521e.lowerBound) > 0) {
                            return Maps.immutableEntry(c6086c.getKey().intersection(C6087d.this.f34521e), c6086c.getValue());
                        }
                    }
                    return (Map.Entry) endOfData();
                }
            }

            /* renamed from: com.google.common.collect.TreeRangeMap$d$b$d */
            /* loaded from: classes6.dex */
            public class d extends Maps.C5957l0<Range<K>, V> {
                public d(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
                public boolean removeAll(Collection<?> collection) {
                    return b.this.m26850c(Predicates.compose(Predicates.m25817in(collection), Maps.m26477P()));
                }

                @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
                public boolean retainAll(Collection<?> collection) {
                    return b.this.m26850c(Predicates.compose(Predicates.not(Predicates.m25817in(collection)), Maps.m26477P()));
                }
            }

            public b() {
            }

            /* renamed from: b */
            public Iterator<Map.Entry<Range<K>, V>> mo26847b() {
                if (C6087d.this.f34521e.isEmpty()) {
                    return Iterators.m26343f();
                }
                return new c(TreeRangeMap.this.f34516e.tailMap((Cut) MoreObjects.firstNonNull((Cut) TreeRangeMap.this.f34516e.floorKey(C6087d.this.f34521e.lowerBound), C6087d.this.f34521e.lowerBound), true).values().iterator());
            }

            /* renamed from: c */
            public final boolean m26850c(Predicate<? super Map.Entry<Range<K>, V>> predicate) {
                ArrayList newArrayList = Lists.newArrayList();
                for (Map.Entry<Range<K>, V> entry : entrySet()) {
                    if (predicate.apply(entry)) {
                        newArrayList.add(entry.getKey());
                    }
                }
                Iterator it2 = newArrayList.iterator();
                while (it2.hasNext()) {
                    TreeRangeMap.this.remove((Range) it2.next());
                }
                return !newArrayList.isEmpty();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public void clear() {
                C6087d.this.clear();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public boolean containsKey(@CheckForNull Object obj) {
                return get(obj) != null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Map.Entry<Range<K>, V>> entrySet() {
                return new C20592b();
            }

            @Override // java.util.AbstractMap, java.util.Map
            @CheckForNull
            public V get(@CheckForNull Object obj) {
                C6086c c6086c;
                try {
                    if (obj instanceof Range) {
                        Range range = (Range) obj;
                        if (C6087d.this.f34521e.encloses(range) && !range.isEmpty()) {
                            if (range.lowerBound.compareTo((Cut) C6087d.this.f34521e.lowerBound) == 0) {
                                Map.Entry floorEntry = TreeRangeMap.this.f34516e.floorEntry(range.lowerBound);
                                c6086c = floorEntry != null ? (C6086c) floorEntry.getValue() : null;
                            } else {
                                c6086c = (C6086c) TreeRangeMap.this.f34516e.get(range.lowerBound);
                            }
                            if (c6086c != null && c6086c.getKey().isConnected(C6087d.this.f34521e) && c6086c.getKey().intersection(C6087d.this.f34521e).equals(range)) {
                                return (V) c6086c.getValue();
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Range<K>> keySet() {
                return new a(this);
            }

            @Override // java.util.AbstractMap, java.util.Map
            @CheckForNull
            public V remove(@CheckForNull Object obj) {
                V v = (V) get(obj);
                if (v == null) {
                    return null;
                }
                Objects.requireNonNull(obj);
                TreeRangeMap.this.remove((Range) obj);
                return v;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Collection<V> values() {
                return new d(this);
            }
        }

        public C6087d(Range<K> range) {
            this.f34521e = range;
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asDescendingMapOfRanges() {
            return new a();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asMapOfRanges() {
            return new b();
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
            TreeRangeMap.this.remove(this.f34521e);
        }

        @Override // com.google.common.collect.RangeMap
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof RangeMap) {
                return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
            }
            return false;
        }

        @Override // com.google.common.collect.RangeMap
        @CheckForNull
        public V get(K k) {
            if (this.f34521e.contains(k)) {
                return (V) TreeRangeMap.this.get(k);
            }
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @CheckForNull
        public Map.Entry<Range<K>, V> getEntry(K k) {
            Map.Entry<Range<K>, V> entry;
            if (!this.f34521e.contains(k) || (entry = TreeRangeMap.this.getEntry(k)) == null) {
                return null;
            }
            return Maps.immutableEntry(entry.getKey().intersection(this.f34521e), entry.getValue());
        }

        @Override // com.google.common.collect.RangeMap
        public int hashCode() {
            return asMapOfRanges().hashCode();
        }

        @Override // com.google.common.collect.RangeMap
        public void merge(Range<K> range, @CheckForNull V v, BiFunction<? super V, ? super V, ? extends V> biFunction) {
            Preconditions.checkArgument(this.f34521e.encloses(range), "Cannot merge range %s into a subRangeMap(%s)", range, this.f34521e);
            TreeRangeMap.this.merge(range, v, biFunction);
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range<K> range, V v) {
            Preconditions.checkArgument(this.f34521e.encloses(range), "Cannot put range %s into a subRangeMap(%s)", range, this.f34521e);
            TreeRangeMap.this.put(range, v);
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap<K, V> rangeMap) {
            if (rangeMap.asMapOfRanges().isEmpty()) {
                return;
            }
            Range<K> span = rangeMap.span();
            Preconditions.checkArgument(this.f34521e.encloses(span), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", span, this.f34521e);
            TreeRangeMap.this.putAll(rangeMap);
        }

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(Range<K> range, V v) {
            if (TreeRangeMap.this.f34516e.isEmpty() || !this.f34521e.encloses(range)) {
                put(range, v);
            } else {
                put(TreeRangeMap.this.m26838e(range, Preconditions.checkNotNull(v)).intersection(this.f34521e), v);
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void remove(Range<K> range) {
            if (range.isConnected(this.f34521e)) {
                TreeRangeMap.this.remove(range.intersection(this.f34521e));
            }
        }

        @Override // com.google.common.collect.RangeMap
        public Range<K> span() {
            Cut<K> cut;
            Map.Entry floorEntry = TreeRangeMap.this.f34516e.floorEntry(this.f34521e.lowerBound);
            if (floorEntry == null || ((C6086c) floorEntry.getValue()).m26845d().compareTo((Cut) this.f34521e.lowerBound) <= 0) {
                cut = (Cut) TreeRangeMap.this.f34516e.ceilingKey(this.f34521e.lowerBound);
                if (cut == null || cut.compareTo(this.f34521e.upperBound) >= 0) {
                    throw new NoSuchElementException();
                }
            } else {
                cut = this.f34521e.lowerBound;
            }
            Map.Entry lowerEntry = TreeRangeMap.this.f34516e.lowerEntry(this.f34521e.upperBound);
            if (lowerEntry != null) {
                return Range.create(cut, ((C6086c) lowerEntry.getValue()).m26845d().compareTo((Cut) this.f34521e.upperBound) >= 0 ? this.f34521e.upperBound : ((C6086c) lowerEntry.getValue()).m26845d());
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.RangeMap
        public RangeMap<K, V> subRangeMap(Range<K> range) {
            return !range.isConnected(this.f34521e) ? TreeRangeMap.this.m26839f() : TreeRangeMap.this.subRangeMap(range.intersection(this.f34521e));
        }

        @Override // com.google.common.collect.RangeMap
        public String toString() {
            return asMapOfRanges().toString();
        }
    }

    public static <K extends Comparable, V> TreeRangeMap<K, V> create() {
        return new TreeRangeMap<>();
    }

    /* renamed from: d */
    public static <K extends Comparable, V> Range<K> m26837d(Range<K> range, V v, @CheckForNull Map.Entry<Cut<K>, C6086c<K, V>> entry) {
        return (entry != null && entry.getValue().getKey().isConnected(range) && entry.getValue().getValue().equals(v)) ? range.span(entry.getValue().getKey()) : range;
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asDescendingMapOfRanges() {
        return new C6085b(this.f34516e.descendingMap().values());
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asMapOfRanges() {
        return new C6085b(this.f34516e.values());
    }

    @Override // com.google.common.collect.RangeMap
    public void clear() {
        this.f34516e.clear();
    }

    /* renamed from: e */
    public final Range<K> m26838e(Range<K> range, V v) {
        return m26837d(m26837d(range, v, this.f34516e.lowerEntry(range.lowerBound)), v, this.f34516e.floorEntry(range.upperBound));
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    /* renamed from: f */
    public final RangeMap<K, V> m26839f() {
        return f34515f;
    }

    /* renamed from: g */
    public final void m26840g(Cut<K> cut, Cut<K> cut2, V v) {
        this.f34516e.put(cut, new C6086c<>(cut, cut2, v));
    }

    @Override // com.google.common.collect.RangeMap
    @CheckForNull
    public V get(K k) {
        Map.Entry<Range<K>, V> entry = getEntry(k);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    @CheckForNull
    public Map.Entry<Range<K>, V> getEntry(K k) {
        Map.Entry<Cut<K>, C6086c<K, V>> floorEntry = this.f34516e.floorEntry(Cut.belowValue(k));
        if (floorEntry == null || !floorEntry.getValue().m26842a(k)) {
            return null;
        }
        return floorEntry.getValue();
    }

    /* renamed from: h */
    public final void m26841h(Cut<K> cut) {
        Map.Entry<Cut<K>, C6086c<K, V>> lowerEntry = this.f34516e.lowerEntry(cut);
        if (lowerEntry == null) {
            return;
        }
        C6086c<K, V> value = lowerEntry.getValue();
        if (value.m26845d().compareTo(cut) <= 0) {
            return;
        }
        m26840g(value.m26844c(), cut, value.getValue());
        m26840g(cut, value.m26845d(), value.getValue());
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    public void merge(Range<K> range, @CheckForNull V v, BiFunction<? super V, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(biFunction);
        if (range.isEmpty()) {
            return;
        }
        m26841h(range.lowerBound);
        m26841h(range.upperBound);
        Set<Map.Entry<Cut<K>, C6086c<K, V>>> entrySet = this.f34516e.subMap(range.lowerBound, range.upperBound).entrySet();
        ImmutableMap.Builder builder = ImmutableMap.builder();
        if (v != null) {
            Iterator<Map.Entry<Cut<K>, C6086c<K, V>>> it2 = entrySet.iterator();
            Cut<K> cut = range.lowerBound;
            while (it2.hasNext()) {
                C6086c<K, V> value = it2.next().getValue();
                Cut<K> m26844c = value.m26844c();
                if (!cut.equals(m26844c)) {
                    builder.put(cut, new C6086c(cut, m26844c, v));
                }
                cut = value.m26845d();
            }
            if (!cut.equals(range.upperBound)) {
                builder.put(cut, new C6086c(cut, range.upperBound, v));
            }
        }
        Iterator<Map.Entry<Cut<K>, C6086c<K, V>>> it3 = entrySet.iterator();
        while (it3.hasNext()) {
            Map.Entry<Cut<K>, C6086c<K, V>> next = it3.next();
            V apply = biFunction.apply(next.getValue().getValue(), v);
            if (apply == null) {
                it3.remove();
            } else {
                next.setValue(new C6086c<>(next.getValue().m26844c(), next.getValue().m26845d(), apply));
            }
        }
        this.f34516e.putAll(builder.build());
    }

    @Override // com.google.common.collect.RangeMap
    public void put(Range<K> range, V v) {
        if (range.isEmpty()) {
            return;
        }
        Preconditions.checkNotNull(v);
        remove(range);
        this.f34516e.put(range.lowerBound, new C6086c<>(range, v));
    }

    @Override // com.google.common.collect.RangeMap
    public void putAll(RangeMap<K, V> rangeMap) {
        for (Map.Entry<Range<K>, V> entry : rangeMap.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    public void putCoalescing(Range<K> range, V v) {
        if (this.f34516e.isEmpty()) {
            put(range, v);
        } else {
            put(m26838e(range, Preconditions.checkNotNull(v)), v);
        }
    }

    @Override // com.google.common.collect.RangeMap
    public void remove(Range<K> range) {
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<Cut<K>, C6086c<K, V>> lowerEntry = this.f34516e.lowerEntry(range.lowerBound);
        if (lowerEntry != null) {
            C6086c<K, V> value = lowerEntry.getValue();
            if (value.m26845d().compareTo(range.lowerBound) > 0) {
                if (value.m26845d().compareTo(range.upperBound) > 0) {
                    m26840g(range.upperBound, value.m26845d(), lowerEntry.getValue().getValue());
                }
                m26840g(value.m26844c(), range.lowerBound, lowerEntry.getValue().getValue());
            }
        }
        Map.Entry<Cut<K>, C6086c<K, V>> lowerEntry2 = this.f34516e.lowerEntry(range.upperBound);
        if (lowerEntry2 != null) {
            C6086c<K, V> value2 = lowerEntry2.getValue();
            if (value2.m26845d().compareTo(range.upperBound) > 0) {
                m26840g(range.upperBound, value2.m26845d(), lowerEntry2.getValue().getValue());
            }
        }
        this.f34516e.subMap(range.lowerBound, range.upperBound).clear();
    }

    @Override // com.google.common.collect.RangeMap
    public Range<K> span() {
        Map.Entry<Cut<K>, C6086c<K, V>> firstEntry = this.f34516e.firstEntry();
        Map.Entry<Cut<K>, C6086c<K, V>> lastEntry = this.f34516e.lastEntry();
        if (firstEntry == null || lastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(firstEntry.getValue().getKey().lowerBound, lastEntry.getValue().getKey().upperBound);
    }

    @Override // com.google.common.collect.RangeMap
    public RangeMap<K, V> subRangeMap(Range<K> range) {
        return range.equals(Range.all()) ? this : new C6087d(range);
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return this.f34516e.values().toString();
    }
}
