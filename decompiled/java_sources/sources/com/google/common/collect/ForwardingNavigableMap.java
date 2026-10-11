package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Maps;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.function.BiFunction;
import javax.annotation.CheckForNull;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public abstract class ForwardingNavigableMap<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V> {

    @Beta
    /* loaded from: classes6.dex */
    public class StandardDescendingMap extends Maps.AbstractC5962p<K, V> {

        /* renamed from: com.google.common.collect.ForwardingNavigableMap$StandardDescendingMap$a */
        /* loaded from: classes6.dex */
        public class C5818a implements Iterator<Map.Entry<K, V>> {

            /* renamed from: e */
            @CheckForNull
            public Map.Entry<K, V> f33990e = null;

            /* renamed from: f */
            @CheckForNull
            public Map.Entry<K, V> f33991f;

            public C5818a() {
                this.f33991f = StandardDescendingMap.this.mo26135g().lastEntry();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                Map.Entry<K, V> entry = this.f33991f;
                if (entry == null) {
                    throw new NoSuchElementException();
                }
                this.f33990e = entry;
                this.f33991f = StandardDescendingMap.this.mo26135g().lowerEntry(this.f33991f.getKey());
                return entry;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33991f != null;
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.f33990e == null) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                StandardDescendingMap.this.mo26135g().remove(this.f33990e.getKey());
                this.f33990e = null;
            }
        }

        public StandardDescendingMap() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5962p
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return new C5818a();
        }

        @Override // com.google.common.collect.Maps.AbstractC5962p
        /* renamed from: g */
        public NavigableMap<K, V> mo26135g() {
            return ForwardingNavigableMap.this;
        }

        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
            mo26135g().replaceAll(biFunction);
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public class StandardNavigableKeySet extends Maps.C5937b0<K, V> {
        public StandardNavigableKeySet(ForwardingNavigableMap forwardingNavigableMap) {
            super(forwardingNavigableMap);
        }
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(@xvk K k) {
        return delegate().ceilingEntry(k);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K ceilingKey(@xvk K k) {
        return delegate().ceilingKey(k);
    }

    @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public abstract NavigableMap<K, V> delegate();

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return delegate().descendingKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> descendingMap() {
        return delegate().descendingMap();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        return delegate().firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> floorEntry(@xvk K k) {
        return delegate().floorEntry(k);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K floorKey(@xvk K k) {
        return delegate().floorKey(k);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> headMap(@xvk K k, boolean z) {
        return delegate().headMap(k, z);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> higherEntry(@xvk K k) {
        return delegate().higherEntry(k);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K higherKey(@xvk K k) {
        return delegate().higherKey(k);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        return delegate().lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(@xvk K k) {
        return delegate().lowerEntry(k);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K lowerKey(@xvk K k) {
        return delegate().lowerKey(k);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> navigableKeySet() {
        return delegate().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    @CheckForNull
    public Map.Entry<K, V> standardCeilingEntry(@xvk K k) {
        return tailMap(k, true).firstEntry();
    }

    @CheckForNull
    public K standardCeilingKey(@xvk K k) {
        return (K) Maps.m26504x(ceilingEntry(k));
    }

    @Beta
    public NavigableSet<K> standardDescendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @CheckForNull
    public Map.Entry<K, V> standardFirstEntry() {
        return (Map.Entry) Iterables.getFirst(entrySet(), null);
    }

    public K standardFirstKey() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @CheckForNull
    public Map.Entry<K, V> standardFloorEntry(@xvk K k) {
        return headMap(k, true).lastEntry();
    }

    @CheckForNull
    public K standardFloorKey(@xvk K k) {
        return (K) Maps.m26504x(floorEntry(k));
    }

    public SortedMap<K, V> standardHeadMap(@xvk K k) {
        return headMap(k, false);
    }

    @CheckForNull
    public Map.Entry<K, V> standardHigherEntry(@xvk K k) {
        return tailMap(k, false).firstEntry();
    }

    @CheckForNull
    public K standardHigherKey(@xvk K k) {
        return (K) Maps.m26504x(higherEntry(k));
    }

    @CheckForNull
    public Map.Entry<K, V> standardLastEntry() {
        return (Map.Entry) Iterables.getFirst(descendingMap().entrySet(), null);
    }

    public K standardLastKey() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @CheckForNull
    public Map.Entry<K, V> standardLowerEntry(@xvk K k) {
        return headMap(k, false).lastEntry();
    }

    @CheckForNull
    public K standardLowerKey(@xvk K k) {
        return (K) Maps.m26504x(lowerEntry(k));
    }

    @CheckForNull
    public Map.Entry<K, V> standardPollFirstEntry() {
        return (Map.Entry) Iterators.m26348k(entrySet().iterator());
    }

    @CheckForNull
    public Map.Entry<K, V> standardPollLastEntry() {
        return (Map.Entry) Iterators.m26348k(descendingMap().entrySet().iterator());
    }

    @Override // com.google.common.collect.ForwardingSortedMap
    public SortedMap<K, V> standardSubMap(@xvk K k, @xvk K k2) {
        return subMap(k, true, k2, false);
    }

    public SortedMap<K, V> standardTailMap(@xvk K k) {
        return tailMap(k, true);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> subMap(@xvk K k, boolean z, @xvk K k2, boolean z2) {
        return delegate().subMap(k, z, k2, z2);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> tailMap(@xvk K k, boolean z) {
        return delegate().tailMap(k, z);
    }
}
