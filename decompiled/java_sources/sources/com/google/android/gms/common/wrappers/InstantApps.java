package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;

@KeepForSdk
/* loaded from: classes5.dex */
public class InstantApps {

    /* renamed from: a */
    public static Context f29510a;

    /* renamed from: b */
    @Nullable
    public static Boolean f29511b;

    @KeepForSdk
    public static synchronized boolean isInstantApp(@NonNull Context context) {
        Boolean bool;
        synchronized (InstantApps.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f29510a;
            if (context2 != null && (bool = f29511b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f29511b = null;
            if (PlatformVersion.isAtLeastO()) {
                f29511b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f29511b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f29511b = Boolean.FALSE;
                }
            }
            f29510a = applicationContext;
            return f29511b.booleanValue();
        }
    }
}
