package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.base.extension.IntList;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class FreezableUtils {
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull ArrayList<E> arrayList) {
        IntList intList = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            intList.add(arrayList.get(i).freeze());
        }
        return intList;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(@NonNull Iterable<E> iterable) {
        IntList intList = (ArrayList<T>) new ArrayList();
        Iterator<E> it2 = iterable.iterator();
        while (it2.hasNext()) {
            intList.add(it2.next().freeze());
        }
        return intList;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull E[] eArr) {
        IntList intList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            intList.add(e.freeze());
        }
        return intList;
    }
}
