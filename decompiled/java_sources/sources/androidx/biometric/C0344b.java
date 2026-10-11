package androidx.biometric;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.biometric.BiometricPrompt;

/* renamed from: androidx.biometric.b */
/* loaded from: classes3.dex */
public class C0344b {

    /* renamed from: a */
    public static final int f2315a = 32767;

    /* renamed from: a */
    public static String m1188a(int i) {
        return i != 15 ? i != 255 ? i != 32768 ? i != 32783 ? i != 33023 ? String.valueOf(i) : "BIOMETRIC_WEAK | DEVICE_CREDENTIAL" : "BIOMETRIC_STRONG | DEVICE_CREDENTIAL" : "DEVICE_CREDENTIAL" : "BIOMETRIC_WEAK" : "BIOMETRIC_STRONG";
    }

    /* renamed from: b */
    public static int m1189b(int i) {
        return i & 32767;
    }

    /* renamed from: c */
    public static int m1190c(@NonNull BiometricPrompt.PromptInfo promptInfo, @Nullable BiometricPrompt.CryptoObject cryptoObject) {
        if (promptInfo.getAllowedAuthenticators() != 0) {
            return promptInfo.getAllowedAuthenticators();
        }
        int i = cryptoObject != null ? 15 : 255;
        return promptInfo.isDeviceCredentialAllowed() ? 32768 | i : i;
    }

    /* renamed from: d */
    public static boolean m1191d(int i) {
        return (i & 32768) != 0;
    }

    /* renamed from: e */
    public static boolean m1192e(int i) {
        return m1189b(i) != 0;
    }

    /* renamed from: f */
    public static boolean m1193f(int i) {
        if (i == 15 || i == 255) {
            return true;
        }
        return i != 32768 ? i != 32783 ? i == 33023 || i == 0 : Build.VERSION.SDK_INT > 29 : Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: g */
    public static boolean m1194g(int i) {
        return (i & 255) == 255;
    }
}
