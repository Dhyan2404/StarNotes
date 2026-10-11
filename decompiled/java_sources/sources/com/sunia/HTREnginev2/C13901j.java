package com.sunia.HTREnginev2;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Predicate;

/* renamed from: com.sunia.HTREnginev2.j */
/* loaded from: classes10.dex */
public class C13901j {
    /* renamed from: a */
    public static <E> boolean m54846a(Collection<E> collection, Predicate<? super E> predicate) {
        Objects.requireNonNull(predicate);
        Iterator<E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (predicate.test(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }
}
