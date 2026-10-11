package net.p110sf.saxon.ma.trie;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes11.dex */
public final class TrieKVP<K, V> {
    public final K key;
    public final V value;

    public TrieKVP(K k, V v) {
        this.key = k;
        this.value = v;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrieKVP.class != obj.getClass()) {
            return false;
        }
        TrieKVP trieKVP = (TrieKVP) obj;
        K k = this.key;
        if (k == null ? trieKVP.key != null : !k.equals(trieKVP.key)) {
            return false;
        }
        V v = this.value;
        return v != null ? v.equals(trieKVP.value) : trieKVP.value == null;
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    public int hashCode() {
        K k = this.key;
        int hashCode = (k != null ? k.hashCode() : 0) * 31;
        V v = this.value;
        return hashCode + (v != null ? v.hashCode() : 0);
    }

    public String toString() {
        return MotionUtils.f31761c + this.key + ',' + this.value + ')';
    }
}
