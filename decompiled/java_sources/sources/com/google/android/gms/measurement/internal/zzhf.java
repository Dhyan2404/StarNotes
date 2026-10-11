package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes5.dex */
public final class zzhf {

    /* renamed from: a */
    public final zzhy f29811a;

    public zzhf(zznv zznvVar) {
        this.f29811a = zznvVar.m22655g0();
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: a */
    public final Bundle m22455a(String str, com.google.android.gms.internal.measurement.zzbz zzbzVar) {
        this.f29811a.zzl().zzt();
        if (zzbzVar == null) {
            this.f29811a.zzj().zzu().zza("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PrivilegedApp.f6526c, str);
        try {
            Bundle zza = zzbzVar.zza(bundle);
            if (zza != null) {
                return zza;
            }
            this.f29811a.zzj().zzg().zza("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.f29811a.zzj().zzg().zza("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public final boolean m22456b() {
        try {
            PackageManagerWrapper packageManager = Wrappers.packageManager(this.f29811a.zza());
            if (packageManager != null) {
                return packageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f29811a.zzj().zzp().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            this.f29811a.zzj().zzp().zza("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
