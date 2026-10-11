package org.apache.commons.collections4.keyvalue;

import org.apache.commons.collections4.KeyValue;

/* loaded from: classes11.dex */
public abstract class AbstractKeyValue<K, V> implements KeyValue<K, V> {

    /* renamed from: e */
    public K f105117e;

    /* renamed from: f */
    public V f105118f;

    public AbstractKeyValue(K k, V v) {
        this.f105117e = k;
        this.f105118f = v;
    }

    @Override // org.apache.commons.collections4.KeyValue
    public K getKey() {
        return this.f105117e;
    }

    @Override // org.apache.commons.collections4.KeyValue
    public V getValue() {
        return this.f105118f;
    }

    public K setKey(K k) {
        K k2 = this.f105117e;
        this.f105117e = k;
        return k2;
    }

    public V setValue(V v) {
        V v2 = this.f105118f;
        this.f105118f = v;
        return v2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
