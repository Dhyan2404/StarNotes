package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class srk {

    @RequiresApi(23)
    /* renamed from: com.sunia.HTREnginev2.srk$a */
    /* loaded from: classes3.dex */
    public static class C14418a {
        private C14418a() {
        }

        /* renamed from: a */
        public static boolean m57251a(@NonNull PackageManager packageManager) {
            return packageManager.hasSystemFeature("android.hardware.fingerprint");
        }
    }

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.srk$b */
    /* loaded from: classes3.dex */
    public static class C14419b {
        private C14419b() {
        }

        /* renamed from: a */
        public static boolean m57252a(@NonNull PackageManager packageManager) {
            return packageManager.hasSystemFeature("android.hardware.biometrics.face");
        }

        /* renamed from: b */
        public static boolean m57253b(@NonNull PackageManager packageManager) {
            return packageManager.hasSystemFeature("android.hardware.biometrics.iris");
        }
    }

    /* renamed from: a */
    public static boolean m57248a(@Nullable Context context) {
        return (context == null || context.getPackageManager() == null || !C14419b.m57252a(context.getPackageManager())) ? false : true;
    }

    /* renamed from: b */
    public static boolean m57249b(@Nullable Context context) {
        return (context == null || context.getPackageManager() == null || !C14418a.m57251a(context.getPackageManager())) ? false : true;
    }

    /* renamed from: c */
    public static boolean m57250c(@Nullable Context context) {
        return (context == null || context.getPackageManager() == null || !C14419b.m57253b(context.getPackageManager())) ? false : true;
    }
}
