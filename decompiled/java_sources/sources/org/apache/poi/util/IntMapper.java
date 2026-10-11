package org.apache.poi.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import org.apache.poi.common.Duplicatable;

/* loaded from: classes13.dex */
public class IntMapper<T> implements Duplicatable, Iterable<T> {
    private static final int _default_size = 10;
    private final List<T> elements;
    private final Map<T, Integer> valueKeyMap;

    public IntMapper() {
        this(10);
    }

    public boolean add(T t) {
        int size = this.elements.size();
        this.elements.add(t);
        this.valueKeyMap.put(t, Integer.valueOf(size));
        return true;
    }

    public T get(int i) {
        return this.elements.get(i);
    }

    public List<T> getElements() {
        return this.elements;
    }

    public int getIndex(T t) {
        return this.valueKeyMap.getOrDefault(t, -1).intValue();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.elements.iterator();
    }

    public int size() {
        return this.elements.size();
    }

    @Override // java.lang.Iterable
    public Spliterator<T> spliterator() {
        return this.elements.spliterator();
    }

    public IntMapper(int i) {
        this.elements = new ArrayList(i);
        this.valueKeyMap = new HashMap(i);
    }

    @Override // org.apache.poi.common.Duplicatable
    public IntMapper<T> copy() {
        return new IntMapper<>(this);
    }

    public IntMapper(IntMapper<T> intMapper) {
        this.elements = new ArrayList(intMapper.elements);
        this.valueKeyMap = new HashMap(intMapper.valueKeyMap);
    }
}
