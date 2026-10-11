package com.sunia.HTREnginev2;

import android.app.KeyguardManager;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class kui {

    @RequiresApi(16)
    /* renamed from: com.sunia.HTREnginev2.kui$a */
    /* loaded from: classes3.dex */
    public static class C14013a {
        private C14013a() {
        }

        /* renamed from: a */
        public static boolean m55323a(@NonNull KeyguardManager keyguardManager) {
            return keyguardManager.isKeyguardSecure();
        }
    }

    @RequiresApi(23)
    /* renamed from: com.sunia.HTREnginev2.kui$b */
    /* loaded from: classes3.dex */
    public static class C14014b {
        private C14014b() {
        }

        @Nullable
        /* renamed from: a */
        public static KeyguardManager m55324a(@NonNull Context context) {
            return (KeyguardManager) context.getSystemService(KeyguardManager.class);
        }

        /* renamed from: b */
        public static boolean m55325b(@NonNull KeyguardManager keyguardManager) {
            return keyguardManager.isDeviceSecure();
        }
    }

    @Nullable
    /* renamed from: a */
    public static KeyguardManager m55321a(@NonNull Context context) {
        return C14014b.m55324a(context);
    }

    /* renamed from: b */
    public static boolean m55322b(@NonNull Context context) {
        KeyguardManager m55321a = m55321a(context);
        if (m55321a == null) {
            return false;
        }
        return C14014b.m55325b(m55321a);
    }
}
