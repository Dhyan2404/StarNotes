package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* loaded from: classes5.dex */
public abstract class zzgm {
    public abstract zzgm zza(zzgl zzglVar);

    public abstract zzgm zzb(zzajm zzajmVar);

    public abstract zzgm zzc(Uri uri);

    public abstract zzgm zzd(int i);

    public abstract zzgm zze(String str);

    public abstract zzgn zzf();

    public abstract String zzg();

    public final zzgn zzh() {
        if (zzg().startsWith("inlinefile")) {
            zzagg.zzf(false, "InlineDownloadParams must be set when using inlinefile: scheme");
            zza(zzgl.zza);
        }
        return zzf();
    }
}
