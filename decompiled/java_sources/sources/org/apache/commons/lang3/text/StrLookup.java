package org.apache.commons.lang3.text;

import java.util.Map;

@Deprecated
/* loaded from: classes12.dex */
public abstract class StrLookup<V> {

    /* renamed from: a */
    public static final StrLookup<String> f107566a = new C18965b(null);

    /* renamed from: b */
    public static final StrLookup<String> f107567b = new C18966c();

    /* renamed from: org.apache.commons.lang3.text.StrLookup$b */
    /* loaded from: classes12.dex */
    public static class C18965b<V> extends StrLookup<V> {

        /* renamed from: c */
        public final Map<String, V> f107568c;

        public C18965b(Map<String, V> map) {
            this.f107568c = map;
        }

        @Override // org.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            V v;
            Map<String, V> map = this.f107568c;
            if (map == null || (v = map.get(str)) == null) {
                return null;
            }
            return v.toString();
        }
    }

    /* renamed from: org.apache.commons.lang3.text.StrLookup$c */
    /* loaded from: classes12.dex */
    public static class C18966c extends StrLookup<String> {
        public C18966c() {
        }

        @Override // org.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            if (str.length() <= 0) {
                return null;
            }
            try {
                return System.getProperty(str);
            } catch (SecurityException unused) {
                return null;
            }
        }
    }

    public static <V> StrLookup<V> mapLookup(Map<String, V> map) {
        return new C18965b(map);
    }

    public static StrLookup<?> noneLookup() {
        return f107566a;
    }

    public static StrLookup<String> systemPropertiesLookup() {
        return f107567b;
    }

    public abstract String lookup(String str);
}
