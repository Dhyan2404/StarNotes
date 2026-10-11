package com.sunia.calculatorv2.ink.util;

import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes10.dex */
public class Pair<K, V> implements Serializable {
    private final K key;
    private final V value;

    public Pair(K k, V v) {
        this.key = k;
        this.value = v;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (Objects.equals(this.key, pair.key) && Objects.equals(this.value, pair.value)) {
                return true;
            }
        }
        return false;
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    public int hashCode() {
        return ((Objects.hashCode(this.key) + 291) * 97) + Objects.hashCode(this.value);
    }

    public String toString() {
        return MotionUtils.f31761c + this.key + "," + this.value + MotionUtils.f31762d;
    }
}
