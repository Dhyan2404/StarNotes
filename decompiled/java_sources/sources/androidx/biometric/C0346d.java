package androidx.biometric;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* renamed from: androidx.biometric.d */
/* loaded from: classes3.dex */
public class C0346d {
    /* renamed from: a */
    public static boolean m1215a(@NonNull Context context, String str) {
        if (Build.VERSION.SDK_INT >= 30) {
            return false;
        }
        return m1216b(context, str, C0342R.array.assume_strong_biometrics_models);
    }

    /* renamed from: b */
    public static boolean m1216b(@NonNull Context context, String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : context.getResources().getStringArray(i)) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m1217c(@NonNull Context context, String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : context.getResources().getStringArray(i)) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m1218d(@NonNull Context context, String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : context.getResources().getStringArray(i)) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m1219e(@NonNull Context context, String str) {
        if (Build.VERSION.SDK_INT != 29) {
            return false;
        }
        return m1216b(context, str, C0342R.array.delay_showing_prompt_models);
    }

    /* renamed from: f */
    public static boolean m1220f(@NonNull Context context, String str) {
        return false;
    }

    /* renamed from: g */
    public static boolean m1221g(@NonNull Context context, String str, String str2) {
        return false;
    }

    /* renamed from: h */
    public static boolean m1222h(@NonNull Context context, @Nullable String str) {
        if (Build.VERSION.SDK_INT != 29) {
            return false;
        }
        return !m1218d(context, str, C0342R.array.keyguard_biometric_and_credential_exclude_vendors);
    }
}
