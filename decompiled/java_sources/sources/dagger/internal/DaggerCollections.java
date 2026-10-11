package dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes10.dex */
public final class DaggerCollections {

    /* renamed from: a */
    public static final int f94533a = 1073741824;

    /* renamed from: a */
    public static int m60903a(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: b */
    public static <T> HashSet<T> m60904b(int i) {
        return new HashSet<>(m60903a(i));
    }

    public static boolean hasDuplicates(List<?> list) {
        if (list.size() < 2) {
            return false;
        }
        return list.size() != new HashSet(list).size();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i) {
        return new LinkedHashMap<>(m60903a(i));
    }

    public static <T> List<T> presizedList(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }
}
