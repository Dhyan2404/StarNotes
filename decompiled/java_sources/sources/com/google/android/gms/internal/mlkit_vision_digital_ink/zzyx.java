package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes5.dex */
public final class zzyx {
    private String zza = "";
    private String zzb;
    private long zzc;

    public /* synthetic */ zzyx(Context context, zzyw zzywVar) {
        this.zzb = "";
        this.zzb = context.getPackageName();
    }

    public final Uri zza() throws zzzk {
        Uri.Builder path = new Uri.Builder().scheme("blobstore").authority(this.zzb).path(this.zza);
        if (zzyy.zze(this.zza) && !zzyy.zzd(this.zza)) {
            path.appendQueryParameter("expiryDateSecs", String.valueOf(this.zzc));
        }
        Uri build = path.build();
        zzyy.zzc(build);
        return build;
    }

    public final zzyx zzb() {
        this.zza = "*.lease";
        return this;
    }

    public final zzyx zzc(String str) {
        this.zza = str;
        return this;
    }

    public final zzyx zzd(String str, long j) {
        this.zza = String.valueOf(str).concat(".lease");
        this.zzc = j;
        return this;
    }
}
