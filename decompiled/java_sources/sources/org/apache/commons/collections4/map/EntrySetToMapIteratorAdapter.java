package org.apache.commons.collections4.map;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class EntrySetToMapIteratorAdapter<K, V> implements MapIterator<K, V>, ResettableIterator<K> {

    /* renamed from: e */
    public Set<Map.Entry<K, V>> f105173e;

    /* renamed from: f */
    public transient Iterator<Map.Entry<K, V>> f105174f;

    /* renamed from: g */
    public transient Map.Entry<K, V> f105175g;

    public EntrySetToMapIteratorAdapter(Set<Map.Entry<K, V>> set) {
        this.f105173e = set;
        reset();
    }

    public synchronized Map.Entry<K, V> current() {
        Map.Entry<K, V> entry;
        entry = this.f105175g;
        if (entry == null) {
            throw new IllegalStateException();
        }
        return entry;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public K getKey() {
        return current().getKey();
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V getValue() {
        return current().getValue();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105174f.hasNext();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public K next() {
        this.f105175g = this.f105174f.next();
        return getKey();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public void remove() {
        this.f105174f.remove();
        this.f105175g = null;
    }

    public synchronized void reset() {
        this.f105174f = this.f105173e.iterator();
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V setValue(V v) {
        return current().setValue(v);
    }
}
