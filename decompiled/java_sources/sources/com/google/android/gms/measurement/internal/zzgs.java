package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzgs {

    /* renamed from: a */
    public long f29787a;

    @NonNull
    public String zza;

    @NonNull
    public String zzb;

    @NonNull
    public Bundle zzc;

    public zzgs(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.f29787a = j;
    }

    public final String toString() {
        return "origin=" + this.zzb + ",name=" + this.zza + ",params=" + String.valueOf(this.zzc);
    }

    public final zzbf zza() {
        return new zzbf(this.zza, new zzbe(new Bundle(this.zzc)), this.zzb, this.f29787a);
    }

    public static zzgs zza(zzbf zzbfVar) {
        return new zzgs(zzbfVar.zza, zzbfVar.zzc, zzbfVar.zzb.zzb(), zzbfVar.zzd);
    }
}
