package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.AbstractC6111f;
import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.dmg;
import com.sunia.HTREnginev2.emg;
import com.sunia.HTREnginev2.fmg;
import com.sunia.HTREnginev2.gmg;
import com.sunia.HTREnginev2.hmg;
import com.sunia.HTREnginev2.jmg;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.qhi;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.stream.Collector;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Multimaps {

    /* loaded from: classes6.dex */
    public static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {

        @GwtIncompatible
        private static final long serialVersionUID = 0;
        transient Supplier<? extends List<V>> factory;

        public CustomListMultimap(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
            super(map);
            this.factory = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @GwtIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @GwtIncompatible
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public List<V> createCollection() {
            return this.factory.get();
        }
    }

    /* loaded from: classes6.dex */
    public static class CustomMultimap<K, V> extends AbstractMapBasedMultimap<K, V> {

        @GwtIncompatible
        private static final long serialVersionUID = 0;
        transient Supplier<? extends Collection<V>> factory;

        public CustomMultimap(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
            super(map);
            this.factory = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @GwtIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @GwtIncompatible
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> createCollection() {
            return this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.unmodifiableNavigableSet((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> wrapCollection(@xvk K k, Collection<V> collection) {
            return collection instanceof List ? wrapList(k, (List) collection, null) : collection instanceof NavigableSet ? new AbstractMapBasedMultimap.C5766m(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractMapBasedMultimap.C5768o(k, (SortedSet) collection, null) : collection instanceof Set ? new AbstractMapBasedMultimap.C5767n(k, (Set) collection) : new AbstractMapBasedMultimap.C5764k(k, collection, null);
        }
    }

    /* loaded from: classes6.dex */
    public static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {

        @GwtIncompatible
        private static final long serialVersionUID = 0;
        transient Supplier<? extends Set<V>> factory;

        public CustomSetMultimap(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
            super(map);
            this.factory = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @GwtIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @GwtIncompatible
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.unmodifiableNavigableSet((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> wrapCollection(@xvk K k, Collection<V> collection) {
            return collection instanceof NavigableSet ? new AbstractMapBasedMultimap.C5766m(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractMapBasedMultimap.C5768o(k, (SortedSet) collection, null) : new AbstractMapBasedMultimap.C5767n(k, (Set) collection);
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public Set<V> createCollection() {
            return this.factory.get();
        }
    }

    /* loaded from: classes6.dex */
    public static class MapMultimap<K, V> extends AbstractC6111f<K, V> implements SetMultimap<K, V>, Serializable {
        private static final long serialVersionUID = 7845222491160860175L;
        final Map<K, V> map;

        /* renamed from: com.google.common.collect.Multimaps$MapMultimap$a */
        /* loaded from: classes6.dex */
        public class C5988a extends Sets.AbstractC6030j<V> {

            /* renamed from: e */
            public final /* synthetic */ Object f34323e;

            /* renamed from: com.google.common.collect.Multimaps$MapMultimap$a$a */
            /* loaded from: classes6.dex */
            public class a implements Iterator<V> {

                /* renamed from: e */
                public int f34325e;

                public a() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.f34325e == 0) {
                        C5988a c5988a = C5988a.this;
                        if (MapMultimap.this.map.containsKey(c5988a.f34323e)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // java.util.Iterator
                @xvk
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.f34325e++;
                    C5988a c5988a = C5988a.this;
                    return (V) p5k.m56213a(MapMultimap.this.map.get(c5988a.f34323e));
                }

                @Override // java.util.Iterator
                public void remove() {
                    szd.m57282e(this.f34325e == 1);
                    this.f34325e = -1;
                    C5988a c5988a = C5988a.this;
                    MapMultimap.this.map.remove(c5988a.f34323e);
                }
            }

            public C5988a(Object obj) {
                this.f34323e = obj;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return MapMultimap.this.map.containsKey(this.f34323e) ? 1 : 0;
            }
        }

        public MapMultimap(Map<K, V> map) {
            this.map = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.map.clear();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.map.entrySet().contains(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(@CheckForNull Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean containsValue(@CheckForNull Object obj) {
            return this.map.containsValue(obj);
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V>> createAsMap() {
            return new C5990a(this);
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Collection<Map.Entry<K, V>> createEntries() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return this.map.keySet();
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Multiset<K> createKeys() {
            return new C5992c(this);
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Collection<V> createValues() {
            return this.map.values();
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return this.map.entrySet().iterator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
            return get((MapMultimap<K, V>) obj);
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public int hashCode() {
            return this.map.hashCode();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean put(@xvk K k, @xvk V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean putAll(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.map.entrySet().remove(Maps.immutableEntry(obj, obj2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((MapMultimap<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.map.size();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return this.map.entrySet();
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(@xvk K k) {
            return new C5988a(k);
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(@CheckForNull Object obj) {
            HashSet hashSet = new HashSet(2);
            if (!this.map.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(this.map.remove(obj));
            return hashSet;
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableListMultimap<K, V> extends UnmodifiableMultimap<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public UnmodifiableListMultimap(ListMultimap<K, V> listMultimap) {
            super(listMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
            return get((UnmodifiableListMultimap<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((UnmodifiableListMultimap<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(@xvk K k) {
            return Collections.unmodifiableList(delegate().get((ListMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableMultimap<K, V> extends ForwardingMultimap<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multimap<K, V> delegate;

        @CheckForNull
        @LazyInit
        transient Collection<Map.Entry<K, V>> entries;

        @CheckForNull
        @LazyInit
        transient Set<K> keySet;

        @CheckForNull
        @LazyInit
        transient Multiset<K> keys;

        @CheckForNull
        @LazyInit
        transient Map<K, Collection<V>> map;

        @CheckForNull
        @LazyInit
        transient Collection<V> values;

        /* renamed from: com.google.common.collect.Multimaps$UnmodifiableMultimap$a */
        /* loaded from: classes6.dex */
        public class C5989a implements Function<Collection<V>, Collection<V>> {
            public C5989a(UnmodifiableMultimap unmodifiableMultimap) {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<V> apply(Collection<V> collection) {
                return Multimaps.m26613g(collection);
            }
        }

        public UnmodifiableMultimap(Multimap<K, V> multimap) {
            this.delegate = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.map;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> unmodifiableMap = Collections.unmodifiableMap(Maps.transformValues(this.delegate.asMap(), new C5989a(this)));
            this.map = unmodifiableMap;
            return unmodifiableMap;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.entries;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> m26612f = Multimaps.m26612f(this.delegate.entries());
            this.entries = m26612f;
            return m26612f;
        }

        @Override // com.google.common.collect.Multimap
        public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
            this.delegate.forEach((BiConsumer) Preconditions.checkNotNull(biConsumer));
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> get(@xvk K k) {
            return Multimaps.m26613g(this.delegate.get(k));
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set = this.keySet;
            if (set != null) {
                return set;
            }
            Set<K> unmodifiableSet = Collections.unmodifiableSet(this.delegate.keySet());
            this.keySet = unmodifiableSet;
            return unmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset = this.keys;
            if (multiset != null) {
                return multiset;
            }
            Multiset<K> unmodifiableMultiset = Multisets.unmodifiableMultiset(this.delegate.keys());
            this.keys = unmodifiableMultiset;
            return unmodifiableMultiset;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean put(@xvk K k, @xvk V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> removeAll(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection = this.values;
            if (collection != null) {
                return collection;
            }
            Collection<V> unmodifiableCollection = Collections.unmodifiableCollection(this.delegate.values());
            this.values = unmodifiableCollection;
            return unmodifiableCollection;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public Multimap<K, V> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableSetMultimap<K, V> extends UnmodifiableMultimap<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public UnmodifiableSetMultimap(SetMultimap<K, V> setMultimap) {
            super(setMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
            return get((UnmodifiableSetMultimap<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((UnmodifiableSetMultimap<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return Maps.m26474M(delegate().entries());
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(@xvk K k) {
            return Collections.unmodifiableSet(delegate().get((SetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableSortedSetMultimap<K, V> extends UnmodifiableSetMultimap<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public UnmodifiableSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
            super(sortedSetMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
            return get((UnmodifiableSortedSetMultimap<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((UnmodifiableSortedSetMultimap<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.SortedSetMultimap
        @CheckForNull
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set get(@xvk Object obj) {
            return get((UnmodifiableSortedSetMultimap<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((UnmodifiableSortedSetMultimap<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(@xvk K k) {
            return Collections.unmodifiableSortedSet(delegate().get((SortedSetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$a */
    /* loaded from: classes6.dex */
    public static final class C5990a<K, V> extends Maps.AbstractC5959m0<K, Collection<V>> {

        /* renamed from: h */
        @Weak
        public final Multimap<K, V> f34327h;

        /* renamed from: com.google.common.collect.Multimaps$a$a */
        /* loaded from: classes6.dex */
        public class a extends Maps.AbstractC5963q<K, Collection<V>> {

            /* renamed from: com.google.common.collect.Multimaps$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20585a implements Function<K, Collection<V>> {
                public C20585a() {
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Collection<V> apply(@xvk K k) {
                    return C5990a.this.f34327h.get(k);
                }
            }

            public a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, Collection<V>> mo26018a() {
                return C5990a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.m26489i(C5990a.this.f34327h.keySet(), new C20585a());
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                C5990a.this.m26618g(entry.getKey());
                return true;
            }
        }

        public C5990a(Multimap<K, V> multimap) {
            this.f34327h = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, Collection<V>>> mo26014a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f34327h.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34327h.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f34327h.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f34327h.removeAll(obj);
            }
            return null;
        }

        /* renamed from: g */
        public void m26618g(@CheckForNull Object obj) {
            this.f34327h.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f34327h.isEmpty();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f34327h.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f34327h.keySet().size();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5991b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        /* renamed from: a */
        public abstract Multimap<K, V> mo26620a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            mo26620a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo26620a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo26620a().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return mo26620a().size();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$c */
    /* loaded from: classes6.dex */
    public static class C5992c<K, V> extends AbstractC6112g<K> {

        /* renamed from: e */
        @Weak
        public final Multimap<K, V> f34330e;

        /* renamed from: com.google.common.collect.Multimaps$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6108d0<Map.Entry<K, Collection<V>>, Multiset.Entry<K>> {

            /* renamed from: com.google.common.collect.Multimaps$c$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20586a extends Multisets.AbstractC6000f<K> {

                /* renamed from: e */
                public final /* synthetic */ Map.Entry f34331e;

                public C20586a(a aVar, Map.Entry entry) {
                    this.f34331e = entry;
                }

                @Override // com.google.common.collect.Multiset.Entry
                public int getCount() {
                    return ((Collection) this.f34331e.getValue()).size();
                }

                @Override // com.google.common.collect.Multiset.Entry
                @xvk
                public K getElement() {
                    return (K) this.f34331e.getKey();
                }
            }

            public a(C5992c c5992c, Iterator it2) {
                super(it2);
            }

            @Override // com.google.common.collect.AbstractC6108d0
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<K> mo26351a(Map.Entry<K, Collection<V>> entry) {
                return new C20586a(this, entry);
            }
        }

        public C5992c(Multimap<K, V> multimap) {
            this.f34330e = multimap;
        }

        /* renamed from: b */
        public static /* synthetic */ void m26622b(Consumer consumer, Map.Entry entry) {
            consumer.accept(entry.getKey());
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f34330e.clear();
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@CheckForNull Object obj) {
            return this.f34330e.containsKey(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            Collection collection = (Collection) Maps.m26468G(this.f34330e.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.AbstractC6112g
        public int distinctElements() {
            return this.f34330e.asMap().size();
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<K> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public Set<K> elementSet() {
            return this.f34330e.keySet();
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<K>> entryIterator() {
            return new a(this, this.f34330e.asMap().entrySet().iterator());
        }

        @Override // java.lang.Iterable, com.google.common.collect.Multiset
        public void forEach(final Consumer<? super K> consumer) {
            Preconditions.checkNotNull(consumer);
            this.f34330e.entries().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.iqj
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Multimaps.C5992c.m26622b(consumer, (Map.Entry) obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<K> iterator() {
            return Maps.m26503w(this.f34330e.entries().iterator());
        }

        @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public int remove(@CheckForNull Object obj, int i) {
            szd.m57279b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.m26468G(this.f34330e.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
            } else {
                Iterator it2 = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it2.next();
                    it2.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return this.f34330e.size();
        }

        @Override // java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Spliterator<K> spliterator() {
            return vzd.m57903h(this.f34330e.entries().spliterator(), new qhi());
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$d */
    /* loaded from: classes6.dex */
    public static final class C5993d<K, V1, V2> extends C5994e<K, V1, V2> implements ListMultimap<K, V2> {
        public C5993d(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(listMultimap, entryTransformer);
        }

        @Override // com.google.common.collect.Multimaps.C5994e
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public List<V2> mo26624e(@xvk K k, Collection<V1> collection) {
            return Lists.transform((List) collection, Maps.m26490j(this.f34333f, k));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.C5994e, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
            return get((C5993d<K, V1, V2>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.C5994e, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
            return replaceValues((C5993d<K, V1, V2>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.C5994e, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> get(@xvk K k) {
            return mo26624e(k, this.f34332e.get(k));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.C5994e, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> removeAll(@CheckForNull Object obj) {
            return mo26624e(obj, this.f34332e.removeAll(obj));
        }

        @Override // com.google.common.collect.Multimaps.C5994e, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> replaceValues(@xvk K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$e */
    /* loaded from: classes6.dex */
    public static class C5994e<K, V1, V2> extends AbstractC6111f<K, V2> {

        /* renamed from: e */
        public final Multimap<K, V1> f34332e;

        /* renamed from: f */
        public final Maps.EntryTransformer<? super K, ? super V1, V2> f34333f;

        /* renamed from: com.google.common.collect.Multimaps$e$a */
        /* loaded from: classes6.dex */
        public class a implements Maps.EntryTransformer<K, Collection<V1>, Collection<V2>> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.EntryTransformer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<V2> transformEntry(@xvk K k, Collection<V1> collection) {
                return C5994e.this.mo26624e(k, collection);
            }
        }

        public C5994e(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.f34332e = (Multimap) Preconditions.checkNotNull(multimap);
            this.f34333f = (Maps.EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.f34332e.clear();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34332e.containsKey(obj);
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V2>> createAsMap() {
            return Maps.transformEntries(this.f34332e.asMap(), new a());
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Collection<Map.Entry<K, V2>> createEntries() {
            return new AbstractC6111f.a();
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return this.f34332e.keySet();
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Multiset<K> createKeys() {
            return this.f34332e.keys();
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Collection<V2> createValues() {
            return Collections2.transform(this.f34332e.entries(), Maps.m26487g(this.f34333f));
        }

        /* renamed from: e */
        public Collection<V2> mo26624e(@xvk K k, Collection<V1> collection) {
            Function m26490j = Maps.m26490j(this.f34333f, k);
            return collection instanceof List ? Lists.transform((List) collection, m26490j) : Collections2.transform(collection, m26490j);
        }

        @Override // com.google.common.collect.AbstractC6111f
        public Iterator<Map.Entry<K, V2>> entryIterator() {
            return Iterators.transform(this.f34332e.entries().iterator(), Maps.m26486f(this.f34333f));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> get(@xvk K k) {
            return mo26624e(k, this.f34332e.get(k));
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean isEmpty() {
            return this.f34332e.isEmpty();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean put(@xvk K k, @xvk V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean putAll(@xvk K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return get(obj).remove(obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> removeAll(@CheckForNull Object obj) {
            return mo26624e(obj, this.f34332e.removeAll(obj));
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> replaceValues(@xvk K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.f34332e.size();
        }

        @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V2> multimap) {
            throw new UnsupportedOperationException();
        }
    }

    @Beta
    public static <K, V> Map<K, List<V>> asMap(ListMultimap<K, V> listMultimap) {
        return listMultimap.asMap();
    }

    /* renamed from: c */
    public static boolean m26609c(Multimap<?, ?> multimap, @CheckForNull Object obj) {
        if (obj == multimap) {
            return true;
        }
        if (obj instanceof Multimap) {
            return multimap.asMap().equals(((Multimap) obj).asMap());
        }
        return false;
    }

    /* renamed from: d */
    public static <K, V> Multimap<K, V> m26610d(hmg<K, V> hmgVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new C6118m(hmgVar.mo26995a(), Predicates.and(hmgVar.mo26996c(), predicate));
    }

    /* renamed from: e */
    public static <K, V> SetMultimap<K, V> m26611e(jmg<K, V> jmgVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new dmg(jmgVar.mo26995a(), Predicates.and(jmgVar.mo26996c(), predicate));
    }

    /* renamed from: f */
    public static <K, V> Collection<Map.Entry<K, V>> m26612f(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Maps.m26474M((Set) collection) : new Maps.C5951i0(Collections.unmodifiableCollection(collection));
    }

    public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (multimap instanceof SetMultimap) {
            return filterEntries((SetMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof hmg) {
            return m26610d((hmg) multimap, predicate);
        }
        return new C6118m((Multimap) Preconditions.checkNotNull(multimap), predicate);
    }

    public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        if (multimap instanceof SetMultimap) {
            return filterKeys((SetMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof ListMultimap) {
            return filterKeys((ListMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof fmg) {
            fmg fmgVar = (fmg) multimap;
            return new fmg(fmgVar.f70148e, Predicates.and(fmgVar.f70149f, predicate));
        }
        if (multimap instanceof hmg) {
            return m26610d((hmg) multimap, Maps.m26505y(predicate));
        }
        return new fmg(multimap, predicate);
    }

    public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> multimap, Predicate<? super V> predicate) {
        return filterEntries(multimap, Maps.m26480S(predicate));
    }

    @Beta
    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> flatteningToMultimap(java.util.function.Function<? super T, ? extends K> function, java.util.function.Function<? super T, ? extends Stream<? extends V>> function2, java.util.function.Supplier<M> supplier) {
        return C6116k.m26913D(function, function2, supplier);
    }

    public static <K, V> SetMultimap<K, V> forMap(Map<K, V> map) {
        return new MapMultimap(map);
    }

    /* renamed from: g */
    public static <V> Collection<V> m26613g(Collection<V> collection) {
        return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> iterable, Function<? super V, K> function) {
        return index(iterable.iterator(), function);
    }

    @CanIgnoreReturnValue
    public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> multimap, M m) {
        Preconditions.checkNotNull(m);
        for (Map.Entry<? extends V, ? extends K> entry : multimap.entries()) {
            m.put(entry.getValue(), entry.getKey());
        }
        return m;
    }

    public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
        return new CustomListMultimap(map, supplier);
    }

    public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
        return new CustomMultimap(map, supplier);
    }

    public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
        return new CustomSetMultimap(map, supplier);
    }

    public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
        return new CustomSortedSetMultimap(map, supplier);
    }

    public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> listMultimap) {
        return Synchronized.m26754k(listMultimap, null);
    }

    public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> multimap) {
        return Synchronized.m26756m(multimap, null);
    }

    public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> setMultimap) {
        return Synchronized.m26765v(setMultimap, null);
    }

    public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return Synchronized.m26768y(sortedSetMultimap, null);
    }

    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> toMultimap(java.util.function.Function<? super T, ? extends K> function, java.util.function.Function<? super T, ? extends V> function2, java.util.function.Supplier<M> supplier) {
        return C6116k.m26979v0(function, function2, supplier);
    }

    public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new C5994e(multimap, entryTransformer);
    }

    public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> multimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries(multimap, Maps.m26488h(function));
    }

    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> listMultimap) {
        return ((listMultimap instanceof UnmodifiableListMultimap) || (listMultimap instanceof ImmutableListMultimap)) ? listMultimap : new UnmodifiableListMultimap(listMultimap);
    }

    public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> multimap) {
        return ((multimap instanceof UnmodifiableMultimap) || (multimap instanceof ImmutableMultimap)) ? multimap : new UnmodifiableMultimap(multimap);
    }

    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> setMultimap) {
        return ((setMultimap instanceof UnmodifiableSetMultimap) || (setMultimap instanceof ImmutableSetMultimap)) ? setMultimap : new UnmodifiableSetMultimap(setMultimap);
    }

    public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap instanceof UnmodifiableSortedSetMultimap ? sortedSetMultimap : new UnmodifiableSortedSetMultimap(sortedSetMultimap);
    }

    /* loaded from: classes6.dex */
    public static class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {

        @GwtIncompatible
        private static final long serialVersionUID = 0;
        transient Supplier<? extends SortedSet<V>> factory;

        @CheckForNull
        transient Comparator<? super V> valueComparator;

        public CustomSortedSetMultimap(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
            super(map);
            this.factory = (Supplier) Preconditions.checkNotNull(supplier);
            this.valueComparator = supplier.get().comparator();
        }

        @GwtIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            Supplier<? extends SortedSet<V>> supplier = (Supplier) objectInputStream.readObject();
            this.factory = supplier;
            this.valueComparator = supplier.get().comparator();
            setMap((Map) objectInputStream.readObject());
        }

        @GwtIncompatible
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        @CheckForNull
        public Comparator<? super V> valueComparator() {
            return this.valueComparator;
        }

        @Override // com.google.common.collect.AbstractSortedSetMultimap, com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public SortedSet<V> createCollection() {
            return this.factory.get();
        }
    }

    @Beta
    public static <K, V> Map<K, Set<V>> asMap(SetMultimap<K, V> setMultimap) {
        return setMultimap.asMap();
    }

    public static <K, V> SetMultimap<K, V> filterValues(SetMultimap<K, V> setMultimap, Predicate<? super V> predicate) {
        return filterEntries((SetMultimap) setMultimap, Maps.m26480S(predicate));
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> it2, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        while (it2.hasNext()) {
            V next = it2.next();
            Preconditions.checkNotNull(next, it2);
            builder.put((ImmutableListMultimap.Builder) function.apply(next), (K) next);
        }
        return builder.build();
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new C5993d(listMultimap, entryTransformer);
    }

    @Beta
    public static <K, V> Map<K, SortedSet<V>> asMap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap.asMap();
    }

    @Deprecated
    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> immutableListMultimap) {
        return (ListMultimap) Preconditions.checkNotNull(immutableListMultimap);
    }

    @Deprecated
    public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> immutableMultimap) {
        return (Multimap) Preconditions.checkNotNull(immutableMultimap);
    }

    @Deprecated
    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> immutableSetMultimap) {
        return (SetMultimap) Preconditions.checkNotNull(immutableSetMultimap);
    }

    @Beta
    public static <K, V> Map<K, Collection<V>> asMap(Multimap<K, V> multimap) {
        return multimap.asMap();
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> listMultimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries((ListMultimap) listMultimap, Maps.m26488h(function));
    }

    public static <K, V> SetMultimap<K, V> filterEntries(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (setMultimap instanceof jmg) {
            return m26611e((jmg) setMultimap, predicate);
        }
        return new dmg((SetMultimap) Preconditions.checkNotNull(setMultimap), predicate);
    }

    public static <K, V> SetMultimap<K, V> filterKeys(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        if (setMultimap instanceof gmg) {
            gmg gmgVar = (gmg) setMultimap;
            return new gmg(gmgVar.mo26995a(), Predicates.and(gmgVar.f70149f, predicate));
        }
        if (setMultimap instanceof jmg) {
            return m26611e((jmg) setMultimap, Maps.m26505y(predicate));
        }
        return new gmg(setMultimap, predicate);
    }

    public static <K, V> ListMultimap<K, V> filterKeys(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        if (listMultimap instanceof emg) {
            emg emgVar = (emg) listMultimap;
            return new emg(emgVar.mo26995a(), Predicates.and(emgVar.f70149f, predicate));
        }
        return new emg(listMultimap, predicate);
    }
}
