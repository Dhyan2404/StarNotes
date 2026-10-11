package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzbvn {
    private final zzbvm zza;
    private final Object zzb;

    private zzbvn(zzbxs zzbxsVar, Object obj, zzbxs zzbxsVar2, Object obj2) {
        this.zza = new zzbvm(zzbxsVar, "", zzbxsVar2, obj2);
        this.zzb = obj2;
    }

    public static int zzb(zzbvm zzbvmVar, Object obj, Object obj2) {
        return zzbtw.zza(zzbvmVar.zza, 1, obj) + zzbtw.zza(zzbvmVar.zzc, 2, obj2);
    }

    public static zzbvn zzd(zzbxs zzbxsVar, Object obj, zzbxs zzbxsVar2, Object obj2) {
        return new zzbvn(zzbxsVar, "", zzbxsVar2, obj2);
    }

    public static void zze(zzbtm zzbtmVar, zzbvm zzbvmVar, Object obj, Object obj2) throws IOException {
        zzbtw.zzk(zzbtmVar, zzbvmVar.zza, 1, obj);
        zzbtw.zzk(zzbtmVar, zzbvmVar.zzc, 2, obj2);
    }

    public final int zza(int i, Object obj, Object obj2) {
        int i2 = zzbtm.zzf;
        int zzb = zzb(this.zza, obj, obj2);
        return zzbtm.zzL(i) + zzbtm.zzM(zzb) + zzb;
    }

    public final zzbvm zzc() {
        return this.zza;
    }
}
