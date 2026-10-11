package com.sunia.HTREnginev2;

import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.lookup.StringLookup;

/* loaded from: classes12.dex */
public final class r8j<V> implements StringLookup {

    /* renamed from: a */
    public final Map<String, V> f82874a;

    public r8j(Map<String, V> map) {
        this.f82874a = map;
    }

    /* renamed from: b */
    public static <T> r8j<T> m56933b(Map<String, T> map) {
        return new r8j<>(map);
    }

    /* renamed from: a */
    public Map<String, V> m56934a() {
        return this.f82874a;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        Map<String, V> map = this.f82874a;
        if (map == null) {
            return null;
        }
        try {
            V v = map.get(str);
            if (v != null) {
                return v.toString();
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public String toString() {
        return r8j.class.getName() + " [map=" + this.f82874a + IteratorUtils.f104924b;
    }
}
