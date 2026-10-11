package org.apache.poi.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes13.dex */
public class CollectionUtils {
    public static void clear(Collection collection) {
        if (collection != null) {
            collection.clear();
        }
    }

    public static boolean contains(Set<String> set, String str) {
        if (set == null || set.size() <= 0) {
            return true;
        }
        return set.contains(str);
    }

    public static <T> void diff(Collection<T> collection, Collection<T> collection2, Collection<T> collection3) {
        for (T t : collection2) {
            if (!collection.contains(t)) {
                collection3.add(t);
            }
        }
    }

    public static <T> void ensureAddAll(Collection<T> collection, Collection<? extends T> collection2) {
        if (collection == null || isNullOrEmpty(collection2)) {
            return;
        }
        collection.addAll(collection2);
    }

    public static <K, V> List<V> ensureList(Map<K, List<V>> map, K k) {
        List<V> list = map.get(k);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        map.put(k, arrayList);
        return arrayList;
    }

    public static boolean equals(Collection collection, Collection collection2) {
        if (collection == null || collection2 == null) {
            return false;
        }
        return collection.equals(collection2);
    }

    public static <T> T getElement(List<T> list, int i, boolean z) {
        return (T) getElement(list, z ? i - 1 : i + 1);
    }

    public static <T> T getLast(List<T> list) {
        if (isNullOrEmpty(list)) {
            return null;
        }
        return list.get(getSize(list) - 1);
    }

    public static int getSize(Collection collection) {
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    public static boolean isFirstElement(List list, int i) {
        return !isNullOrEmpty(list) && i == 0;
    }

    public static boolean isIntersect(Collection collection, Collection collection2) {
        if (!isNullOrEmpty(collection) && !isNullOrEmpty(collection2)) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                if (collection2.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isLastElement(List list, int i) {
        return i + 1 == getSize(list);
    }

    public static boolean isNonBlank(Collection collection) {
        return collection != null && collection.size() > 0;
    }

    public static boolean isNullOrEmpty(Collection collection) {
        return collection == null || collection.size() <= 0;
    }

    public static boolean isOutOfRange(List list, int i) {
        return i < 0 || i >= getSize(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void safeAddAll(Collection<T> collection, Collection<T> collection2) {
        if (collection == null || isNullOrEmpty(collection2)) {
            return;
        }
        collection.addAll(collection2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void safeAddAllMap(Map<K, V> map, Map<K, V> map2) {
        if (map == null || isNullOrEmpty(map2)) {
            return;
        }
        map.putAll(map2);
    }

    public static <T> boolean safelyContains(Collection<T> collection, T t) {
        if (collection == null) {
            return false;
        }
        return collection.contains(t);
    }

    public static <T> boolean safelyEquals(Collection<T> collection, Comparable<T> comparable) {
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (comparable.compareTo(it2.next()) == 0) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean safelyRemove(Collection<T> collection, Comparable<T> comparable, boolean z) {
        Iterator<T> it2 = collection.iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            if (comparable.compareTo(it2.next()) == 0) {
                it2.remove();
                z2 = true;
                if (z) {
                    break;
                }
            }
        }
        return z2;
    }

    public static boolean safelyReverseContains(List<String> list, String str) {
        if (!StringUtils.isNullOrEmpty(str) && !isNullOrEmpty(list)) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (str.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static <T> List<T> safelySubList(List<T> list, int i, int i2) {
        if (isNullOrEmpty(list)) {
            return Collections.emptyList();
        }
        if (i < 0) {
            i = 0;
        }
        if (i > getSize(list)) {
            i = getSize(list);
        }
        if (i2 > getSize(list)) {
            i2 = getSize(list);
        }
        return new ArrayList(list.subList(i, i2));
    }

    public static void swap(List list, int i, int i2) {
        Collections.swap(list, i, i2);
    }

    public static void swapList(List list, int i, int i2) {
        int size = getSize(list);
        if (i < i2) {
            while (i < i2) {
                int i3 = i + 1;
                if (i3 >= size) {
                    return;
                }
                Collections.swap(list, i, i3);
                i = i3;
            }
            return;
        }
        while (i > i2) {
            int i4 = i - 1;
            if (i4 < 0) {
                return;
            }
            Collections.swap(list, i, i4);
            i--;
        }
    }

    public static void clear(Map map) {
        if (map != null) {
            map.clear();
        }
    }

    public static <T> T getElement(List<T> list, int i) {
        if (isOutOfRange(list, i)) {
            return null;
        }
        return list.get(i);
    }

    public static int getSize(Map map) {
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public static <T> boolean isFirstElement(List<T> list, T t) {
        return !isNullOrEmpty(list) && list.indexOf(t) == 0;
    }

    public static <T> boolean isLastElement(List<T> list, T t) {
        int indexOf;
        return !isNullOrEmpty(list) && (indexOf = list.indexOf(t)) >= 0 && indexOf + 1 == getSize(list);
    }

    public static boolean isNullOrEmpty(Map map) {
        return map == null || map.size() <= 0;
    }

    public static boolean safelyContains(Set<String> set, String str) {
        return set != null && set.contains(str);
    }

    public static boolean contains(Collection<String> collection, Collection<String> collection2) {
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection != null && collection2 != null) {
            Iterator<String> it2 = collection2.iterator();
            while (it2.hasNext()) {
                if (collection.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isNullOrEmpty(Object[] objArr) {
        return objArr == null || objArr.length <= 0;
    }

    public static <T> void safeAddAll(Collection<T> collection, Collection<T> collection2, boolean z) {
        if (collection == null) {
            return;
        }
        if (z) {
            collection.clear();
        }
        safeAddAll(collection, collection2);
    }

    public static boolean safelyContains(List<String> list, String str) {
        return list == null || list.contains(str);
    }

    public static boolean contains(List<String> list, String str) {
        return list == null || list.contains(str);
    }
}
