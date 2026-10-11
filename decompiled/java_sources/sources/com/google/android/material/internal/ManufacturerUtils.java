package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ManufacturerUtils {

    /* renamed from: a */
    public static final String f31578a = "lge";

    /* renamed from: b */
    public static final String f31579b = "samsung";

    /* renamed from: c */
    public static final String f31580c = "meizu";

    @NonNull
    /* renamed from: a */
    public static String m24241a() {
        String str = Build.MANUFACTURER;
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static boolean isDateInputKeyboardMissingSeparatorCharacters() {
        return isLGEDevice() || isSamsungDevice();
    }

    public static boolean isLGEDevice() {
        return m24241a().equals(f31578a);
    }

    public static boolean isMeizuDevice() {
        return m24241a().equals(f31580c);
    }

    public static boolean isSamsungDevice() {
        return m24241a().equals(f31579b);
    }
}
