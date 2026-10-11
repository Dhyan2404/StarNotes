package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.List;

/* loaded from: classes5.dex */
final class zzajz extends zzaju {
    private static <E> zzajl<E> zzc(Object obj, long j) {
        return (zzajl) zzamm.zze(obj, j);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaju
    public final <L> List<L> zza(Object obj, long j) {
        zzajl zzc = zzc(obj, j);
        if (zzc.zzc()) {
            return zzc;
        }
        int size = zzc.size();
        zzajl zza = zzc.zza(size == 0 ? 10 : size << 1);
        zzamm.zza(obj, j, zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaju
    public final void zzb(Object obj, long j) {
        zzc(obj, j).zzb();
    }

    private zzajz() {
        super();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaju
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzajl zzc = zzc(obj, j);
        zzajl zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzc.zzc()) {
                zzc = zzc.zza(size2 + size);
            }
            zzc.addAll(zzc2);
        }
        if (size > 0) {
            zzc2 = zzc;
        }
        zzamm.zza(obj, j, zzc2);
    }
}
