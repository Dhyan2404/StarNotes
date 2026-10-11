package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.util.Log;
import com.google.common.base.Optional;

/* loaded from: classes5.dex */
public final class zzhi {
    private static volatile Optional<Boolean> zza = Optional.absent();
    private static final Object zzb = new Object();

    private static boolean zza(Context context) {
        return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
    }

    public static boolean zza(Context context, Uri uri) {
        ProviderInfo resolveContentProvider;
        boolean z;
        String authority = uri.getAuthority();
        boolean z2 = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", authority + " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.");
            return false;
        }
        if (zza.isPresent()) {
            return zza.get().booleanValue();
        }
        synchronized (zzb) {
            if (zza.isPresent()) {
                return zza.get().booleanValue();
            }
            if (!"com.google.android.gms".equals(context.getPackageName()) && ((resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 268435456)) == null || !"com.google.android.gms".equals(resolveContentProvider.packageName))) {
                z = false;
                if (z && zza(context)) {
                    z2 = true;
                }
                zza = Optional.m25808of(Boolean.valueOf(z2));
                return zza.get().booleanValue();
            }
            z = true;
            if (z) {
                z2 = true;
            }
            zza = Optional.m25808of(Boolean.valueOf(z2));
            return zza.get().booleanValue();
        }
    }
}
