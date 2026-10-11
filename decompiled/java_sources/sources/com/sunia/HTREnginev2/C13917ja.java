package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.ja */
/* loaded from: classes6.dex */
public final class C13917ja {

    /* renamed from: a */
    public static boolean f74087a;

    /* renamed from: b */
    public static final Class<?> f74088b = m54901a("libcore.io.Memory");

    /* renamed from: c */
    public static final boolean f74089c;

    static {
        f74089c = (f74087a || m54901a("org.robolectric.Robolectric") == null) ? false : true;
    }

    /* renamed from: a */
    public static <T> Class<T> m54901a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static Class<?> m54902b() {
        return f74088b;
    }

    /* renamed from: c */
    public static boolean m54903c() {
        return f74087a || !(f74088b == null || f74089c);
    }
}
