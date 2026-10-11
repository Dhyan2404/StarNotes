package com.sunia.HTREnginev2;

import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.k0 */
/* loaded from: classes10.dex */
public class C13962k0 {
    /* renamed from: a */
    public static <K, V> V m55096a(Map<K, V> map, K k, V v) {
        V v2 = map.get(k);
        return (v2 != null || map.containsKey(k)) ? v2 : v;
    }
}
