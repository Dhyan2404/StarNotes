package org.apache.commons.collections4.iterators;

import org.apache.commons.collections4.MapIterator;

/* loaded from: classes11.dex */
public class AbstractMapIteratorDecorator<K, V> implements MapIterator<K, V> {

    /* renamed from: e */
    public final MapIterator<K, V> f105013e;

    public AbstractMapIteratorDecorator(MapIterator<K, V> mapIterator) {
        if (mapIterator == null) {
            throw new NullPointerException("MapIterator must not be null");
        }
        this.f105013e = mapIterator;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public K getKey() {
        return this.f105013e.getKey();
    }

    public MapIterator<K, V> getMapIterator() {
        return this.f105013e;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V getValue() {
        return this.f105013e.getValue();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105013e.hasNext();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public K next() {
        return this.f105013e.next();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public void remove() {
        this.f105013e.remove();
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V setValue(V v) {
        return this.f105013e.setValue(v);
    }
}
