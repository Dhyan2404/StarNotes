package com.samsung.android.sdk;

import android.os.Build;

/* loaded from: classes9.dex */
public class SsdkVendorCheck {

    /* renamed from: a */
    public static String f63289a = Build.BRAND;

    /* renamed from: b */
    public static String f63290b = Build.MANUFACTURER;

    public static boolean isSamsungDevice() {
        String str = f63289a;
        if (str == null || f63290b == null) {
            return false;
        }
        return str.compareToIgnoreCase("Samsung") == 0 || f63290b.compareToIgnoreCase("Samsung") == 0;
    }
}
