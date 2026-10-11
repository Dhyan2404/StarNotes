package androidx.core.telephony;

import android.annotation.SuppressLint;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class TelephonyManagerCompat {

    /* renamed from: a */
    public static Method f5633a;

    /* renamed from: b */
    public static Method f5634b;

    @RequiresApi(23)
    /* renamed from: androidx.core.telephony.TelephonyManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0731a {
        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        /* renamed from: a */
        public static String m3196a(TelephonyManager telephonyManager, int i) {
            return telephonyManager.getDeviceId(i);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.telephony.TelephonyManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0732b {
        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        /* renamed from: a */
        public static String m3197a(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.telephony.TelephonyManagerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0733c {
        @DoNotInline
        /* renamed from: a */
        public static int m3198a(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    @Nullable
    @RequiresPermission("android.permission.READ_PHONE_STATE")
    @SuppressLint({"MissingPermission"})
    public static String getImei(@NonNull TelephonyManager telephonyManager) {
        return C0732b.m3197a(telephonyManager);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public static int getSubscriptionId(@NonNull TelephonyManager telephonyManager) {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0733c.m3198a(telephonyManager);
        }
        try {
            if (f5634b == null) {
                Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubId", new Class[0]);
                f5634b = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Integer num = (Integer) f5634b.invoke(telephonyManager, new Object[0]);
            if (num == null || num.intValue() == -1) {
                return Integer.MAX_VALUE;
            }
            return num.intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return Integer.MAX_VALUE;
        }
    }
}
