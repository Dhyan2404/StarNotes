package org.apache.commons.compress.utils;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes12.dex */
public class Iterators {
    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it2) {
        Objects.requireNonNull(collection);
        Objects.requireNonNull(it2);
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }
}
