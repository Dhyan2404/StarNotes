package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.StandardTable;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.u6h;
import com.sunia.HTREnginev2.vzd;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible
/* loaded from: classes6.dex */
public class StandardTable<R, C, V> extends AbstractC6115j<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;

    @u6h
    final Map<R, Map<C, V>> backingMap;

    @CheckForNull
    private transient Set<C> columnKeySet;

    @CheckForNull
    private transient StandardTable<R, C, V>.C6049f columnMap;

    @u6h
    final Supplier<? extends Map<C, V>> factory;

    @CheckForNull
    private transient Map<R, Map<C, V>> rowMap;

    /* renamed from: com.google.common.collect.StandardTable$b */
    /* loaded from: classes6.dex */
    public class C6045b implements Iterator<Table.Cell<R, C, V>> {

        /* renamed from: e */
        public final Iterator<Map.Entry<R, Map<C, V>>> f34414e;

        /* renamed from: f */
        @CheckForNull
        public Map.Entry<R, Map<C, V>> f34415f;

        /* renamed from: g */
        public Iterator<Map.Entry<C, V>> f34416g;

        public C6045b() {
            this.f34414e = StandardTable.this.backingMap.entrySet().iterator();
            this.f34416g = Iterators.m26345h();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> next() {
            if (!this.f34416g.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f34414e.next();
                this.f34415f = next;
                this.f34416g = next.getValue().entrySet().iterator();
            }
            Objects.requireNonNull(this.f34415f);
            Map.Entry<C, V> next2 = this.f34416g.next();
            return Tables.immutableCell(this.f34415f.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34414e.hasNext() || this.f34416g.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f34416g.remove();
            Map.Entry<R, Map<C, V>> entry = this.f34415f;
            Objects.requireNonNull(entry);
            if (entry.getValue().isEmpty()) {
                this.f34414e.remove();
                this.f34415f = null;
            }
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$c */
    /* loaded from: classes6.dex */
    public class C6046c extends Maps.AbstractC5959m0<R, V> {

        /* renamed from: h */
        public final C f34418h;

        /* renamed from: com.google.common.collect.StandardTable$c$a */
        /* loaded from: classes6.dex */
        public class a extends Sets.AbstractC6030j<Map.Entry<R, V>> {
            public a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                C6046c.this.m26702d(Predicates.alwaysTrue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.containsMapping(entry.getKey(), C6046c.this.f34418h, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                C6046c c6046c = C6046c.this;
                return !StandardTable.this.containsColumn(c6046c.f34418h);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.removeMapping(entry.getKey(), C6046c.this.f34418h, entry.getValue());
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C6046c.this.m26702d(Predicates.not(Predicates.m25817in(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<Map<C, V>> it2 = StandardTable.this.backingMap.values().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    if (it2.next().containsKey(C6046c.this.f34418h)) {
                        i++;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<Map.Entry<R, V>> {

            /* renamed from: g */
            public final Iterator<Map.Entry<R, Map<C, V>>> f34421g;

            /* renamed from: com.google.common.collect.StandardTable$c$b$a */
            /* loaded from: classes6.dex */
            public class a extends AbstractC14741z3<R, V> {

                /* renamed from: e */
                public final /* synthetic */ Map.Entry f34423e;

                public a(Map.Entry entry) {
                    this.f34423e = entry;
                }

                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f34423e.getKey();
                }

                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f34423e.getValue()).get(C6046c.this.f34418h);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                public V setValue(V v) {
                    return (V) p5k.m56213a(((Map) this.f34423e.getValue()).put(C6046c.this.f34418h, Preconditions.checkNotNull(v)));
                }
            }

            public b() {
                this.f34421g = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<R, V> computeNext() {
                while (this.f34421g.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f34421g.next();
                    if (next.getValue().containsKey(C6046c.this.f34418h)) {
                        return new a(next);
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$c */
        /* loaded from: classes6.dex */
        public class c extends Maps.C5971y<R, V> {
            public c() {
                super(C6046c.this);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                C6046c c6046c = C6046c.this;
                return StandardTable.this.contains(obj, c6046c.f34418h);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                C6046c c6046c = C6046c.this;
                return StandardTable.this.remove(obj, c6046c.f34418h) != null;
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C6046c.this.m26702d(Maps.m26505y(Predicates.not(Predicates.m25817in(collection))));
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$d */
        /* loaded from: classes6.dex */
        public class d extends Maps.C5957l0<R, V> {
            public d() {
                super(C6046c.this);
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@CheckForNull Object obj) {
                return obj != null && C6046c.this.m26702d(Maps.m26480S(Predicates.equalTo(obj)));
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return C6046c.this.m26702d(Maps.m26480S(Predicates.m25817in(collection)));
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return C6046c.this.m26702d(Maps.m26480S(Predicates.not(Predicates.m25817in(collection))));
            }
        }

        public C6046c(C c2) {
            this.f34418h = (C) Preconditions.checkNotNull(c2);
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<R, V>> mo26014a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: b */
        public Set<R> mo26021g() {
            return new c();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: c */
        public Collection<V> mo26534c() {
            return new d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return StandardTable.this.contains(obj, this.f34418h);
        }

        @CanIgnoreReturnValue
        /* renamed from: d */
        public boolean m26702d(Predicate<? super Map.Entry<R, V>> predicate) {
            Iterator<Map.Entry<R, Map<C, V>>> it2 = StandardTable.this.backingMap.entrySet().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it2.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.f34418h);
                if (v != null && predicate.apply(Maps.immutableEntry(next.getKey(), v))) {
                    value.remove(this.f34418h);
                    if (value.isEmpty()) {
                        it2.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return (V) StandardTable.this.get(obj, this.f34418h);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(R r, V v) {
            return (V) StandardTable.this.put(r, this.f34418h, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            return (V) StandardTable.this.remove(obj, this.f34418h);
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$d */
    /* loaded from: classes6.dex */
    public class C6047d extends AbstractIterator<C> {

        /* renamed from: g */
        public final Map<C, V> f34427g;

        /* renamed from: h */
        public final Iterator<Map<C, V>> f34428h;

        /* renamed from: i */
        public Iterator<Map.Entry<C, V>> f34429i;

        public C6047d() {
            this.f34427g = StandardTable.this.factory.get();
            this.f34428h = StandardTable.this.backingMap.values().iterator();
            this.f34429i = Iterators.m26343f();
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public C computeNext() {
            while (true) {
                if (this.f34429i.hasNext()) {
                    Map.Entry<C, V> next = this.f34429i.next();
                    if (!this.f34427g.containsKey(next.getKey())) {
                        this.f34427g.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else {
                    if (!this.f34428h.hasNext()) {
                        return endOfData();
                    }
                    this.f34429i = this.f34428h.next().entrySet().iterator();
                }
            }
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$e */
    /* loaded from: classes6.dex */
    public class C6048e extends StandardTable<R, C, V>.AbstractC6052i<C> {
        public C6048e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it2 = StandardTable.this.backingMap.values().iterator();
            while (it2.hasNext()) {
                Map<C, V> next = it2.next();
                if (next.keySet().remove(obj)) {
                    if (next.isEmpty()) {
                        it2.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<Map<C, V>> it2 = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map<C, V> next = it2.next();
                if (Iterators.removeAll(next.keySet().iterator(), collection)) {
                    if (next.isEmpty()) {
                        it2.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<Map<C, V>> it2 = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map<C, V> next = it2.next();
                if (next.keySet().retainAll(collection)) {
                    if (next.isEmpty()) {
                        it2.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.size(iterator());
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$f */
    /* loaded from: classes6.dex */
    public class C6049f extends Maps.AbstractC5959m0<C, Map<R, V>> {

        /* renamed from: com.google.common.collect.StandardTable$f$a */
        /* loaded from: classes6.dex */
        public class a extends StandardTable<R, C, V>.AbstractC6052i<Map.Entry<C, Map<R, V>>> {

            /* renamed from: com.google.common.collect.StandardTable$f$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20589a implements Function<C, Map<R, V>> {
                public C20589a() {
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<R, V> apply(C c) {
                    return StandardTable.this.column(c);
                }
            }

            public a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!StandardTable.this.containsColumn(entry.getKey())) {
                    return false;
                }
                Map<R, V> map = C6049f.this.get(entry.getKey());
                Objects.requireNonNull(map);
                return map.equals(entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.m26489i(StandardTable.this.columnKeySet(), new C20589a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                StandardTable.this.removeColumn(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                return Sets.m26679e(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                Iterator it2 = Lists.newArrayList(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (!collection.contains(Maps.immutableEntry(next, StandardTable.this.column(next)))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$f$b */
        /* loaded from: classes6.dex */
        public class b extends Maps.C5957l0<C, Map<R, V>> {
            public b() {
                super(C6049f.this);
            }

            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@CheckForNull Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : C6049f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        StandardTable.this.removeColumn(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                Iterator it2 = Lists.newArrayList(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (collection.contains(StandardTable.this.column(next))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                Iterator it2 = Lists.newArrayList(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (!collection.contains(StandardTable.this.column(next))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }
        }

        public C6049f() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<C, Map<R, V>>> mo26014a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: c */
        public Collection<Map<R, V>> mo26534c() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map<R, V> get(@CheckForNull Object obj) {
            if (!StandardTable.this.containsColumn(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.column(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map<R, V> remove(@CheckForNull Object obj) {
            if (StandardTable.this.containsColumn(obj)) {
                return StandardTable.this.removeColumn(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        public Set<C> keySet() {
            return StandardTable.this.columnKeySet();
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$g */
    /* loaded from: classes6.dex */
    public class C6050g extends Maps.AbstractC5970x<C, V> {

        /* renamed from: e */
        public final R f34436e;

        /* renamed from: f */
        @CheckForNull
        public Map<C, V> f34437f;

        /* renamed from: com.google.common.collect.StandardTable$g$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<Map.Entry<C, V>> {

            /* renamed from: e */
            public final /* synthetic */ Iterator f34439e;

            public a(Iterator it2) {
                this.f34439e = it2;
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<C, V> next() {
                return C6050g.this.m26710d((Map.Entry) this.f34439e.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f34439e.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f34439e.remove();
                C6050g.this.mo26708b();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$g$b */
        /* loaded from: classes6.dex */
        public class b extends ForwardingMapEntry<C, V> {

            /* renamed from: e */
            public final /* synthetic */ Map.Entry f34441e;

            public b(C6050g c6050g, Map.Entry entry) {
                this.f34441e = entry;
            }

            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
            public boolean equals(@CheckForNull Object obj) {
                return standardEquals(obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
            public V setValue(V v) {
                return (V) super.setValue(Preconditions.checkNotNull(v));
            }

            @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
            public Map.Entry<C, V> delegate() {
                return this.f34441e;
            }
        }

        public C6050g(R r) {
            this.f34436e = (R) Preconditions.checkNotNull(r);
        }

        @CheckForNull
        /* renamed from: a */
        public Map<C, V> mo26707a() {
            return StandardTable.this.backingMap.get(this.f34436e);
        }

        /* renamed from: b */
        public void mo26708b() {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map == null || !map.isEmpty()) {
                return;
            }
            StandardTable.this.backingMap.remove(this.f34436e);
            this.f34437f = null;
        }

        /* renamed from: c */
        public final void m26709c() {
            Map<C, V> map = this.f34437f;
            if (map == null || (map.isEmpty() && StandardTable.this.backingMap.containsKey(this.f34436e))) {
                this.f34437f = mo26707a();
            }
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map != null) {
                map.clear();
            }
            mo26708b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            Map<C, V> map;
            m26709c();
            return (obj == null || (map = this.f34437f) == null || !Maps.m26467F(map, obj)) ? false : true;
        }

        /* renamed from: d */
        public Map.Entry<C, V> m26710d(Map.Entry<C, V> entry) {
            return new b(this, entry);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<C, V>> entryIterator() {
            m26709c();
            Map<C, V> map = this.f34437f;
            return map == null ? Iterators.m26345h() : new a(map.entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Spliterator<Map.Entry<C, V>> entrySpliterator() {
            m26709c();
            Map<C, V> map = this.f34437f;
            return map == null ? Spliterators.emptySpliterator() : vzd.m57903h(map.entrySet().spliterator(), new java.util.function.Function() { // from class: com.sunia.HTREnginev2.qxm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return StandardTable.C6050g.this.m26710d((Map.Entry) obj);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Map<C, V> map;
            m26709c();
            if (obj == null || (map = this.f34437f) == null) {
                return null;
            }
            return (V) Maps.m26468G(map, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(C c, V v) {
            Preconditions.checkNotNull(c);
            Preconditions.checkNotNull(v);
            Map<C, V> map = this.f34437f;
            return (map == null || map.isEmpty()) ? (V) StandardTable.this.put(this.f34436e, c, v) : this.f34437f.put(c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map == null) {
                return null;
            }
            V v = (V) Maps.m26469H(map, obj);
            mo26708b();
            return v;
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$h */
    /* loaded from: classes6.dex */
    public class C6051h extends Maps.AbstractC5959m0<R, Map<C, V>> {

        /* renamed from: com.google.common.collect.StandardTable$h$a */
        /* loaded from: classes6.dex */
        public class a extends StandardTable<R, C, V>.AbstractC6052i<Map.Entry<R, Map<C, V>>> {

            /* renamed from: com.google.common.collect.StandardTable$h$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20590a implements Function<R, Map<C, V>> {
                public C20590a() {
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<C, V> apply(R r) {
                    return StandardTable.this.row(r);
                }
            }

            public a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && Collections2.m26077e(StandardTable.this.backingMap.entrySet(), entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.m26489i(StandardTable.this.backingMap.keySet(), new C20590a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && StandardTable.this.backingMap.entrySet().remove(entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.backingMap.size();
            }
        }

        public C6051h() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<R, Map<C, V>>> mo26014a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return StandardTable.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map<C, V> get(@CheckForNull Object obj) {
            if (!StandardTable.this.containsRow(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.row(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map<C, V> remove(@CheckForNull Object obj) {
            if (obj == null) {
                return null;
            }
            return StandardTable.this.backingMap.remove(obj);
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$i */
    /* loaded from: classes6.dex */
    public abstract class AbstractC6052i<T> extends Sets.AbstractC6030j<T> {
        public AbstractC6052i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            StandardTable.this.backingMap.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }
    }

    public StandardTable(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        this.backingMap = map;
        this.factory = supplier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean containsMapping(@CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map<C, V> getOrCreate(R r) {
        Map<C, V> map = this.backingMap.get(r);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = this.factory.get();
        this.backingMap.put(r, map2);
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Table.Cell lambda$cellSpliterator$0(Map.Entry entry, Map.Entry entry2) {
        return Tables.immutableCell(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$cellSpliterator$1(final Map.Entry entry) {
        return vzd.m57903h(((Map) entry.getValue()).entrySet().spliterator(), new java.util.function.Function() { // from class: com.google.common.collect.a0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Table.Cell lambda$cellSpliterator$0;
                lambda$cellSpliterator$0 = StandardTable.lambda$cellSpliterator$0(entry, (Map.Entry) obj);
                return lambda$cellSpliterator$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public Map<R, V> removeColumn(@CheckForNull Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it2 = this.backingMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it2.next();
            V remove = next.getValue().remove(obj);
            if (remove != null) {
                linkedHashMap.put(next.getKey(), remove);
                if (next.getValue().isEmpty()) {
                    it2.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeMapping(@CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3) {
        if (!containsMapping(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override // com.google.common.collect.AbstractC6115j
    Iterator<Table.Cell<R, C, V>> cellIterator() {
        return new C6045b();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.AbstractC6115j
    public Spliterator<Table.Cell<R, C, V>> cellSpliterator() {
        return vzd.m57897b(this.backingMap.entrySet().spliterator(), new java.util.function.Function() { // from class: com.google.common.collect.b0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator lambda$cellSpliterator$1;
                lambda$cellSpliterator$1 = StandardTable.lambda$cellSpliterator$1((Map.Entry) obj);
                return lambda$cellSpliterator$1;
            }
        }, 65, size());
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public void clear() {
        this.backingMap.clear();
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c) {
        return new C6046c(c);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        if (set != null) {
            return set;
        }
        C6048e c6048e = new C6048e();
        this.columnKeySet = c6048e;
        return c6048e;
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        StandardTable<R, C, V>.C6049f c6049f = this.columnMap;
        if (c6049f != null) {
            return c6049f;
        }
        StandardTable<R, C, V>.C6049f c6049f2 = new C6049f();
        this.columnMap = c6049f2;
        return c6049f2;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsColumn(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it2 = this.backingMap.values().iterator();
        while (it2.hasNext()) {
            if (Maps.m26467F(it2.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsRow(@CheckForNull Object obj) {
        return obj != null && Maps.m26467F(this.backingMap, obj);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsValue(@CheckForNull Object obj) {
        return obj != null && super.containsValue(obj);
    }

    public Iterator<C> createColumnKeyIterator() {
        return new C6047d();
    }

    public Map<R, Map<C, V>> createRowMap() {
        return new C6051h();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CheckForNull
    public V get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public V put(R r, C c, V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c);
        Preconditions.checkNotNull(v);
        return getOrCreate(r).put(c, v);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.m26468G(this.backingMap, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v;
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        return new C6050g(r);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> createRowMap = createRowMap();
        this.rowMap = createRowMap;
        return createRowMap;
    }

    @Override // com.google.common.collect.Table
    public int size() {
        Iterator<Map<C, V>> it2 = this.backingMap.values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }
}
