package org.apache.commons.math3.util;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class Pair<K, V> {
    private final K key;
    private final V value;

    public Pair(K k, V v) {
        this.key = k;
        this.value = v;
    }

    public static <K, V> Pair<K, V> create(K k, V v) {
        return new Pair<>(k, v);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        K k = this.key;
        if (k != null ? k.equals(pair.key) : pair.key == null) {
            V v = this.value;
            if (v == null) {
                if (pair.value == null) {
                    return true;
                }
            } else if (v.equals(pair.value)) {
                return true;
            }
        }
        return false;
    }

    public K getFirst() {
        return this.key;
    }

    public K getKey() {
        return this.key;
    }

    public V getSecond() {
        return this.value;
    }

    public V getValue() {
        return this.value;
    }

    public int hashCode() {
        K k = this.key;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.value;
        int hashCode2 = v != null ? v.hashCode() : 0;
        return (hashCode2 >>> 16) ^ ((hashCode * 37) + hashCode2);
    }

    public String toString() {
        return IteratorUtils.f104923a + getKey() + ", " + getValue() + IteratorUtils.f104924b;
    }

    public Pair(Pair<? extends K, ? extends V> pair) {
        this(pair.getKey(), pair.getValue());
    }
}
