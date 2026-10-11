package com.twelvemonkeys.util;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public class LinkedSet<E> extends AbstractSet<E> implements Set<E>, Cloneable, Serializable {
    private static final Object DUMMY = new Object();
    private final Map<E, Object> map;

    public LinkedSet() {
        this.map = new LinkedMap();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        return this.map.put(e, DUMMY) == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (add(it2.next()) && !z) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.map.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.map.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedSet(Collection<E> collection) {
        this();
        addAll(collection);
    }
}
