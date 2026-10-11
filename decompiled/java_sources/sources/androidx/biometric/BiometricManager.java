package androidx.biometric;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import com.sunia.HTREnginev2.kui;
import com.sunia.HTREnginev2.srk;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class BiometricManager {
    public static final int BIOMETRIC_ERROR_HW_UNAVAILABLE = 1;
    public static final int BIOMETRIC_ERROR_NONE_ENROLLED = 11;
    public static final int BIOMETRIC_ERROR_NO_HARDWARE = 12;
    public static final int BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED = 15;
    public static final int BIOMETRIC_ERROR_UNSUPPORTED = -2;
    public static final int BIOMETRIC_STATUS_UNKNOWN = -1;
    public static final int BIOMETRIC_SUCCESS = 0;

    /* renamed from: d */
    public static final String f2191d = "BiometricManager";

    /* renamed from: e */
    public static final int f2192e = 0;

    /* renamed from: f */
    public static final int f2193f = 1;

    /* renamed from: g */
    public static final int f2194g = 2;

    /* renamed from: h */
    public static final int f2195h = 4;

    /* renamed from: i */
    public static final int f2196i = 8;

    /* renamed from: a */
    @NonNull
    public final InterfaceC0330e f2197a;

    /* renamed from: b */
    @Nullable
    public final android.hardware.biometrics.BiometricManager f2198b;

    /* renamed from: c */
    @Nullable
    public final FingerprintManagerCompat f2199c;

    /* loaded from: classes3.dex */
    public interface Authenticators {
        public static final int BIOMETRIC_STRONG = 15;
        public static final int BIOMETRIC_WEAK = 255;
        public static final int DEVICE_CREDENTIAL = 32768;
    }

    @RequiresApi(29)
    /* renamed from: androidx.biometric.BiometricManager$a */
    /* loaded from: classes3.dex */
    public static class C0326a {
        private C0326a() {
        }

        /* renamed from: a */
        public static int m1073a(@NonNull android.hardware.biometrics.BiometricManager biometricManager) {
            return biometricManager.canAuthenticate();
        }

        @Nullable
        /* renamed from: b */
        public static android.hardware.biometrics.BiometricManager m1074b(@NonNull Context context) {
            return (android.hardware.biometrics.BiometricManager) context.getSystemService(android.hardware.biometrics.BiometricManager.class);
        }

        @Nullable
        /* renamed from: c */
        public static Method m1075c() {
            try {
                return android.hardware.biometrics.BiometricManager.class.getMethod("canAuthenticate", BiometricPrompt.CryptoObject.class);
            } catch (NoSuchMethodException unused) {
                return null;
            }
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.biometric.BiometricManager$b */
    /* loaded from: classes3.dex */
    public static class C0327b {
        private C0327b() {
        }

        /* renamed from: a */
        public static int m1076a(@NonNull android.hardware.biometrics.BiometricManager biometricManager, int i) {
            return biometricManager.canAuthenticate(i);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.biometric.BiometricManager$c */
    /* loaded from: classes3.dex */
    public static class C0328c {
        private C0328c() {
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        /* renamed from: a */
        public static CharSequence m1077a(@NonNull BiometricManager.Strings strings) {
            return strings.getButtonLabel();
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        /* renamed from: b */
        public static CharSequence m1078b(@NonNull BiometricManager.Strings strings) {
            return strings.getPromptMessage();
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        /* renamed from: c */
        public static CharSequence m1079c(@NonNull BiometricManager.Strings strings) {
            return strings.getSettingName();
        }

        @NonNull
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        /* renamed from: d */
        public static BiometricManager.Strings m1080d(@NonNull android.hardware.biometrics.BiometricManager biometricManager, int i) {
            return biometricManager.getStrings(i);
        }
    }

    /* renamed from: androidx.biometric.BiometricManager$d */
    /* loaded from: classes3.dex */
    public static class C0329d implements InterfaceC0330e {

        /* renamed from: a */
        @NonNull
        public final Context f2202a;

        public C0329d(@NonNull Context context) {
            this.f2202a = context.getApplicationContext();
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: a */
        public boolean mo1081a() {
            return srk.m57250c(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        @Nullable
        /* renamed from: b */
        public FingerprintManagerCompat mo1082b() {
            return FingerprintManagerCompat.from(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: c */
        public boolean mo1083c() {
            return kui.m55321a(this.f2202a) != null;
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: d */
        public boolean mo1084d() {
            return srk.m57248a(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: e */
        public boolean mo1085e() {
            return kui.m55322b(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: f */
        public boolean mo1086f() {
            return C0346d.m1215a(this.f2202a, Build.MODEL);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        @Nullable
        @RequiresApi(29)
        /* renamed from: g */
        public android.hardware.biometrics.BiometricManager mo1087g() {
            return C0326a.m1074b(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        /* renamed from: h */
        public boolean mo1088h() {
            return srk.m57249b(this.f2202a);
        }

        @Override // androidx.biometric.BiometricManager.InterfaceC0330e
        @NonNull
        /* renamed from: i */
        public Resources mo1089i() {
            return this.f2202a.getResources();
        }
    }

    @VisibleForTesting
    /* renamed from: androidx.biometric.BiometricManager$e */
    /* loaded from: classes3.dex */
    public interface InterfaceC0330e {
        /* renamed from: a */
        boolean mo1081a();

        @Nullable
        /* renamed from: b */
        FingerprintManagerCompat mo1082b();

        /* renamed from: c */
        boolean mo1083c();

        /* renamed from: d */
        boolean mo1084d();

        /* renamed from: e */
        boolean mo1085e();

        /* renamed from: f */
        boolean mo1086f();

        @Nullable
        @RequiresApi(29)
        /* renamed from: g */
        android.hardware.biometrics.BiometricManager mo1087g();

        /* renamed from: h */
        boolean mo1088h();

        @NonNull
        /* renamed from: i */
        Resources mo1089i();
    }

    /* renamed from: androidx.biometric.BiometricManager$f */
    /* loaded from: classes3.dex */
    public class C0331f {

        /* renamed from: a */
        @NonNull
        public final Resources f2203a;

        /* renamed from: b */
        public final int f2204b;

        /* renamed from: c */
        public final int f2205c;

        public C0331f(@NonNull Resources resources, int i, boolean z, boolean z2, boolean z3, boolean z4) {
            this.f2203a = resources;
            this.f2204b = i;
            int i2 = (z4 && C0344b.m1191d(i)) ? 1 : 0;
            if (C0344b.m1192e(i)) {
                i2 = z ? i2 | 4 : i2;
                i2 = z2 ? i2 | 8 : i2;
                if (z3) {
                    i2 |= 2;
                }
            }
            this.f2205c = i2;
        }

        @Nullable
        /* renamed from: a */
        public CharSequence m1090a() {
            if (BiometricManager.this.canAuthenticate(C0344b.m1189b(this.f2204b)) == 0) {
                int i = this.f2205c & (-2);
                return i != 4 ? i != 8 ? this.f2203a.getString(C0342R.string.use_biometric_label) : this.f2203a.getString(C0342R.string.use_face_label) : this.f2203a.getString(C0342R.string.use_fingerprint_label);
            }
            if ((this.f2205c & 1) != 0) {
                return this.f2203a.getString(C0342R.string.use_screen_lock_label);
            }
            return null;
        }

        @Nullable
        /* renamed from: b */
        public CharSequence m1091b() {
            if (BiometricManager.this.canAuthenticate(C0344b.m1189b(this.f2204b)) == 0) {
                int i = this.f2205c & (-2);
                return this.f2203a.getString(i != 4 ? i != 8 ? C0344b.m1191d(this.f2204b) ? C0342R.string.biometric_or_screen_lock_prompt_message : C0342R.string.biometric_prompt_message : C0344b.m1191d(this.f2204b) ? C0342R.string.face_or_screen_lock_prompt_message : C0342R.string.face_prompt_message : C0344b.m1191d(this.f2204b) ? C0342R.string.fingerprint_or_screen_lock_prompt_message : C0342R.string.fingerprint_prompt_message);
            }
            if ((this.f2205c & 1) != 0) {
                return this.f2203a.getString(C0342R.string.screen_lock_prompt_message);
            }
            return null;
        }

        @Nullable
        /* renamed from: c */
        public CharSequence m1092c() {
            int i = this.f2205c;
            if (i == 0) {
                return null;
            }
            if (i == 1) {
                return this.f2203a.getString(C0342R.string.use_screen_lock_label);
            }
            if (i == 2) {
                return this.f2203a.getString(C0342R.string.use_biometric_label);
            }
            if (i == 4) {
                return this.f2203a.getString(C0342R.string.use_fingerprint_label);
            }
            if (i == 8) {
                return this.f2203a.getString(C0342R.string.use_face_label);
            }
            if ((i & 1) == 0) {
                return this.f2203a.getString(C0342R.string.use_biometric_label);
            }
            int i2 = i & (-2);
            return i2 != 4 ? i2 != 8 ? this.f2203a.getString(C0342R.string.use_biometric_or_screen_lock_label) : this.f2203a.getString(C0342R.string.use_face_or_screen_lock_label) : this.f2203a.getString(C0342R.string.use_fingerprint_or_screen_lock_label);
        }
    }

    @VisibleForTesting
    public BiometricManager(@NonNull InterfaceC0330e interfaceC0330e) {
        this.f2197a = interfaceC0330e;
        int i = Build.VERSION.SDK_INT;
        this.f2198b = interfaceC0330e.mo1087g();
        this.f2199c = i <= 29 ? interfaceC0330e.mo1082b() : null;
    }

    @NonNull
    public static BiometricManager from(@NonNull Context context) {
        return new BiometricManager(new C0329d(context));
    }

    /* renamed from: a */
    public final int m1068a(int i) {
        if (!C0344b.m1193f(i)) {
            return -2;
        }
        if (i != 0 && this.f2197a.mo1083c()) {
            return C0344b.m1191d(i) ? this.f2197a.mo1085e() ? 0 : 11 : Build.VERSION.SDK_INT == 29 ? C0344b.m1194g(i) ? m1072e() : m1071d() : m1069b();
        }
        return 12;
    }

    /* renamed from: b */
    public final int m1069b() {
        FingerprintManagerCompat fingerprintManagerCompat = this.f2199c;
        if (fingerprintManagerCompat == null) {
            Log.e(f2191d, "Failure in canAuthenticate(). FingerprintManager was null.");
            return 1;
        }
        if (fingerprintManagerCompat.isHardwareDetected()) {
            return !this.f2199c.hasEnrolledFingerprints() ? 11 : 0;
        }
        return 12;
    }

    /* renamed from: c */
    public final int m1070c() {
        return !this.f2197a.mo1085e() ? m1069b() : m1069b() == 0 ? 0 : -1;
    }

    @Deprecated
    public int canAuthenticate() {
        return canAuthenticate(255);
    }

    @RequiresApi(29)
    /* renamed from: d */
    public final int m1071d() {
        BiometricPrompt.CryptoObject m1198d;
        Method m1075c = C0326a.m1075c();
        if (m1075c != null && (m1198d = C0345c.m1198d(C0345c.m1195a())) != null) {
            try {
                Object invoke = Build.VERSION.SDK_INT == 29 ? m1075c.invoke(this.f2198b, m1198d) : null;
                if (invoke instanceof Integer) {
                    return ((Integer) invoke).intValue();
                }
                Log.w(f2191d, "Invalid return type for canAuthenticate(CryptoObject).");
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                Log.w(f2191d, "Failed to invoke canAuthenticate(CryptoObject).", e);
            }
        }
        int m1072e = m1072e();
        return (this.f2197a.mo1086f() || m1072e != 0) ? m1072e : m1070c();
    }

    @RequiresApi(29)
    /* renamed from: e */
    public final int m1072e() {
        android.hardware.biometrics.BiometricManager biometricManager = this.f2198b;
        if (biometricManager != null) {
            return C0326a.m1073a(biometricManager);
        }
        Log.e(f2191d, "Failure in canAuthenticate(). BiometricManager was null.");
        return 1;
    }

    @Nullable
    @RequiresPermission("android.permission.USE_BIOMETRIC")
    public Strings getStrings(int i) {
        if (Build.VERSION.SDK_INT < 31) {
            return new Strings(new C0331f(this.f2197a.mo1089i(), i, this.f2197a.mo1088h(), this.f2197a.mo1084d(), this.f2197a.mo1081a(), this.f2197a.mo1085e()));
        }
        android.hardware.biometrics.BiometricManager biometricManager = this.f2198b;
        if (biometricManager != null) {
            return new Strings(C0328c.m1080d(biometricManager, i));
        }
        Log.e(f2191d, "Failure in getStrings(). BiometricManager was null.");
        return null;
    }

    public int canAuthenticate(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            android.hardware.biometrics.BiometricManager biometricManager = this.f2198b;
            if (biometricManager == null) {
                Log.e(f2191d, "Failure in canAuthenticate(). BiometricManager was null.");
                return 1;
            }
            return C0327b.m1076a(biometricManager, i);
        }
        return m1068a(i);
    }

    /* loaded from: classes3.dex */
    public static class Strings {

        /* renamed from: a */
        @Nullable
        public final BiometricManager.Strings f2200a;

        /* renamed from: b */
        @Nullable
        public final C0331f f2201b;

        @RequiresApi(31)
        public Strings(@NonNull BiometricManager.Strings strings) {
            this.f2200a = strings;
            this.f2201b = null;
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        public CharSequence getButtonLabel() {
            BiometricManager.Strings strings;
            if (Build.VERSION.SDK_INT >= 31 && (strings = this.f2200a) != null) {
                return C0328c.m1077a(strings);
            }
            C0331f c0331f = this.f2201b;
            if (c0331f != null) {
                return c0331f.m1090a();
            }
            Log.e(BiometricManager.f2191d, "Failure in Strings.getButtonLabel(). No available string provider.");
            return null;
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        public CharSequence getPromptMessage() {
            BiometricManager.Strings strings;
            if (Build.VERSION.SDK_INT >= 31 && (strings = this.f2200a) != null) {
                return C0328c.m1078b(strings);
            }
            C0331f c0331f = this.f2201b;
            if (c0331f != null) {
                return c0331f.m1091b();
            }
            Log.e(BiometricManager.f2191d, "Failure in Strings.getPromptMessage(). No available string provider.");
            return null;
        }

        @Nullable
        @RequiresPermission("android.permission.USE_BIOMETRIC")
        public CharSequence getSettingName() {
            BiometricManager.Strings strings;
            if (Build.VERSION.SDK_INT >= 31 && (strings = this.f2200a) != null) {
                return C0328c.m1079c(strings);
            }
            C0331f c0331f = this.f2201b;
            if (c0331f != null) {
                return c0331f.m1092c();
            }
            Log.e(BiometricManager.f2191d, "Failure in Strings.getSettingName(). No available string provider.");
            return null;
        }

        public Strings(@NonNull C0331f c0331f) {
            this.f2200a = null;
            this.f2201b = c0331f;
        }
    }
}
