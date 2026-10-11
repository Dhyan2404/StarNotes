package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzblf extends zzbio {
    private static final zzbip zza = new zzbld(zzbil.DOUBLE);
    private final zzbht zzb;
    private final zzbim zzc;

    public /* synthetic */ zzblf(zzbht zzbhtVar, zzbim zzbimVar, zzble zzbleVar) {
        this.zzb = zzbhtVar;
        this.zzc = zzbimVar;
    }

    public static zzbip zzc(zzbim zzbimVar) {
        return zzbimVar == zzbil.DOUBLE ? zza : new zzbld(zzbimVar);
    }

    private final Object zze(zzbny zzbnyVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 5) {
            return zzbnyVar.zzi();
        }
        if (i2 == 6) {
            return this.zzc.zza(zzbnyVar);
        }
        if (i2 == 7) {
            return Boolean.valueOf(zzbnyVar.zzs());
        }
        if (i2 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(zzbnz.zza(i)));
        }
        zzbnyVar.zzn();
        return null;
    }

    private static final Object zzf(zzbny zzbnyVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 0) {
            zzbnyVar.zzj();
            return new ArrayList();
        }
        if (i2 != 2) {
            return null;
        }
        zzbnyVar.zzk();
        return new zzbkd();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        int zzt = zzbnyVar.zzt();
        Object zzf = zzf(zzbnyVar, zzt);
        if (zzf == null) {
            return zze(zzbnyVar, zzt);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (zzbnyVar.zzq()) {
                String zzh = zzf instanceof Map ? zzbnyVar.zzh() : null;
                int zzt2 = zzbnyVar.zzt();
                Object zzf2 = zzf(zzbnyVar, zzt2);
                Object zze = zzf2 == null ? zze(zzbnyVar, zzt2) : zzf2;
                if (zzf instanceof List) {
                    ((List) zzf).add(zze);
                } else {
                    ((Map) zzf).put(zzh, zze);
                }
                if (zzf2 != null) {
                    arrayDeque.addLast(zzf);
                    zzf = zze;
                }
            } else {
                if (zzf instanceof List) {
                    zzbnyVar.zzl();
                } else {
                    zzbnyVar.zzm();
                }
                if (arrayDeque.isEmpty()) {
                    return zzf;
                }
                zzf = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
