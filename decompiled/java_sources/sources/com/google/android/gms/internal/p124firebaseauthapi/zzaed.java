package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzaed {
    @Nullable
    public static String zza(String str) {
        try {
            Object invoke = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
            if (invoke != null && String.class.isAssignableFrom(invoke.getClass())) {
                return (String) invoke;
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
