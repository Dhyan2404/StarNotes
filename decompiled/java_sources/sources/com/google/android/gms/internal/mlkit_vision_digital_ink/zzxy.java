package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Log;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzxy {
    private static final Method zza;
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;

    static {
        Method method;
        Method method2;
        Method method3;
        Class<?> cls;
        try {
            cls = Class.forName("android.os.SystemProperties");
            method = cls.getMethod("get", String.class, String.class);
        } catch (Exception e) {
            e = e;
            method = null;
            method2 = null;
        } catch (Throwable th) {
            th = th;
            method = null;
            method2 = null;
        }
        try {
            method2 = cls.getMethod("getInt", String.class, Integer.TYPE);
        } catch (Exception e2) {
            e = e2;
            method2 = null;
            method3 = method2;
            e.printStackTrace();
            zza = method;
            zzb = method2;
            zzc = method3;
            zzd = null;
        } catch (Throwable th2) {
            th = th2;
            method2 = null;
            method3 = method2;
            zza = method;
            zzb = method2;
            zzc = method3;
            zzd = null;
            throw th;
        }
        try {
            method3 = cls.getMethod("getLong", String.class, Long.TYPE);
            try {
                try {
                    Method method4 = cls.getMethod("getBoolean", String.class, Boolean.TYPE);
                    zza = method;
                    zzb = method2;
                    zzc = method3;
                    zzd = method4;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    zza = method;
                    zzb = method2;
                    zzc = method3;
                    zzd = null;
                }
            } catch (Throwable th3) {
                th = th3;
                zza = method;
                zzb = method2;
                zzc = method3;
                zzd = null;
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            method3 = null;
        } catch (Throwable th4) {
            th = th4;
            method3 = null;
            zza = method;
            zzb = method2;
            zzc = method3;
            zzd = null;
            throw th;
        }
    }

    public static String zza(String str, @Nullable String str2) {
        try {
            return (String) zza.invoke(null, "tiktok_systrace", "false");
        } catch (Exception e) {
            Log.e("SystemProperties", "get error", e);
            return "false";
        }
    }
}
