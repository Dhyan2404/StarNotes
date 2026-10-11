package com.google.common.collect;

import Abdullah.hook;
import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.MapDifference;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Maps {

    /* loaded from: classes6.dex */
    public static final class BiMapConverter<A, B> extends Converter<A, B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final BiMap<A, B> bimap;

        public BiMapConverter(BiMap<A, B> biMap) {
            this.bimap = (BiMap) Preconditions.checkNotNull(biMap);
        }

        private static <X, Y> Y convert(BiMap<X, Y> biMap, X x) {
            Y y = biMap.get(x);
            Preconditions.checkArgument(y != null, "No non-null mapping present for input: %s", x);
            return y;
        }

        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return (A) convert(this.bimap.inverse(), b);
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return (B) convert(this.bimap, a);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof BiMapConverter) {
                return this.bimap.equals(((BiMapConverter) obj).bimap);
            }
            return false;
        }

        public int hashCode() {
            return this.bimap.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.bimap);
            StringBuilder sb = new StringBuilder(valueOf.length() + 18);
            sb.append("Maps.asConverter(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* loaded from: classes6.dex */
    public enum EntryFunction implements Function<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.common.collect.Maps.EntryFunction.1
            @Override // com.google.common.base.Function, java.util.function.Function
            @CheckForNull
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.common.collect.Maps.EntryFunction.2
            @Override // com.google.common.base.Function, java.util.function.Function
            @CheckForNull
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        /* synthetic */ EntryFunction(C5942e c5942e) {
            this();
        }
    }

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface EntryTransformer<K, V1, V2> {
        V2 transformEntry(@xvk K k, @xvk V1 v1);
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableBiMap<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final BiMap<? extends K, ? extends V> delegate;

        @RetainedWith
        @CheckForNull
        BiMap<V, K> inverse;
        final Map<K, V> unmodifiableMap;

        @CheckForNull
        transient Set<V> values;

        public UnmodifiableBiMap(BiMap<? extends K, ? extends V> biMap, @CheckForNull BiMap<V, K> biMap2) {
            this.unmodifiableMap = Collections.unmodifiableMap(biMap);
            this.delegate = biMap;
            this.inverse = biMap2;
        }

        @Override // java.util.Map
        public V compute(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public V computeIfAbsent(K k, java.util.function.Function<? super K, ? extends V> function) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public V computeIfPresent(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.BiMap
        @CheckForNull
        public V forcePut(@xvk K k, @xvk V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap = this.inverse;
            if (biMap != null) {
                return biMap;
            }
            UnmodifiableBiMap unmodifiableBiMap = new UnmodifiableBiMap(this.delegate.inverse(), this);
            this.inverse = unmodifiableBiMap;
            return unmodifiableBiMap;
        }

        @Override // java.util.Map
        public V merge(K k, V v, BiFunction<? super V, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        @CheckForNull
        public V putIfAbsent(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean replace(K k, V v, V v2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<K, V> delegate() {
            return this.unmodifiableMap;
        }

        @Override // java.util.Map
        @CheckForNull
        public V replace(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Set<V> values() {
            Set<V> set = this.values;
            if (set != null) {
                return set;
            }
            Set<V> unmodifiableSet = Collections.unmodifiableSet(this.delegate.values());
            this.values = unmodifiableSet;
            return unmodifiableSet;
        }
    }

    @GwtIncompatible
    /* loaded from: classes6.dex */
    public static class UnmodifiableNavigableMap<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V>, Serializable {
        private final NavigableMap<K, ? extends V> delegate;

        @CheckForNull
        private transient UnmodifiableNavigableMap<K, V> descendingMap;

        public UnmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap) {
            this.delegate = navigableMap;
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> ceilingEntry(@xvk K k) {
            return Maps.m26476O(this.delegate.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K ceilingKey(@xvk K k) {
            return this.delegate.ceilingKey(k);
        }

        @Override // java.util.Map
        public V compute(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public V computeIfAbsent(K k, java.util.function.Function<? super K, ? extends V> function) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public V computeIfPresent(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Sets.unmodifiableNavigableSet(this.delegate.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap = this.descendingMap;
            if (unmodifiableNavigableMap != null) {
                return unmodifiableNavigableMap;
            }
            UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap2 = new UnmodifiableNavigableMap<>(this.delegate.descendingMap(), this);
            this.descendingMap = unmodifiableNavigableMap2;
            return unmodifiableNavigableMap2;
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> firstEntry() {
            return Maps.m26476O(this.delegate.firstEntry());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> floorEntry(@xvk K k) {
            return Maps.m26476O(this.delegate.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K floorKey(@xvk K k) {
            return this.delegate.floorKey(k);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> headMap(@xvk K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> higherEntry(@xvk K k) {
            return Maps.m26476O(this.delegate.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K higherKey(@xvk K k) {
            return this.delegate.higherKey(k);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> lastEntry() {
            return Maps.m26476O(this.delegate.lastEntry());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> lowerEntry(@xvk K k) {
            return Maps.m26476O(this.delegate.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K lowerKey(@xvk K k) {
            return this.delegate.lowerKey(k);
        }

        @Override // java.util.Map
        public V merge(K k, V v, BiFunction<? super V, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Sets.unmodifiableNavigableSet(this.delegate.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        @CheckForNull
        public V putIfAbsent(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean replace(K k, V v, V v2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> subMap(@xvk K k, @xvk K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(@xvk K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(@xvk K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.delegate.headMap(k, z));
        }

        @Override // java.util.Map
        @CheckForNull
        public V replace(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return Maps.unmodifiableNavigableMap(this.delegate.subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(@xvk K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.delegate.tailMap(k, z));
        }

        public UnmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap, UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap) {
            this.delegate = navigableMap;
            this.descendingMap = unmodifiableNavigableMap;
        }

        @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public SortedMap<K, V> delegate() {
            return Collections.unmodifiableSortedMap(this.delegate);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V1, V2] */
    /* renamed from: com.google.common.collect.Maps$a */
    /* loaded from: classes6.dex */
    public class C5934a<V1, V2> implements Function<V1, V2> {

        /* renamed from: e */
        public final /* synthetic */ EntryTransformer f34219e;

        /* renamed from: f */
        public final /* synthetic */ Object f34220f;

        public C5934a(EntryTransformer entryTransformer, Object obj) {
            this.f34219e = entryTransformer;
            this.f34220f = obj;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        @xvk
        public V2 apply(@xvk V1 v1) {
            return (V2) this.f34219e.transformEntry(this.f34220f, v1);
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Maps$a0 */
    /* loaded from: classes6.dex */
    public static final class C5935a0<K, V> extends AbstractC6113h<K, V> {

        /* renamed from: e */
        public final NavigableSet<K> f34221e;

        /* renamed from: f */
        public final Function<? super K, V> f34222f;

        public C5935a0(NavigableSet<K> navigableSet, Function<? super K, V> function) {
            this.f34221e = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.f34222f = (Function) Preconditions.checkNotNull(function);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ Map.Entry m26509d(Object obj) {
            return Maps.immutableEntry(obj, this.f34222f.apply(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m26510e(BiConsumer biConsumer, Object obj) {
            biConsumer.accept(obj, this.f34222f.apply(obj));
        }

        @Override // com.google.common.collect.AbstractC6113h
        /* renamed from: a */
        public Iterator<Map.Entry<K, V>> mo26511a() {
            return descendingMap().entrySet().iterator();
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f34221e.clear();
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return this.f34221e.comparator();
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.asMap((NavigableSet) this.f34221e.descendingSet(), (Function) this.f34222f);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return Maps.m26489i(this.f34221e, this.f34222f);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Spliterator<Map.Entry<K, V>> entrySpliterator() {
            return vzd.m57903h(this.f34221e.spliterator(), new java.util.function.Function() { // from class: com.sunia.HTREnginev2.v8j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Map.Entry m26509d;
                    m26509d = Maps.C5935a0.this.m26509d(obj);
                    return m26509d;
                }
            });
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
            this.f34221e.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.w8j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Maps.C5935a0.this.m26510e(biConsumer, obj);
                }
            });
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return getOrDefault(obj, null);
        }

        @Override // java.util.Map
        @CheckForNull
        public V getOrDefault(@CheckForNull Object obj, @CheckForNull V v) {
            return Collections2.m26077e(this.f34221e, obj) ? this.f34222f.apply(obj) : v;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(@xvk K k, boolean z) {
            return Maps.asMap((NavigableSet) this.f34221e.headSet(k, z), (Function) this.f34222f);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Maps.m26464C(this.f34221e);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f34221e.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return Maps.asMap((NavigableSet) this.f34221e.subSet(k, z, k2, z2), (Function) this.f34222f);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(@xvk K k, boolean z) {
            return Maps.asMap((NavigableSet) this.f34221e.tailSet(k, z), (Function) this.f34222f);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$b */
    /* loaded from: classes6.dex */
    public class C5936b<K, V1, V2> implements Function<Map.Entry<K, V1>, V2> {

        /* renamed from: e */
        public final /* synthetic */ EntryTransformer f34223e;

        public C5936b(EntryTransformer entryTransformer) {
            this.f34223e = entryTransformer;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        @xvk
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public V2 apply(Map.Entry<K, V1> entry) {
            return (V2) this.f34223e.transformEntry(entry.getKey(), entry.getValue());
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Maps$b0 */
    /* loaded from: classes6.dex */
    public static class C5937b0<K, V> extends C5941d0<K, V> implements NavigableSet<K> {
        public C5937b0(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K ceiling(@xvk K k) {
            return mo26513c().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return mo26513c().descendingKeySet();
        }

        @Override // com.google.common.collect.Maps.C5941d0
        /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableMap<K, V> mo26514d() {
            return (NavigableMap) this.f34269e;
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K floor(@xvk K k) {
            return mo26513c().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(@xvk K k, boolean z) {
            return mo26513c().headMap(k, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K higher(@xvk K k) {
            return mo26513c().higherKey(k);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K lower(@xvk K k) {
            return mo26513c().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K pollFirst() {
            return (K) Maps.m26504x(mo26513c().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public K pollLast() {
            return (K) Maps.m26504x(mo26513c().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return mo26513c().subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(@xvk K k, boolean z) {
            return mo26513c().tailMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.C5941d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(@xvk K k) {
            return headSet(k, false);
        }

        @Override // com.google.common.collect.Maps.C5941d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(@xvk K k, @xvk K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.C5941d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(@xvk K k) {
            return tailSet(k, true);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V2] */
    /* renamed from: com.google.common.collect.Maps$c */
    /* loaded from: classes6.dex */
    public class C5938c<K, V2> extends AbstractC14741z3<K, V2> {

        /* renamed from: e */
        public final /* synthetic */ Map.Entry f34224e;

        /* renamed from: f */
        public final /* synthetic */ EntryTransformer f34225f;

        public C5938c(Map.Entry entry, EntryTransformer entryTransformer) {
            this.f34224e = entry;
            this.f34225f = entryTransformer;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public K getKey() {
            return (K) this.f34224e.getKey();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V2 getValue() {
            return (V2) this.f34225f.transformEntry(this.f34224e.getKey(), this.f34224e.getValue());
        }
    }

    /* renamed from: com.google.common.collect.Maps$c0 */
    /* loaded from: classes6.dex */
    public static class C5939c0<K, V> extends C5961o<K, V> implements SortedMap<K, V> {
        public C5939c0(SortedSet<K> sortedSet, Function<? super K, V> function) {
            super(sortedSet, function);
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return mo26516e().comparator();
        }

        @Override // java.util.SortedMap
        @xvk
        public K firstKey() {
            return mo26516e().first();
        }

        @Override // com.google.common.collect.Maps.C5961o
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> mo26516e() {
            return (SortedSet) super.mo26516e();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(@xvk K k) {
            return Maps.asMap((SortedSet) mo26516e().headSet(k), (Function) this.f34246i);
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return Maps.m26466E(mo26516e());
        }

        @Override // java.util.SortedMap
        @xvk
        public K lastKey() {
            return mo26516e().last();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(@xvk K k, @xvk K k2) {
            return Maps.asMap((SortedSet) mo26516e().subSet(k, k2), (Function) this.f34246i);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(@xvk K k) {
            return Maps.asMap((SortedSet) mo26516e().tailSet(k), (Function) this.f34246i);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$d */
    /* loaded from: classes6.dex */
    public class C5940d<K, V1, V2> implements Function<Map.Entry<K, V1>, Map.Entry<K, V2>> {

        /* renamed from: e */
        public final /* synthetic */ EntryTransformer f34226e;

        public C5940d(EntryTransformer entryTransformer) {
            this.f34226e = entryTransformer;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return Maps.m26471J(this.f34226e, entry);
        }
    }

    /* renamed from: com.google.common.collect.Maps$d0 */
    /* loaded from: classes6.dex */
    public static class C5941d0<K, V> extends C5971y<K, V> implements SortedSet<K> {
        public C5941d0(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public Comparator<? super K> comparator() {
            return mo26514d().comparator();
        }

        @Override // com.google.common.collect.Maps.C5971y
        /* renamed from: d */
        public SortedMap<K, V> mo26514d() {
            return (SortedMap) super.mo26514d();
        }

        @Override // java.util.SortedSet
        @xvk
        public K first() {
            return mo26514d().firstKey();
        }

        public SortedSet<K> headSet(@xvk K k) {
            return new C5941d0(mo26514d().headMap(k));
        }

        @Override // java.util.SortedSet
        @xvk
        public K last() {
            return mo26514d().lastKey();
        }

        public SortedSet<K> subSet(@xvk K k, @xvk K k2) {
            return new C5941d0(mo26514d().subMap(k, k2));
        }

        public SortedSet<K> tailSet(@xvk K k) {
            return new C5941d0(mo26514d().tailMap(k));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$e */
    /* loaded from: classes6.dex */
    public class C5942e<K, V> extends AbstractC6108d0<Map.Entry<K, V>, K> {
        public C5942e(Iterator it2) {
            super(it2);
        }

        @Override // com.google.common.collect.AbstractC6108d0
        @xvk
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public K mo26351a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* renamed from: com.google.common.collect.Maps$e0 */
    /* loaded from: classes6.dex */
    public static class C5943e0<K, V> extends C5972z<K, V> implements SortedMapDifference<K, V> {
        public C5943e0(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, MapDifference.ValueDifference<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override // com.google.common.collect.Maps.C5972z, com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return (SortedMap) super.entriesDiffering();
        }

        @Override // com.google.common.collect.Maps.C5972z, com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public SortedMap<K, V> entriesInCommon() {
            return (SortedMap) super.entriesInCommon();
        }

        @Override // com.google.common.collect.Maps.C5972z, com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public SortedMap<K, V> entriesOnlyOnLeft() {
            return (SortedMap) super.entriesOnlyOnLeft();
        }

        @Override // com.google.common.collect.Maps.C5972z, com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public SortedMap<K, V> entriesOnlyOnRight() {
            return (SortedMap) super.entriesOnlyOnRight();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$f */
    /* loaded from: classes6.dex */
    public class C5944f<K, V> extends AbstractC6108d0<Map.Entry<K, V>, V> {
        public C5944f(Iterator it2) {
            super(it2);
        }

        @Override // com.google.common.collect.AbstractC6108d0
        @xvk
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public V mo26351a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$f0 */
    /* loaded from: classes6.dex */
    public static class C5945f0<K, V1, V2> extends AbstractC5970x<K, V2> {

        /* renamed from: e */
        public final Map<K, V1> f34227e;

        /* renamed from: f */
        public final EntryTransformer<? super K, ? super V1, V2> f34228f;

        public C5945f0(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.f34227e = (Map) Preconditions.checkNotNull(map);
            this.f34228f = (EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$forEach$0(BiConsumer biConsumer, Object obj, Object obj2) {
            biConsumer.accept(obj, this.f34228f.transformEntry(obj, obj2));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f34227e.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34227e.containsKey(obj);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<K, V2>> entryIterator() {
            return Iterators.transform(this.f34227e.entrySet().iterator(), Maps.m26486f(this.f34228f));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Spliterator<Map.Entry<K, V2>> entrySpliterator() {
            return vzd.m57903h(this.f34227e.entrySet().spliterator(), Maps.m26486f(this.f34228f));
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super K, ? super V2> biConsumer) {
            Preconditions.checkNotNull(biConsumer);
            this.f34227e.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.x8j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    Maps.C5945f0.this.lambda$forEach$0(biConsumer, obj, obj2);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V2 get(@CheckForNull Object obj) {
            return getOrDefault(obj, null);
        }

        @Override // java.util.Map
        @CheckForNull
        public V2 getOrDefault(@CheckForNull Object obj, @CheckForNull V2 v2) {
            V1 v1 = this.f34227e.get(obj);
            return (v1 != null || this.f34227e.containsKey(obj)) ? this.f34228f.transformEntry(obj, (Object) p5k.m56213a(v1)) : v2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f34227e.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V2 remove(@CheckForNull Object obj) {
            if (this.f34227e.containsKey(obj)) {
                return this.f34228f.transformEntry(obj, (Object) p5k.m56213a(this.f34227e.remove(obj)));
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f34227e.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new C5957l0(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$g */
    /* loaded from: classes6.dex */
    public class C5946g<K, V> extends AbstractC6108d0<K, Map.Entry<K, V>> {

        /* renamed from: f */
        public final /* synthetic */ Function f34229f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5946g(Iterator it2, Function function) {
            super(it2);
            this.f34229f = function;
        }

        @Override // com.google.common.collect.AbstractC6108d0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo26351a(@xvk K k) {
            return Maps.immutableEntry(k, this.f34229f.apply(k));
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Maps$g0 */
    /* loaded from: classes6.dex */
    public static class C5947g0<K, V1, V2> extends C5949h0<K, V1, V2> implements NavigableMap<K, V2> {
        public C5947g0(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(navigableMap, entryTransformer);
        }

        @Override // com.google.common.collect.Maps.C5949h0
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V1> mo26523b() {
            return (NavigableMap) super.mo26523b();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> ceilingEntry(@xvk K k) {
            return m26528g(mo26523b().ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K ceilingKey(@xvk K k) {
            return mo26523b().ceilingKey(k);
        }

        @Override // com.google.common.collect.Maps.C5949h0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> headMap(@xvk K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return mo26523b().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return Maps.transformEntries((NavigableMap) mo26523b().descendingMap(), (EntryTransformer) this.f34228f);
        }

        @Override // com.google.common.collect.Maps.C5949h0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> subMap(@xvk K k, @xvk K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.C5949h0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> tailMap(@xvk K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> firstEntry() {
            return m26528g(mo26523b().firstEntry());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> floorEntry(@xvk K k) {
            return m26528g(mo26523b().floorEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K floorKey(@xvk K k) {
            return mo26523b().floorKey(k);
        }

        @CheckForNull
        /* renamed from: g */
        public final Map.Entry<K, V2> m26528g(@CheckForNull Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return Maps.m26471J(this.f34228f, entry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> higherEntry(@xvk K k) {
            return m26528g(mo26523b().higherEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K higherKey(@xvk K k) {
            return mo26523b().higherKey(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> lastEntry() {
            return m26528g(mo26523b().lastEntry());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> lowerEntry(@xvk K k) {
            return m26528g(mo26523b().lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K lowerKey(@xvk K k) {
            return mo26523b().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return mo26523b().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> pollFirstEntry() {
            return m26528g(mo26523b().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V2> pollLastEntry() {
            return m26528g(mo26523b().pollLastEntry());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(@xvk K k, boolean z) {
            return Maps.transformEntries((NavigableMap) mo26523b().headMap(k, z), (EntryTransformer) this.f34228f);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return Maps.transformEntries((NavigableMap) mo26523b().subMap(k, z, k2, z2), (EntryTransformer) this.f34228f);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(@xvk K k, boolean z) {
            return Maps.transformEntries((NavigableMap) mo26523b().tailMap(k, z), (EntryTransformer) this.f34228f);
        }
    }

    /* renamed from: com.google.common.collect.Maps$h0 */
    /* loaded from: classes6.dex */
    public static class C5949h0<K, V1, V2> extends C5945f0<K, V1, V2> implements SortedMap<K, V2> {
        public C5949h0(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(sortedMap, entryTransformer);
        }

        /* renamed from: b */
        public SortedMap<K, V1> mo26523b() {
            return (SortedMap) this.f34227e;
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return mo26523b().comparator();
        }

        @Override // java.util.SortedMap
        @xvk
        public K firstKey() {
            return mo26523b().firstKey();
        }

        public SortedMap<K, V2> headMap(@xvk K k) {
            return Maps.transformEntries((SortedMap) mo26523b().headMap(k), (EntryTransformer) this.f34228f);
        }

        @Override // java.util.SortedMap
        @xvk
        public K lastKey() {
            return mo26523b().lastKey();
        }

        public SortedMap<K, V2> subMap(@xvk K k, @xvk K k2) {
            return Maps.transformEntries((SortedMap) mo26523b().subMap(k, k2), (EntryTransformer) this.f34228f);
        }

        public SortedMap<K, V2> tailMap(@xvk K k) {
            return Maps.transformEntries((SortedMap) mo26523b().tailMap(k), (EntryTransformer) this.f34228f);
        }
    }

    /* renamed from: com.google.common.collect.Maps$i0 */
    /* loaded from: classes6.dex */
    public static class C5951i0<K, V> extends ForwardingCollection<Map.Entry<K, V>> {

        /* renamed from: e */
        public final Collection<Map.Entry<K, V>> f34232e;

        public C5951i0(Collection<Map.Entry<K, V>> collection) {
            this.f34232e = collection;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return Maps.m26473L(this.f34232e.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return this.f34232e;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$j */
    /* loaded from: classes6.dex */
    public class C5952j<E> extends ForwardingNavigableSet<E> {

        /* renamed from: e */
        public final /* synthetic */ NavigableSet f34233e;

        public C5952j(NavigableSet navigableSet) {
            this.f34233e = navigableSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Maps.m26464C(super.descendingSet());
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(@xvk E e) {
            return Maps.m26466E(super.headSet(e));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(@xvk E e, @xvk E e2) {
            return Maps.m26466E(super.subSet(e, e2));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(@xvk E e) {
            return Maps.m26466E(super.tailSet(e));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> headSet(@xvk E e, boolean z) {
            return Maps.m26464C(super.headSet(e, z));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> subSet(@xvk E e, boolean z, @xvk E e2, boolean z2) {
            return Maps.m26464C(super.subSet(e, z, e2, z2));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> tailSet(@xvk E e, boolean z) {
            return Maps.m26464C(super.tailSet(e, z));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public NavigableSet<E> delegate() {
            return this.f34233e;
        }
    }

    /* renamed from: com.google.common.collect.Maps$j0 */
    /* loaded from: classes6.dex */
    public static class C5953j0<K, V> extends C5951i0<K, V> implements Set<Map.Entry<K, V>> {
        public C5953j0(Set<Map.Entry<K, V>> set) {
            super(set);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.m26675a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m26676b(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$k */
    /* loaded from: classes6.dex */
    public class C5954k<K, V> extends AbstractC14741z3<K, V> {

        /* renamed from: e */
        public final /* synthetic */ Map.Entry f34234e;

        public C5954k(Map.Entry entry) {
            this.f34234e = entry;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public K getKey() {
            return (K) this.f34234e.getKey();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V getValue() {
            return (V) this.f34234e.getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$k0 */
    /* loaded from: classes6.dex */
    public static class C5955k0<V> implements MapDifference.ValueDifference<V> {

        /* renamed from: a */
        @xvk
        public final V f34235a;

        /* renamed from: b */
        @xvk
        public final V f34236b;

        public C5955k0(@xvk V v, @xvk V v2) {
            this.f34235a = v;
            this.f34236b = v2;
        }

        /* renamed from: a */
        public static <V> MapDifference.ValueDifference<V> m26529a(@xvk V v, @xvk V v2) {
            return new C5955k0(v, v2);
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof MapDifference.ValueDifference)) {
                return false;
            }
            MapDifference.ValueDifference valueDifference = (MapDifference.ValueDifference) obj;
            return Objects.equal(this.f34235a, valueDifference.leftValue()) && Objects.equal(this.f34236b, valueDifference.rightValue());
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public int hashCode() {
            return Objects.hashCode(this.f34235a, this.f34236b);
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        @xvk
        public V leftValue() {
            return this.f34235a;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        @xvk
        public V rightValue() {
            return this.f34236b;
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34235a);
            String valueOf2 = String.valueOf(this.f34236b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 4 + valueOf2.length());
            sb.append(MotionUtils.f31761c);
            sb.append(valueOf);
            sb.append(", ");
            sb.append(valueOf2);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$l */
    /* loaded from: classes6.dex */
    public class C5956l<K, V> extends UnmodifiableIterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34237e;

        public C5956l(Iterator it2) {
            this.f34237e = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return Maps.m26472K((Map.Entry) this.f34237e.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34237e.hasNext();
        }
    }

    /* renamed from: com.google.common.collect.Maps$l0 */
    /* loaded from: classes6.dex */
    public static class C5957l0<K, V> extends AbstractCollection<V> {

        /* renamed from: e */
        @Weak
        public final Map<K, V> f34238e;

        public C5957l0(Map<K, V> map) {
            this.f34238e = (Map) Preconditions.checkNotNull(map);
        }

        /* renamed from: c */
        public final Map<K, V> m26533c() {
            return this.f34238e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            m26533c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            return m26533c().containsValue(obj);
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super V> consumer) {
            Preconditions.checkNotNull(consumer);
            this.f34238e.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.y8j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    consumer.accept(obj2);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return m26533c().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.m26478Q(m26533c().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : this.m26533c().entrySet()) {
                    if (Objects.equal(obj, entry.getValue())) {
                        this.m26533c().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet newHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : this.m26533c().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        newHashSet.add(entry.getKey());
                    }
                }
                return this.m26533c().keySet().removeAll(newHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet newHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : this.m26533c().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        newHashSet.add(entry.getKey());
                    }
                }
                return this.m26533c().keySet().retainAll(newHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return m26533c().size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$m */
    /* loaded from: classes6.dex */
    public class C5958m<K, V1, V2> implements EntryTransformer<K, V1, V2> {

        /* renamed from: a */
        public final /* synthetic */ Function f34239a;

        public C5958m(Function function) {
            this.f34239a = function;
        }

        @Override // com.google.common.collect.Maps.EntryTransformer
        @xvk
        public V2 transformEntry(@xvk K k, @xvk V1 v1) {
            return (V2) this.f34239a.apply(v1);
        }
    }

    @GwtCompatible
    /* renamed from: com.google.common.collect.Maps$m0 */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5959m0<K, V> extends AbstractMap<K, V> {

        /* renamed from: e */
        @CheckForNull
        public transient Set<Map.Entry<K, V>> f34240e;

        /* renamed from: f */
        @CheckForNull
        public transient Set<K> f34241f;

        /* renamed from: g */
        @CheckForNull
        public transient Collection<V> f34242g;

        /* renamed from: a */
        abstract Set<Map.Entry<K, V>> mo26014a();

        /* renamed from: b */
        public Set<K> mo26021g() {
            return new C5971y(this);
        }

        /* renamed from: c */
        public Collection<V> mo26534c() {
            return new C5957l0(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f34240e;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> mo26014a = mo26014a();
            this.f34240e = mo26014a;
            return mo26014a;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f34241f;
            if (set != null) {
                return set;
            }
            Set<K> mo26021g = mo26021g();
            this.f34241f = mo26021g;
            return mo26021g;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f34242g;
            if (collection != null) {
                return collection;
            }
            Collection<V> mo26534c = mo26534c();
            this.f34242g = mo26534c;
            return mo26534c;
        }
    }

    /* renamed from: com.google.common.collect.Maps$n */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5960n<K, V> extends AbstractC5959m0<K, V> {

        /* renamed from: h */
        public final Map<K, V> f34243h;

        /* renamed from: i */
        public final Predicate<? super Map.Entry<K, V>> f34244i;

        public AbstractC5960n(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            this.f34243h = map;
            this.f34244i = predicate;
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: c */
        public Collection<V> mo26534c() {
            return new C5969w(this, this.f34243h, this.f34244i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34243h.containsKey(obj) && m26535d(obj, this.f34243h.get(obj));
        }

        /* renamed from: d */
        public boolean m26535d(@CheckForNull Object obj, @xvk V v) {
            return this.f34244i.apply(Maps.immutableEntry(obj, v));
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            V v = this.f34243h.get(obj);
            if (v == null || !m26535d(obj, v)) {
                return null;
            }
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(@xvk K k, @xvk V v) {
            Preconditions.checkArgument(m26535d(k, v));
            return this.f34243h.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                Preconditions.checkArgument(m26535d(entry.getKey(), entry.getValue()));
            }
            this.f34243h.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f34243h.remove(obj);
            }
            return null;
        }
    }

    /* renamed from: com.google.common.collect.Maps$o */
    /* loaded from: classes6.dex */
    public static class C5961o<K, V> extends AbstractC5959m0<K, V> {

        /* renamed from: h */
        public final Set<K> f34245h;

        /* renamed from: i */
        public final Function<? super K, V> f34246i;

        /* renamed from: com.google.common.collect.Maps$o$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5963q<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, V> mo26018a() {
                return C5961o.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Maps.m26489i(C5961o.this.mo26516e(), C5961o.this.f34246i);
            }
        }

        public C5961o(Set<K> set, Function<? super K, V> function) {
            this.f34245h = (Set) Preconditions.checkNotNull(set);
            this.f34246i = (Function) Preconditions.checkNotNull(function);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m26537f(BiConsumer biConsumer, Object obj) {
            biConsumer.accept(obj, this.f34246i.apply(obj));
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, V>> mo26014a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: b */
        public Set<K> mo26021g() {
            return Maps.m26465D(mo26516e());
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: c */
        public Collection<V> mo26534c() {
            return Collections2.transform(this.f34245h, this.f34246i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            mo26516e().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return mo26516e().contains(obj);
        }

        /* renamed from: e */
        public Set<K> mo26516e() {
            return this.f34245h;
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
            Preconditions.checkNotNull(biConsumer);
            mo26516e().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.s8j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Maps.C5961o.this.m26537f(biConsumer, obj);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return getOrDefault(obj, null);
        }

        @Override // java.util.Map
        @CheckForNull
        public V getOrDefault(@CheckForNull Object obj, @CheckForNull V v) {
            return Collections2.m26077e(mo26516e(), obj) ? this.f34246i.apply(obj) : v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            if (mo26516e().remove(obj)) {
                return this.f34246i.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return mo26516e().size();
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Maps$p */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5962p<K, V> extends ForwardingMap<K, V> implements NavigableMap<K, V> {

        /* renamed from: e */
        @CheckForNull
        public transient Comparator<? super K> f34248e;

        /* renamed from: f */
        @CheckForNull
        public transient Set<Map.Entry<K, V>> f34249f;

        /* renamed from: g */
        @CheckForNull
        public transient NavigableSet<K> f34250g;

        /* renamed from: com.google.common.collect.Maps$p$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5963q<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, V> mo26018a() {
                return AbstractC5962p.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return AbstractC5962p.this.entryIterator();
            }
        }

        /* renamed from: h */
        public static <T> Ordering<T> m26538h(Comparator<T> comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> ceilingEntry(@xvk K k) {
            return mo26135g().floorEntry(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K ceilingKey(@xvk K k) {
            return mo26135g().floorKey(k);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f34248e;
            if (comparator != null) {
                return comparator;
            }
            Comparator<? super K> comparator2 = mo26135g().comparator();
            if (comparator2 == null) {
                comparator2 = Ordering.natural();
            }
            Ordering m26538h = m26538h(comparator2);
            this.f34248e = m26538h;
            return m26538h;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return mo26135g().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return mo26135g();
        }

        /* renamed from: e */
        public Set<Map.Entry<K, V>> m26539e() {
            return new a();
        }

        public abstract Iterator<Map.Entry<K, V>> entryIterator();

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f34249f;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> m26539e = m26539e();
            this.f34249f = m26539e;
            return m26539e;
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> firstEntry() {
            return mo26135g().lastEntry();
        }

        @Override // java.util.SortedMap
        @xvk
        public K firstKey() {
            return mo26135g().lastKey();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> floorEntry(@xvk K k) {
            return mo26135g().ceilingEntry(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K floorKey(@xvk K k) {
            return mo26135g().ceilingKey(k);
        }

        /* renamed from: g */
        public abstract NavigableMap<K, V> mo26135g();

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(@xvk K k, boolean z) {
            return mo26135g().tailMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> higherEntry(@xvk K k) {
            return mo26135g().lowerEntry(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K higherKey(@xvk K k) {
            return mo26135g().lowerKey(k);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> lastEntry() {
            return mo26135g().firstEntry();
        }

        @Override // java.util.SortedMap
        @xvk
        public K lastKey() {
            return mo26135g().firstKey();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> lowerEntry(@xvk K k) {
            return mo26135g().higherEntry(k);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public K lowerKey(@xvk K k) {
            return mo26135g().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f34250g;
            if (navigableSet != null) {
                return navigableSet;
            }
            C5937b0 c5937b0 = new C5937b0(this);
            this.f34250g = c5937b0;
            return c5937b0;
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> pollFirstEntry() {
            return mo26135g().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> pollLastEntry() {
            return mo26135g().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return mo26135g().subMap(k2, z2, k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(@xvk K k, boolean z) {
            return mo26135g().headMap(k, z).descendingMap();
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Collection<V> values() {
            return new C5957l0(this);
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Map<K, V> delegate() {
            return mo26135g();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(@xvk K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(@xvk K k, @xvk K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(@xvk K k) {
            return tailMap(k, true);
        }
    }

    /* renamed from: com.google.common.collect.Maps$q */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5963q<K, V> extends Sets.AbstractC6030j<Map.Entry<K, V>> {
        /* renamed from: a */
        public abstract Map<K, V> mo26018a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo26018a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object m26468G = Maps.m26468G(mo26018a(), key);
            if (Objects.equal(m26468G, entry.getValue())) {
                return m26468G != null || mo26018a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo26018a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return mo26018a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                return Sets.m26679e(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet newHashSetWithExpectedSize = Sets.newHashSetWithExpectedSize(collection.size());
                for (Object obj : collection) {
                    if (this.contains(obj) && (obj instanceof Map.Entry)) {
                        newHashSetWithExpectedSize.add(((Map.Entry) obj).getKey());
                    }
                }
                return this.mo26018a().keySet().retainAll(newHashSetWithExpectedSize);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo26018a().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$r */
    /* loaded from: classes6.dex */
    public static final class C5964r<K, V> extends C5965s<K, V> implements BiMap<K, V> {

        /* renamed from: k */
        @RetainedWith
        public final BiMap<V, K> f34252k;

        /* renamed from: com.google.common.collect.Maps$r$a */
        /* loaded from: classes6.dex */
        public class a implements Predicate<Map.Entry<V, K>> {

            /* renamed from: e */
            public final /* synthetic */ Predicate f34253e;

            public a(Predicate predicate) {
                this.f34253e = predicate;
            }

            @Override // com.google.common.base.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(Map.Entry<V, K> entry) {
                return this.f34253e.apply(Maps.immutableEntry(entry.getValue(), entry.getKey()));
            }
        }

        public C5964r(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(biMap, predicate);
            this.f34252k = new C5964r(biMap.inverse(), m26541h(predicate), this);
        }

        /* renamed from: h */
        public static <K, V> Predicate<Map.Entry<V, K>> m26541h(Predicate<? super Map.Entry<K, V>> predicate) {
            return new a(predicate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ Object m26542i(BiFunction biFunction, Object obj, Object obj2) {
            return this.f34244i.apply(Maps.immutableEntry(obj, obj2)) ? biFunction.apply(obj, obj2) : obj2;
        }

        @Override // com.google.common.collect.BiMap
        @CheckForNull
        public V forcePut(@xvk K k, @xvk V v) {
            Preconditions.checkArgument(m26535d(k, v));
            return m26543j().forcePut(k, v);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            return this.f34252k;
        }

        /* renamed from: j */
        public BiMap<K, V> m26543j() {
            return (BiMap) this.f34243h;
        }

        @Override // java.util.Map
        public void replaceAll(final BiFunction<? super K, ? super V, ? extends V> biFunction) {
            m26543j().replaceAll(new BiFunction() { // from class: com.sunia.HTREnginev2.t8j
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    Object m26542i;
                    m26542i = Maps.C5964r.this.m26542i(biFunction, obj, obj2);
                    return m26542i;
                }
            });
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.f34252k.keySet();
        }

        public C5964r(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate, BiMap<V, K> biMap2) {
            super(biMap, predicate);
            this.f34252k = biMap2;
        }
    }

    /* renamed from: com.google.common.collect.Maps$s */
    /* loaded from: classes6.dex */
    public static class C5965s<K, V> extends AbstractC5960n<K, V> {

        /* renamed from: j */
        public final Set<Map.Entry<K, V>> f34254j;

        /* renamed from: com.google.common.collect.Maps$s$a */
        /* loaded from: classes6.dex */
        public class a extends ForwardingSet<Map.Entry<K, V>> {

            /* renamed from: com.google.common.collect.Maps$s$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20583a extends AbstractC6108d0<Map.Entry<K, V>, Map.Entry<K, V>> {

                /* renamed from: com.google.common.collect.Maps$s$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public class C20584a extends ForwardingMapEntry<K, V> {

                    /* renamed from: e */
                    public final /* synthetic */ Map.Entry f34257e;

                    public C20584a(Map.Entry entry) {
                        this.f34257e = entry;
                    }

                    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                    @xvk
                    public V setValue(@xvk V v) {
                        Preconditions.checkArgument(C5965s.this.m26535d(getKey(), v));
                        return (V) super.setValue(v);
                    }

                    @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                    public Map.Entry<K, V> delegate() {
                        return this.f34257e;
                    }
                }

                public C20583a(Iterator it2) {
                    super(it2);
                }

                @Override // com.google.common.collect.AbstractC6108d0
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> mo26351a(Map.Entry<K, V> entry) {
                    return new C20584a(entry);
                }
            }

            public a() {
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C20583a(C5965s.this.f34254j.iterator());
            }

            public /* synthetic */ a(C5965s c5965s, C5942e c5942e) {
                this();
            }

            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<Map.Entry<K, V>> delegate() {
                return C5965s.this.f34254j;
            }
        }

        /* renamed from: com.google.common.collect.Maps$s$b */
        /* loaded from: classes6.dex */
        public class b extends C5971y<K, V> {
            public b() {
                super(C5965s.this);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                if (!C5965s.this.containsKey(obj)) {
                    return false;
                }
                C5965s.this.f34243h.remove(obj);
                return true;
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                C5965s c5965s = C5965s.this;
                return C5965s.m26545e(c5965s.f34243h, c5965s.f34244i, collection);
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                C5965s c5965s = C5965s.this;
                return C5965s.m26546f(c5965s.f34243h, c5965s.f34244i, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return Lists.newArrayList(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
            }
        }

        public C5965s(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map, predicate);
            this.f34254j = Sets.filter(map.entrySet(), this.f34244i);
        }

        /* renamed from: e */
        public static <K, V> boolean m26545e(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                if (predicate.apply(next) && collection.contains(next.getKey())) {
                    it2.remove();
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: f */
        public static <K, V> boolean m26546f(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                if (predicate.apply(next) && !collection.contains(next.getKey())) {
                    it2.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, V>> mo26014a() {
            return new a(this, null);
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: b */
        public Set<K> mo26021g() {
            return new b();
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Maps$t */
    /* loaded from: classes6.dex */
    public static class C5966t<K, V> extends AbstractC6113h<K, V> {

        /* renamed from: e */
        public final NavigableMap<K, V> f34260e;

        /* renamed from: f */
        public final Predicate<? super Map.Entry<K, V>> f34261f;

        /* renamed from: g */
        public final Map<K, V> f34262g;

        /* renamed from: com.google.common.collect.Maps$t$a */
        /* loaded from: classes6.dex */
        public class a extends C5937b0<K, V> {
            public a(NavigableMap navigableMap) {
                super(navigableMap);
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return C5965s.m26545e(C5966t.this.f34260e, C5966t.this.f34261f, collection);
            }

            @Override // com.google.common.collect.Sets.AbstractC6030j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C5965s.m26546f(C5966t.this.f34260e, C5966t.this.f34261f, collection);
            }
        }

        public C5966t(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
            this.f34260e = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.f34261f = predicate;
            this.f34262g = new C5965s(navigableMap, predicate);
        }

        @Override // com.google.common.collect.AbstractC6113h
        /* renamed from: a */
        public Iterator<Map.Entry<K, V>> mo26511a() {
            return Iterators.filter(this.f34260e.descendingMap().entrySet().iterator(), this.f34261f);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f34262g.clear();
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return this.f34260e.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34262g.containsKey(obj);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.filterEntries((NavigableMap) this.f34260e.descendingMap(), (Predicate) this.f34261f);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return Iterators.filter(this.f34260e.entrySet().iterator(), this.f34261f);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return this.f34262g.entrySet();
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return this.f34262g.get(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(@xvk K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.f34260e.headMap(k, z), (Predicate) this.f34261f);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !Iterables.any(this.f34260e.entrySet(), this.f34261f);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new a(this);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) Iterables.m26327c(this.f34260e.entrySet(), this.f34261f);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.NavigableMap
        @CheckForNull
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) Iterables.m26327c(this.f34260e.descendingMap().entrySet(), this.f34261f);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(@xvk K k, @xvk V v) {
            return this.f34262g.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f34262g.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            return this.f34262g.remove(obj);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f34262g.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
            return Maps.filterEntries((NavigableMap) this.f34260e.subMap(k, z, k2, z2), (Predicate) this.f34261f);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(@xvk K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.f34260e.tailMap(k, z), (Predicate) this.f34261f);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new C5969w(this, this.f34260e, this.f34261f);
        }
    }

    /* renamed from: com.google.common.collect.Maps$u */
    /* loaded from: classes6.dex */
    public static class C5967u<K, V> extends C5965s<K, V> implements SortedMap<K, V> {

        /* renamed from: com.google.common.collect.Maps$u$a */
        /* loaded from: classes6.dex */
        public class a extends C5965s<K, V>.b implements SortedSet<K> {
            public a() {
                super();
            }

            @Override // java.util.SortedSet
            @CheckForNull
            public Comparator<? super K> comparator() {
                return C5967u.this.m26552i().comparator();
            }

            @Override // java.util.SortedSet
            @xvk
            public K first() {
                return (K) C5967u.this.firstKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(@xvk K k) {
                return (SortedSet) C5967u.this.headMap(k).keySet();
            }

            @Override // java.util.SortedSet
            @xvk
            public K last() {
                return (K) C5967u.this.lastKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(@xvk K k, @xvk K k2) {
                return (SortedSet) C5967u.this.subMap(k, k2).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(@xvk K k) {
                return (SortedSet) C5967u.this.tailMap(k).keySet();
            }
        }

        public C5967u(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(sortedMap, predicate);
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public Comparator<? super K> comparator() {
            return m26552i().comparator();
        }

        @Override // java.util.SortedMap
        @xvk
        public K firstKey() {
            return keySet().iterator().next();
        }

        @Override // com.google.common.collect.Maps.C5965s, com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> mo26021g() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0, java.util.AbstractMap, java.util.Map
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(@xvk K k) {
            return new C5967u(m26552i().headMap(k), this.f34244i);
        }

        /* renamed from: i */
        public SortedMap<K, V> m26552i() {
            return (SortedMap) this.f34243h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.SortedMap
        @xvk
        public K lastKey() {
            SortedMap<K, V> m26552i = m26552i();
            while (true) {
                K lastKey = m26552i.lastKey();
                if (m26535d(lastKey, p5k.m56213a(this.f34243h.get(lastKey)))) {
                    return lastKey;
                }
                m26552i = m26552i().headMap(lastKey);
            }
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(@xvk K k, @xvk K k2) {
            return new C5967u(m26552i().subMap(k, k2), this.f34244i);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(@xvk K k) {
            return new C5967u(m26552i().tailMap(k), this.f34244i);
        }
    }

    /* renamed from: com.google.common.collect.Maps$v */
    /* loaded from: classes6.dex */
    public static class C5968v<K, V> extends AbstractC5960n<K, V> {

        /* renamed from: j */
        public final Predicate<? super K> f34265j;

        public C5968v(Map<K, V> map, Predicate<? super K> predicate, Predicate<? super Map.Entry<K, V>> predicate2) {
            super(map, predicate2);
            this.f34265j = predicate;
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: a */
        public Set<Map.Entry<K, V>> mo26014a() {
            return Sets.filter(this.f34243h.entrySet(), this.f34244i);
        }

        @Override // com.google.common.collect.Maps.AbstractC5959m0
        /* renamed from: b */
        public Set<K> mo26021g() {
            return Sets.filter(this.f34243h.keySet(), this.f34265j);
        }

        @Override // com.google.common.collect.Maps.AbstractC5960n, java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f34243h.containsKey(obj) && this.f34265j.apply(obj);
        }
    }

    /* renamed from: com.google.common.collect.Maps$w */
    /* loaded from: classes6.dex */
    public static final class C5969w<K, V> extends C5957l0<K, V> {

        /* renamed from: f */
        public final Map<K, V> f34266f;

        /* renamed from: g */
        public final Predicate<? super Map.Entry<K, V>> f34267g;

        public C5969w(Map<K, V> map, Map<K, V> map2, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map);
            this.f34266f = map2;
            this.f34267g = predicate;
        }

        @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            Iterator<Map.Entry<K, V>> it2 = this.f34266f.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                if (this.f34267g.apply(next) && Objects.equal(next.getValue(), obj)) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it2 = this.f34266f.entrySet().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                if (this.f34267g.apply(next) && collection.contains(next.getValue())) {
                    it2.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it2 = this.f34266f.entrySet().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                if (this.f34267g.apply(next) && !collection.contains(next.getValue())) {
                    it2.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.Maps$x */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5970x<K, V> extends AbstractMap<K, V> {

        /* renamed from: com.google.common.collect.Maps$x$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5963q<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC5963q
            /* renamed from: a */
            public Map<K, V> mo26018a() {
                return AbstractC5970x.this;
            }

            @Override // java.lang.Iterable
            public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
                AbstractC5970x.this.forEachEntry(consumer);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return AbstractC5970x.this.entryIterator();
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set
            public Spliterator<Map.Entry<K, V>> spliterator() {
                return AbstractC5970x.this.entrySpliterator();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.m26340c(entryIterator());
        }

        public abstract Iterator<Map.Entry<K, V>> entryIterator();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }

        public Spliterator<Map.Entry<K, V>> entrySpliterator() {
            return Spliterators.spliterator(entryIterator(), size(), 65);
        }

        public void forEachEntry(Consumer<? super Map.Entry<K, V>> consumer) {
            entryIterator().forEachRemaining(consumer);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public abstract int size();
    }

    /* renamed from: com.google.common.collect.Maps$y */
    /* loaded from: classes6.dex */
    public static class C5971y<K, V> extends Sets.AbstractC6030j<K> {

        /* renamed from: e */
        @Weak
        public final Map<K, V> f34269e;

        public C5971y(Map<K, V> map) {
            this.f34269e = (Map) Preconditions.checkNotNull(map);
        }

        /* renamed from: c */
        public Map<K, V> mo26514d() {
            return this.f34269e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo26514d().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return mo26514d().containsKey(obj);
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super K> consumer) {
            Preconditions.checkNotNull(consumer);
            this.f34269e.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.u8j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    consumer.accept(obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo26514d().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Maps.m26503w(mo26514d().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (!contains(obj)) {
                return false;
            }
            mo26514d().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo26514d().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$z */
    /* loaded from: classes6.dex */
    public static class C5972z<K, V> implements MapDifference<K, V> {

        /* renamed from: a */
        public final Map<K, V> f34270a;

        /* renamed from: b */
        public final Map<K, V> f34271b;

        /* renamed from: c */
        public final Map<K, V> f34272c;

        /* renamed from: d */
        public final Map<K, MapDifference.ValueDifference<V>> f34273d;

        public C5972z(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, MapDifference.ValueDifference<V>> map4) {
            this.f34270a = Maps.m26475N(map);
            this.f34271b = Maps.m26475N(map2);
            this.f34272c = Maps.m26475N(map3);
            this.f34273d = Maps.m26475N(map4);
        }

        @Override // com.google.common.collect.MapDifference
        public boolean areEqual() {
            return this.f34270a.isEmpty() && this.f34271b.isEmpty() && this.f34273d.isEmpty();
        }

        @Override // com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public Map<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return this.f34273d;
        }

        @Override // com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public Map<K, V> entriesInCommon() {
            return this.f34272c;
        }

        @Override // com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public Map<K, V> entriesOnlyOnLeft() {
            return this.f34270a;
        }

        @Override // com.google.common.collect.MapDifference, com.google.common.collect.SortedMapDifference
        public Map<K, V> entriesOnlyOnRight() {
            return this.f34271b;
        }

        @Override // com.google.common.collect.MapDifference
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapDifference)) {
                return false;
            }
            MapDifference mapDifference = (MapDifference) obj;
            return entriesOnlyOnLeft().equals(mapDifference.entriesOnlyOnLeft()) && entriesOnlyOnRight().equals(mapDifference.entriesOnlyOnRight()) && entriesInCommon().equals(mapDifference.entriesInCommon()) && entriesDiffering().equals(mapDifference.entriesDiffering());
        }

        @Override // com.google.common.collect.MapDifference
        public int hashCode() {
            return Objects.hashCode(entriesOnlyOnLeft(), entriesOnlyOnRight(), entriesInCommon(), entriesDiffering());
        }

        public String toString() {
            if (areEqual()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            if (!this.f34270a.isEmpty()) {
                sb.append(": only on left=");
                sb.append(this.f34270a);
            }
            if (!this.f34271b.isEmpty()) {
                sb.append(": only on right=");
                sb.append(this.f34271b);
            }
            if (!this.f34273d.isEmpty()) {
                sb.append(": value differences=");
                sb.append(this.f34273d);
            }
            return sb.toString();
        }
    }

    /* renamed from: A */
    public static <K, V> void m26462A(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: B */
    public static <K, V> boolean m26463B(Collection<Map.Entry<K, V>> collection, @CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(m26472K((Map.Entry) obj));
        }
        return false;
    }

    @GwtIncompatible
    /* renamed from: C */
    public static <E> NavigableSet<E> m26464C(NavigableSet<E> navigableSet) {
        return new C5952j(navigableSet);
    }

    /* renamed from: D */
    public static <E> Set<E> m26465D(Set<E> set) {
        return new C5948h(set);
    }

    /* renamed from: E */
    public static <E> SortedSet<E> m26466E(SortedSet<E> sortedSet) {
        return new C5950i(sortedSet);
    }

    /* renamed from: F */
    public static boolean m26467F(Map<?, ?> map, @CheckForNull Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @CheckForNull
    /* renamed from: G */
    public static <V> V m26468G(Map<?, V> map, @CheckForNull Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    @CheckForNull
    /* renamed from: H */
    public static <V> V m26469H(Map<?, V> map, @CheckForNull Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* renamed from: I */
    public static String m26470I(Map<?, ?> map) {
        StringBuilder m26076d = Collections2.m26076d(map.size());
        m26076d.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                m26076d.append(", ");
            }
            m26076d.append(entry.getKey());
            m26076d.append('=');
            m26076d.append(entry.getValue());
            z = false;
        }
        m26076d.append('}');
        return m26076d.toString();
    }

    /* renamed from: J */
    public static <V2, K, V1> Map.Entry<K, V2> m26471J(EntryTransformer<? super K, ? super V1, V2> entryTransformer, Map.Entry<K, V1> entry) {
        Preconditions.checkNotNull(entryTransformer);
        Preconditions.checkNotNull(entry);
        return new C5938c(entry, entryTransformer);
    }

    /* renamed from: K */
    public static <K, V> Map.Entry<K, V> m26472K(Map.Entry<? extends K, ? extends V> entry) {
        Preconditions.checkNotNull(entry);
        return new C5954k(entry);
    }

    /* renamed from: L */
    public static <K, V> UnmodifiableIterator<Map.Entry<K, V>> m26473L(Iterator<Map.Entry<K, V>> it2) {
        return new C5956l(it2);
    }

    /* renamed from: M */
    public static <K, V> Set<Map.Entry<K, V>> m26474M(Set<Map.Entry<K, V>> set) {
        return new C5953j0(Collections.unmodifiableSet(set));
    }

    /* renamed from: N */
    public static <K, V> Map<K, V> m26475N(Map<K, ? extends V> map) {
        return map instanceof SortedMap ? Collections.unmodifiableSortedMap((SortedMap) map) : Collections.unmodifiableMap(map);
    }

    @CheckForNull
    /* renamed from: O */
    public static <K, V> Map.Entry<K, V> m26476O(@CheckForNull Map.Entry<K, ? extends V> entry) {
        if (entry == null) {
            return null;
        }
        return m26472K(entry);
    }

    /* renamed from: P */
    public static <V> Function<Map.Entry<?, V>, V> m26477P() {
        return EntryFunction.VALUE;
    }

    /* renamed from: Q */
    public static <K, V> Iterator<V> m26478Q(Iterator<Map.Entry<K, V>> it2) {
        return new C5944f(it2);
    }

    @CheckForNull
    /* renamed from: R */
    public static <V> V m26479R(@CheckForNull Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    /* renamed from: S */
    public static <V> Predicate<Map.Entry<?, V>> m26480S(Predicate<? super V> predicate) {
        return Predicates.compose(predicate, m26477P());
    }

    public static <A, B> Converter<A, B> asConverter(BiMap<A, B> biMap) {
        return new BiMapConverter(biMap);
    }

    public static <K, V> Map<K, V> asMap(Set<K> set, Function<? super K, V> function) {
        return new C5961o(set, function);
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        if (map instanceof SortedMap) {
            return difference((SortedMap) map, (Map) map2);
        }
        return difference(map, map2, Equivalence.equals());
    }

    /* renamed from: f */
    public static <K, V1, V2> Function<Map.Entry<K, V1>, Map.Entry<K, V2>> m26486f(EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        Preconditions.checkNotNull(entryTransformer);
        return new C5940d(entryTransformer);
    }

    public static <K, V> Map<K, V> filterEntries(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (map instanceof AbstractC5960n) {
            return m26498r((AbstractC5960n) map, predicate);
        }
        return new C5965s((Map) Preconditions.checkNotNull(map), predicate);
    }

    public static <K, V> Map<K, V> filterKeys(Map<K, V> map, Predicate<? super K> predicate) {
        Preconditions.checkNotNull(predicate);
        Predicate m26505y = m26505y(predicate);
        if (map instanceof AbstractC5960n) {
            return m26498r((AbstractC5960n) map, m26505y);
        }
        return new C5968v((Map) Preconditions.checkNotNull(map), predicate, m26505y);
    }

    public static <K, V> Map<K, V> filterValues(Map<K, V> map, Predicate<? super V> predicate) {
        return filterEntries(map, m26480S(predicate));
    }

    @GwtIncompatible
    public static ImmutableMap<String, String> fromProperties(Properties properties) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            Object nextElement = propertyNames.nextElement();
            java.util.Objects.requireNonNull(nextElement);
            String str = (String) nextElement;
            String property = properties.getProperty(str);
            java.util.Objects.requireNonNull(property);
            builder.put(str, property);
        }
        return builder.buildOrThrow();
    }

    /* renamed from: g */
    public static <K, V1, V2> Function<Map.Entry<K, V1>, V2> m26487g(EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        Preconditions.checkNotNull(entryTransformer);
        return new C5936b(entryTransformer);
    }

    /* renamed from: h */
    public static <K, V1, V2> EntryTransformer<K, V1, V2> m26488h(Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return new C5958m(function);
    }

    /* renamed from: i */
    public static <K, V> Iterator<Map.Entry<K, V>> m26489i(Set<K> set, Function<? super K, V> function) {
        return new C5946g(set.iterator(), function);
    }

    @GwtCompatible(serializable = true)
    public static <K, V> Map.Entry<K, V> immutableEntry(@xvk K k, @xvk V v) {
        return new ImmutableEntry(k, v);
    }

    @GwtCompatible(serializable = true)
    public static <K extends Enum<K>, V> ImmutableMap<K, V> immutableEnumMap(Map<K, ? extends V> map) {
        if (map instanceof ImmutableEnumMap) {
            return (ImmutableEnumMap) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it2 = map.entrySet().iterator();
        if (!it2.hasNext()) {
            return ImmutableMap.m26185of();
        }
        Map.Entry<K, ? extends V> next = it2.next();
        K key = next.getKey();
        V value = next.getValue();
        szd.m57278a(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((EnumMap) key, (K) value);
        while (it2.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it2.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            szd.m57278a(key2, value2);
            enumMap.put((EnumMap) key2, (K) value2);
        }
        return ImmutableEnumMap.asImmutable(enumMap);
    }

    /* renamed from: j */
    public static <K, V1, V2> Function<V1, V2> m26490j(EntryTransformer<? super K, V1, V2> entryTransformer, @xvk K k) {
        Preconditions.checkNotNull(entryTransformer);
        return new C5934a(entryTransformer, k);
    }

    /* renamed from: k */
    public static int m26491k(int i) {
        if (i < 3) {
            szd.m57279b(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: l */
    public static <K, V> boolean m26492l(Collection<Map.Entry<K, V>> collection, @CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(m26472K((Map.Entry) obj));
        }
        return false;
    }

    /* renamed from: m */
    public static boolean m26493m(Map<?, ?> map, @CheckForNull Object obj) {
        return Iterators.contains(m26503w(map.entrySet().iterator()), obj);
    }

    /* renamed from: n */
    public static boolean m26494n(Map<?, ?> map, @CheckForNull Object obj) {
        return Iterators.contains(m26478Q(map.entrySet().iterator()), obj);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentMap() {
        return new ConcurrentHashMap();
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> cls) {
        return new EnumMap<>((Class) Preconditions.checkNotNull(cls));
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i) {
        return new HashMap<>(m26491k(i));
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i) {
        return new LinkedHashMap<>(m26491k(i));
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public static <K, V> void m26495o(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, MapDifference.ValueDifference<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                hook.C0007h c0007h = (Object) p5k.m56213a(map4.remove(key));
                if (equivalence.equivalent(value, c0007h)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, C5955k0.m26529a(value, c0007h));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    /* renamed from: p */
    public static boolean m26496p(Map<?, ?> map, @CheckForNull Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    /* renamed from: q */
    public static <K, V> BiMap<K, V> m26497q(C5964r<K, V> c5964r, Predicate<? super Map.Entry<K, V>> predicate) {
        return new C5964r(c5964r.m26543j(), Predicates.and(c5964r.f34244i, predicate));
    }

    /* renamed from: r */
    public static <K, V> Map<K, V> m26498r(AbstractC5960n<K, V> abstractC5960n, Predicate<? super Map.Entry<K, V>> predicate) {
        return new C5965s(abstractC5960n.f34243h, Predicates.and(abstractC5960n.f34244i, predicate));
    }

    @GwtIncompatible
    /* renamed from: s */
    public static <K, V> NavigableMap<K, V> m26499s(C5966t<K, V> c5966t, Predicate<? super Map.Entry<K, V>> predicate) {
        return new C5966t(c5966t.f34260e, Predicates.and(c5966t.f34261f, predicate));
    }

    @Beta
    @GwtIncompatible
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> subMap(NavigableMap<K, V> navigableMap, Range<K> range) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != Ordering.natural() && range.hasLowerBound() && range.hasUpperBound()) {
            Preconditions.checkArgument(navigableMap.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            K lowerEndpoint = range.lowerEndpoint();
            BoundType lowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableMap.subMap(lowerEndpoint, lowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        }
        if (range.hasLowerBound()) {
            return navigableMap.tailMap(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        }
        if (range.hasUpperBound()) {
            return navigableMap.headMap(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        return (NavigableMap) Preconditions.checkNotNull(navigableMap);
    }

    public static <K, V> BiMap<K, V> synchronizedBiMap(BiMap<K, V> biMap) {
        return Synchronized.m26750g(biMap, null);
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> synchronizedNavigableMap(NavigableMap<K, V> navigableMap) {
        return Synchronized.m26758o(navigableMap);
    }

    /* renamed from: t */
    public static <K, V> SortedMap<K, V> m26500t(C5967u<K, V> c5967u, Predicate<? super Map.Entry<K, V>> predicate) {
        return new C5967u(c5967u.m26552i(), Predicates.and(c5967u.f34244i, predicate));
    }

    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableEnumMap(java.util.function.Function<? super T, ? extends K> function, java.util.function.Function<? super T, ? extends V> function2) {
        return C6116k.m26949g0(function, function2);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterable<K> iterable, Function<? super K, V> function) {
        return toMap(iterable.iterator(), function);
    }

    public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new C5945f0(map, entryTransformer);
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> map, Function<? super V1, V2> function) {
        return transformEntries(map, m26488h(function));
    }

    /* renamed from: u */
    public static <E> ImmutableMap<E, Integer> m26501u(Collection<E> collection) {
        ImmutableMap.Builder builder = new ImmutableMap.Builder(collection.size());
        Iterator<E> it2 = collection.iterator();
        int i = 0;
        while (it2.hasNext()) {
            builder.put(it2.next(), Integer.valueOf(i));
            i++;
        }
        return builder.buildOrThrow();
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> iterable, Function<? super V, K> function) {
        return uniqueIndex(iterable.iterator(), function);
    }

    public static <K, V> BiMap<K, V> unmodifiableBiMap(BiMap<? extends K, ? extends V> biMap) {
        return new UnmodifiableBiMap(biMap, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> unmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap) {
        Preconditions.checkNotNull(navigableMap);
        return navigableMap instanceof UnmodifiableNavigableMap ? navigableMap : new UnmodifiableNavigableMap(navigableMap);
    }

    /* renamed from: v */
    public static <K> Function<Map.Entry<K, ?>, K> m26502v() {
        return EntryFunction.KEY;
    }

    /* renamed from: w */
    public static <K, V> Iterator<K> m26503w(Iterator<Map.Entry<K, V>> it2) {
        return new C5942e(it2);
    }

    @CheckForNull
    /* renamed from: x */
    public static <K> K m26504x(@CheckForNull Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    /* renamed from: y */
    public static <K> Predicate<Map.Entry<K, ?>> m26505y(Predicate<? super K> predicate) {
        return Predicates.compose(predicate, m26502v());
    }

    /* renamed from: z */
    public static <E> Comparator<? super E> m26506z(@CheckForNull Comparator<? super E> comparator) {
        return comparator != null ? comparator : Ordering.natural();
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$h */
    /* loaded from: classes6.dex */
    public class C5948h<E> extends ForwardingSet<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f34230e;

        public C5948h(Set set) {
            this.f34230e = set;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<E> delegate() {
            return this.f34230e;
        }
    }

    public static <K, V> SortedMap<K, V> asMap(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return new C5939c0(sortedSet, function);
    }

    public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> sortedMap, Predicate<? super V> predicate) {
        return filterEntries((SortedMap) sortedMap, m26480S(predicate));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableEnumMap(java.util.function.Function<? super T, ? extends K> function, java.util.function.Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return C6116k.m26951h0(function, function2, binaryOperator);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterator<K> it2, Function<? super K, V> function) {
        Preconditions.checkNotNull(function);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        while (it2.hasNext()) {
            K next = it2.next();
            builder.put(next, function.apply(next));
        }
        return builder.buildKeepingLast();
    }

    public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new C5949h0(sortedMap, entryTransformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> sortedMap, Function<? super V1, V2> function) {
        return transformEntries((SortedMap) sortedMap, m26488h(function));
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterator<V> it2, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        while (it2.hasNext()) {
            V next = it2.next();
            builder.put(function.apply(next), next);
        }
        try {
            return builder.buildOrThrow();
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(String.valueOf(e.getMessage()).concat(". To index multiple values under a key, use Multimaps.index."));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$i */
    /* loaded from: classes6.dex */
    public class C5950i<E> extends ForwardingSortedSet<E> {

        /* renamed from: e */
        public final /* synthetic */ SortedSet f34231e;

        public C5950i(SortedSet sortedSet) {
            this.f34231e = sortedSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(@xvk E e) {
            return Maps.m26466E(super.headSet(e));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(@xvk E e, @xvk E e2) {
            return Maps.m26466E(super.subSet(e, e2));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(@xvk E e) {
            return Maps.m26466E(super.tailSet(e));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.f34231e;
        }
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> asMap(NavigableSet<K> navigableSet, Function<? super K, V> function) {
        return new C5935a0(navigableSet, function);
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterValues(NavigableMap<K, V> navigableMap, Predicate<? super V> predicate) {
        return filterEntries((NavigableMap) navigableMap, m26480S(predicate));
    }

    public static <C, K extends C, V> TreeMap<K, V> newTreeMap(@CheckForNull Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    @GwtIncompatible
    public static <K, V1, V2> NavigableMap<K, V2> transformEntries(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new C5947g0(navigableMap, entryTransformer);
    }

    @GwtIncompatible
    public static <K, V1, V2> NavigableMap<K, V2> transformValues(NavigableMap<K, V1> navigableMap, Function<? super V1, V2> function) {
        return transformEntries((NavigableMap) navigableMap, m26488h(function));
    }

    public static <K, V> BiMap<K, V> filterValues(BiMap<K, V> biMap, Predicate<? super V> predicate) {
        return filterEntries((BiMap) biMap, m26480S(predicate));
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence) {
        Preconditions.checkNotNull(equivalence);
        LinkedHashMap newLinkedHashMap = newLinkedHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap newLinkedHashMap2 = newLinkedHashMap();
        LinkedHashMap newLinkedHashMap3 = newLinkedHashMap();
        m26495o(map, map2, equivalence, newLinkedHashMap, linkedHashMap, newLinkedHashMap2, newLinkedHashMap3);
        return new C5972z(newLinkedHashMap, linkedHashMap, newLinkedHashMap2, newLinkedHashMap3);
    }

    public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (sortedMap instanceof C5967u) {
            return m26500t((C5967u) sortedMap, predicate);
        }
        return new C5967u((SortedMap) Preconditions.checkNotNull(sortedMap), predicate);
    }

    public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> sortedMap, Predicate<? super K> predicate) {
        return filterEntries((SortedMap) sortedMap, m26505y(predicate));
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterKeys(NavigableMap<K, V> navigableMap, Predicate<? super K> predicate) {
        return filterEntries((NavigableMap) navigableMap, m26505y(predicate));
    }

    public static <K, V> BiMap<K, V> filterKeys(BiMap<K, V> biMap, Predicate<? super K> predicate) {
        Preconditions.checkNotNull(predicate);
        return filterEntries((BiMap) biMap, m26505y(predicate));
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterEntries(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (navigableMap instanceof C5966t) {
            return m26499s((C5966t) navigableMap, predicate);
        }
        return new C5966t((NavigableMap) Preconditions.checkNotNull(navigableMap), predicate);
    }

    public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        Preconditions.checkNotNull(sortedMap);
        Preconditions.checkNotNull(map);
        Comparator m26506z = m26506z(sortedMap.comparator());
        TreeMap newTreeMap = newTreeMap(m26506z);
        TreeMap newTreeMap2 = newTreeMap(m26506z);
        newTreeMap2.putAll(map);
        TreeMap newTreeMap3 = newTreeMap(m26506z);
        TreeMap newTreeMap4 = newTreeMap(m26506z);
        m26495o(sortedMap, map, Equivalence.equals(), newTreeMap, newTreeMap2, newTreeMap3, newTreeMap4);
        return new C5943e0(newTreeMap, newTreeMap2, newTreeMap3, newTreeMap4);
    }

    public static <K, V> BiMap<K, V> filterEntries(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(biMap);
        Preconditions.checkNotNull(predicate);
        if (biMap instanceof C5964r) {
            return m26497q((C5964r) biMap, predicate);
        }
        return new C5964r(biMap, predicate);
    }
}
