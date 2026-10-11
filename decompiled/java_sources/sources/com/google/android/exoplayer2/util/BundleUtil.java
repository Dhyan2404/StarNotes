package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class BundleUtil {

    /* renamed from: a */
    public static final String f28268a = "BundleUtil";

    /* renamed from: b */
    @Nullable
    public static Method f28269b;

    /* renamed from: c */
    @Nullable
    public static Method f28270c;

    @Nullable
    /* renamed from: a */
    public static IBinder m21418a(Bundle bundle, @Nullable String str) {
        Method method = f28269b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f28269b = method2;
                method2.setAccessible(true);
                method = f28269b;
            } catch (NoSuchMethodException e) {
                Log.m21492i(f28268a, "Failed to retrieve getIBinder method", e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            Log.m21492i(f28268a, "Failed to invoke getIBinder via reflection", e2);
            return null;
        }
    }

    /* renamed from: b */
    public static void m21419b(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        Method method = f28270c;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                f28270c = method2;
                method2.setAccessible(true);
                method = f28270c;
            } catch (NoSuchMethodException e) {
                Log.m21492i(f28268a, "Failed to retrieve putIBinder method", e);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            Log.m21492i(f28268a, "Failed to invoke putIBinder via reflection", e2);
        }
    }

    @Nullable
    public static IBinder getBinder(Bundle bundle, @Nullable String str) {
        return Util.SDK_INT >= 18 ? bundle.getBinder(str) : m21418a(bundle, str);
    }

    public static void putBinder(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (Util.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            m21419b(bundle, str, iBinder);
        }
    }
}
