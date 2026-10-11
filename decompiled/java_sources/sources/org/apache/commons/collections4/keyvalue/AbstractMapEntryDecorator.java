package org.apache.commons.collections4.keyvalue;

import java.util.Map;
import org.apache.commons.collections4.KeyValue;

/* loaded from: classes11.dex */
public abstract class AbstractMapEntryDecorator<K, V> implements Map.Entry<K, V>, KeyValue<K, V> {

    /* renamed from: e */
    public final Map.Entry<K, V> f105119e;

    public AbstractMapEntryDecorator(Map.Entry<K, V> entry) {
        if (entry == null) {
            throw new NullPointerException("Map Entry must not be null.");
        }
        this.f105119e = entry;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return this.f105119e.equals(obj);
    }

    @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
    public K getKey() {
        return this.f105119e.getKey();
    }

    public Map.Entry<K, V> getMapEntry() {
        return this.f105119e;
    }

    @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
    public V getValue() {
        return this.f105119e.getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return this.f105119e.hashCode();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        return this.f105119e.setValue(v);
    }

    public String toString() {
        return this.f105119e.toString();
    }
}
