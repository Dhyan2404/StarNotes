package com.onyx.harfbuzz.internal;

/* loaded from: classes9.dex */
public class JniBridge {

    /* renamed from: a */
    public static boolean f62791a;

    public static void loadLibrary() {
        if (f62791a) {
            return;
        }
        synchronized (JniBridge.class) {
            if (!f62791a) {
                System.loadLibrary("hbwrapper");
                f62791a = true;
            }
        }
    }
}
