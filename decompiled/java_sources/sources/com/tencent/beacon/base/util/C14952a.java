package com.tencent.beacon.base.util;

/* renamed from: com.tencent.beacon.base.util.a */
/* loaded from: classes10.dex */
public class C14952a {

    /* renamed from: a */
    private static String f92907a;

    /* renamed from: a */
    public static String m59357a() {
        String str = f92907a;
        if (str != null) {
            return str;
        }
        try {
            f92907a = (String) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", new Class[0]).invoke(null, new Object[0]);
            return "";
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return "";
        }
    }
}
