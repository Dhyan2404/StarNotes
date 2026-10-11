package org.apache.commons.collections4.iterators;

import org.apache.commons.collections4.OrderedMapIterator;

/* loaded from: classes11.dex */
public class AbstractOrderedMapIteratorDecorator<K, V> implements OrderedMapIterator<K, V> {

    /* renamed from: e */
    public final OrderedMapIterator<K, V> f105014e;

    public AbstractOrderedMapIteratorDecorator(OrderedMapIterator<K, V> orderedMapIterator) {
        if (orderedMapIterator == null) {
            throw new NullPointerException("OrderedMapIterator must not be null");
        }
        this.f105014e = orderedMapIterator;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public K getKey() {
        return this.f105014e.getKey();
    }

    public OrderedMapIterator<K, V> getOrderedMapIterator() {
        return this.f105014e;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V getValue() {
        return this.f105014e.getValue();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105014e.hasNext();
    }

    @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return this.f105014e.hasPrevious();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public K next() {
        return this.f105014e.next();
    }

    @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
    public K previous() {
        return this.f105014e.previous();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public void remove() {
        this.f105014e.remove();
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V setValue(V v) {
        return this.f105014e.setValue(v);
    }
}
