package com.trans.android.service;

import java.backport.function.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

/* loaded from: classes10.dex */
public class ServiceUtils {
    public static <T> T getService(Class<T> cls) {
        return (T) getService(cls, null);
    }

    public static <T> List<T> getServices(Class<T> cls) {
        return getServices(cls, null);
    }

    public static <T> T getService(Class<T> cls, Predicate<T> predicate) {
        Iterator it2 = ServiceLoader.load(cls, cls.getClassLoader()).iterator();
        while (it2.hasNext()) {
            T t = (T) it2.next();
            if (predicate == null || predicate.test(t)) {
                return t;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> getServices(Class<T> cls, Predicate<T> predicate) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = ServiceLoader.load(cls, cls.getClassLoader()).iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (predicate == 0 || predicate.test(next)) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
