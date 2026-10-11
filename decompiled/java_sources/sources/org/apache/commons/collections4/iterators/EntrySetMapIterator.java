package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class EntrySetMapIterator<K, V> implements MapIterator<K, V>, ResettableIterator<K> {

    /* renamed from: e */
    public final Map<K, V> f105030e;

    /* renamed from: f */
    public Iterator<Map.Entry<K, V>> f105031f;

    /* renamed from: g */
    public Map.Entry<K, V> f105032g;

    /* renamed from: h */
    public boolean f105033h = false;

    public EntrySetMapIterator(Map<K, V> map) {
        this.f105030e = map;
        this.f105031f = map.entrySet().iterator();
    }

    @Override // org.apache.commons.collections4.MapIterator
    public K getKey() {
        Map.Entry<K, V> entry = this.f105032g;
        if (entry != null) {
            return entry.getKey();
        }
        throw new IllegalStateException("Iterator getKey() can only be called after next() and before remove()");
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V getValue() {
        Map.Entry<K, V> entry = this.f105032g;
        if (entry != null) {
            return entry.getValue();
        }
        throw new IllegalStateException("Iterator getValue() can only be called after next() and before remove()");
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105031f.hasNext();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public K next() {
        Map.Entry<K, V> next = this.f105031f.next();
        this.f105032g = next;
        this.f105033h = true;
        return next.getKey();
    }

    @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
    public void remove() {
        if (!this.f105033h) {
            throw new IllegalStateException("Iterator remove() can only be called once after next()");
        }
        this.f105031f.remove();
        this.f105032g = null;
        this.f105033h = false;
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105031f = this.f105030e.entrySet().iterator();
        this.f105032g = null;
        this.f105033h = false;
    }

    @Override // org.apache.commons.collections4.MapIterator
    public V setValue(V v) {
        Map.Entry<K, V> entry = this.f105032g;
        if (entry != null) {
            return entry.setValue(v);
        }
        throw new IllegalStateException("Iterator setValue() can only be called after next() and before remove()");
    }

    public String toString() {
        if (this.f105032g == null) {
            return "MapIterator[]";
        }
        return "MapIterator[" + getKey() + "=" + getValue() + IteratorUtils.f104924b;
    }
}
