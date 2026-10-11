package com.twelvemonkeys.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class LRUHashMap<K, V> extends LinkedHashMap<K, V> implements ExpiringMap<K, V> {
    private int maxSize;
    private float trimFactor;

    public LRUHashMap() {
        super(16, 0.75f, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    public float getTrimFactor() {
        return this.trimFactor;
    }

    @Override // com.twelvemonkeys.util.ExpiringMap
    public void processRemoved(Map.Entry<K, V> entry) {
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, V> entry) {
        if (size() < this.maxSize) {
            return false;
        }
        removeLRU();
        return false;
    }

    public void removeLRU() {
        int max = (int) Math.max(size() * this.trimFactor, 1.0f);
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        while (true) {
            int i = max - 1;
            if (max <= 0 || !it2.hasNext()) {
                return;
            }
            it2.next();
            it2.remove();
            max = i;
        }
    }

    public void setMaxSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("max size must be positive");
        }
        this.maxSize = i;
        while (size() > this.maxSize) {
            removeLRU();
        }
    }

    public void setTrimFactor(float f) {
        if (f < 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("trim factor must be between 0 and 1");
        }
        this.trimFactor = f;
    }

    public LRUHashMap(int i) {
        super(16, 0.75f, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        setMaxSize(i);
    }

    public LRUHashMap(Map<? extends K, ? extends V> map) {
        super(16, 0.75f, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        putAll(map);
    }

    public LRUHashMap(Map<? extends K, ? extends V> map, int i) {
        super(16, 0.75f, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        setMaxSize(i);
        putAll(map);
    }
}
