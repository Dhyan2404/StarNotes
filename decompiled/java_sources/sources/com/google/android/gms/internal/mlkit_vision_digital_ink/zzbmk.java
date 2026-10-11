package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbmk extends zzbio {
    private static final zzbhy zze(zzbny zzbnyVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 5) {
            return new zzbid(zzbnyVar.zzi());
        }
        if (i2 == 6) {
            return new zzbid(new zzbjv(zzbnyVar.zzi()));
        }
        if (i2 == 7) {
            return new zzbid(Boolean.valueOf(zzbnyVar.zzs()));
        }
        if (i2 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(zzbnz.zza(i)));
        }
        zzbnyVar.zzn();
        return zzbia.zza;
    }

    private static final zzbhy zzf(zzbny zzbnyVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 0) {
            zzbnyVar.zzj();
            return new zzbhw();
        }
        if (i2 != 2) {
            return null;
        }
        zzbnyVar.zzk();
        return new zzbib();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        int zzt = zzbnyVar.zzt();
        zzbhy zzf = zzf(zzbnyVar, zzt);
        if (zzf == null) {
            return zze(zzbnyVar, zzt);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (zzbnyVar.zzq()) {
                String zzh = zzf instanceof zzbib ? zzbnyVar.zzh() : null;
                int zzt2 = zzbnyVar.zzt();
                zzbhy zzf2 = zzf(zzbnyVar, zzt2);
                zzbhy zze = zzf2 == null ? zze(zzbnyVar, zzt2) : zzf2;
                if (zzf instanceof zzbhw) {
                    ((zzbhw) zzf).zza(zze);
                } else {
                    ((zzbib) zzf).zzb(zzh, zze);
                }
                if (zzf2 != null) {
                    arrayDeque.addLast(zzf);
                    zzf = zze;
                }
            } else {
                if (zzf instanceof zzbhw) {
                    zzbnyVar.zzl();
                } else {
                    zzbnyVar.zzm();
                }
                if (arrayDeque.isEmpty()) {
                    return zzf;
                }
                zzf = (zzbhy) arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final void zzb(zzboa zzboaVar, zzbhy zzbhyVar) throws IOException {
        if (zzbhyVar == null || (zzbhyVar instanceof zzbia)) {
            zzboaVar.zzf();
            return;
        }
        if (zzbhyVar instanceof zzbid) {
            zzbid zzbidVar = (zzbid) zzbhyVar;
            if (zzbidVar.zze()) {
                zzboaVar.zzg(zzbidVar.zza());
                return;
            } else if (zzbidVar.zzd()) {
                zzboaVar.zzi(zzbidVar.zzc());
                return;
            } else {
                zzboaVar.zzh(zzbidVar.zzb());
                return;
            }
        }
        if (zzbhyVar instanceof zzbhw) {
            zzboaVar.zza();
            Iterator it2 = ((zzbhw) zzbhyVar).iterator();
            while (it2.hasNext()) {
                zzb(zzboaVar, (zzbhy) it2.next());
            }
            zzboaVar.zzc();
            return;
        }
        if (!(zzbhyVar instanceof zzbib)) {
            throw new IllegalArgumentException("Couldn't write ".concat(String.valueOf(zzbhyVar.getClass())));
        }
        zzboaVar.zzb();
        for (Map.Entry entry : ((zzbib) zzbhyVar).zza()) {
            zzboaVar.zze((String) entry.getKey());
            zzb(zzboaVar, (zzbhy) entry.getValue());
        }
        zzboaVar.zzd();
    }
}
