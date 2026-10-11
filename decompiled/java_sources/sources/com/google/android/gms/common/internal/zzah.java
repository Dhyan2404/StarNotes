package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;

/* loaded from: classes5.dex */
public final class zzah {

    /* renamed from: a */
    public static final Object f29403a = new Object();

    /* renamed from: b */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public static boolean f29404b;

    /* renamed from: c */
    @Nullable
    public static String f29405c;

    /* renamed from: d */
    public static int f29406d;

    /* renamed from: a */
    public static void m22184a(Context context) {
        Bundle bundle;
        synchronized (f29403a) {
            if (f29404b) {
                return;
            }
            f29404b = true;
            try {
                bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            f29405c = bundle.getString("com.google.app.id");
            f29406d = bundle.getInt("com.google.android.gms.version");
        }
    }

    public static int zza(Context context) {
        m22184a(context);
        return f29406d;
    }

    @Nullable
    public static String zzb(Context context) {
        m22184a(context);
        return f29405c;
    }
}
