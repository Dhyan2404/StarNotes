package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
abstract class zzbli {
    final String zzi;
    final String zzj;
    final boolean zzk;

    public zzbli(String str, String str2, boolean z, boolean z2) {
        this.zzi = str;
        this.zzj = str2;
        this.zzk = z2;
    }

    public abstract void zza(zzbny zzbnyVar, int i, Object[] objArr) throws IOException, zzbic;

    public abstract void zzb(zzbny zzbnyVar, Object obj) throws IOException, IllegalAccessException;
}
