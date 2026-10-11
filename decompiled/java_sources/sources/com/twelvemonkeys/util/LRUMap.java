package com.twelvemonkeys.util;

import java.util.Map;

/* loaded from: classes10.dex */
public class LRUMap<K, V> extends LinkedMap<K, V> implements ExpiringMap<K, V> {
    private int maxSize;
    private float trimFactor;

    public LRUMap() {
        super((Map) null, true);
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

    @Override // com.twelvemonkeys.util.LinkedMap
    public boolean removeEldestEntry(Map.Entry entry) {
        if (size() < this.maxSize) {
            return false;
        }
        removeLRU();
        return false;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Map.Entry<K, V> removeEntry(Map.Entry<K, V> entry) {
        Map.Entry<K, V> removeEntry = super.removeEntry(entry);
        processRemoved(entry);
        return removeEntry;
    }

    public void removeLRU() {
        int max = (int) Math.max(size() * this.trimFactor, 1.0f);
        while (true) {
            int i = max - 1;
            if (max <= 0) {
                return;
            }
            removeEntry(this.head.next);
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

    public LRUMap(int i) {
        super((Map) null, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        setMaxSize(i);
    }

    public LRUMap(Map<? extends K, ? extends V> map) {
        super((Map) map, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
    }

    public LRUMap(Map<? extends K, ? extends V> map, int i) {
        super((Map) map, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        setMaxSize(i);
    }

    public LRUMap(Map<K, Map.Entry<K, V>> map, Map<? extends K, ? extends V> map2, int i) {
        super(map, map2, true);
        this.maxSize = 1000;
        this.trimFactor = 0.01f;
        setMaxSize(i);
    }
}
