package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Map;

/* loaded from: classes5.dex */
final class zzbvp {
    public static final int zza(int i, Object obj, Object obj2) {
        zzbvo zzbvoVar = (zzbvo) obj;
        zzbvn zzbvnVar = (zzbvn) obj2;
        int i2 = 0;
        if (!zzbvoVar.isEmpty()) {
            for (Map.Entry entry : zzbvoVar.entrySet()) {
                i2 += zzbvnVar.zza(i, entry.getKey(), entry.getValue());
            }
        }
        return i2;
    }

    public static final boolean zzb(Object obj) {
        return !((zzbvo) obj).zze();
    }

    public static final Object zzc(Object obj, Object obj2) {
        zzbvo zzbvoVar = (zzbvo) obj;
        zzbvo zzbvoVar2 = (zzbvo) obj2;
        if (!zzbvoVar2.isEmpty()) {
            if (!zzbvoVar.zze()) {
                zzbvoVar = zzbvoVar.zzb();
            }
            zzbvoVar.zzd(zzbvoVar2);
        }
        return zzbvoVar;
    }
}
