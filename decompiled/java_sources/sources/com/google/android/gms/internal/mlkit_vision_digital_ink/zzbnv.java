package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.sql.Date;
import java.sql.Timestamp;

/* loaded from: classes5.dex */
public final class zzbnv {
    public static final boolean zza;
    public static final zzbkx zzb;
    public static final zzbkx zzc;
    public static final zzbip zzd;
    public static final zzbip zze;
    public static final zzbip zzf;

    static {
        boolean z;
        zzbip zzbipVar;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        zza = z;
        if (z) {
            zzb = new zzbnt(Date.class);
            zzc = new zzbnu(Timestamp.class);
            zzd = zzbnm.zza;
            zze = zzbnp.zza;
            zzbipVar = zzbns.zza;
        } else {
            zzbipVar = null;
            zzb = null;
            zzc = null;
            zzd = null;
            zze = null;
        }
        zzf = zzbipVar;
    }
}
