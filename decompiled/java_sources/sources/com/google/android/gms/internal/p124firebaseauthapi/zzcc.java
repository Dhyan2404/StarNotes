package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzvg;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzcc {

    @GuardedBy("this")
    private final zzvg.zzb zza;

    private zzcc(zzvg.zzb zzbVar) {
        this.zza = zzbVar;
    }

    private final synchronized int zza(zzvc zzvcVar, boolean z) throws GeneralSecurityException {
        zzvg.zza zza;
        zza = zza(zzvcVar);
        this.zza.zza(zza);
        return zza.zza();
    }

    public static zzcc zzb() {
        return new zzcc(zzvg.zzc());
    }

    private final synchronized int zzc() {
        int zza;
        zza = zzph.zza();
        while (zzb(zza)) {
            zza = zzph.zza();
        }
        return zza;
    }

    private final synchronized boolean zzb(int i) {
        Iterator<zzvg.zza> it2 = this.zza.zzb().iterator();
        while (it2.hasNext()) {
            if (it2.next().zza() == i) {
                return true;
            }
        }
        return false;
    }

    public final synchronized zzby zza() throws GeneralSecurityException {
        return zzby.zza((zzvg) ((zzaje) this.zza.zzf()));
    }

    public final synchronized zzcc zza(zzbv zzbvVar) throws GeneralSecurityException {
        zza(zzbvVar.zza(), false);
        return this;
    }

    public final synchronized zzcc zza(int i) throws GeneralSecurityException {
        for (int i2 = 0; i2 < this.zza.zza(); i2++) {
            zzvg.zza zzb = this.zza.zzb(i2);
            if (zzb.zza() == i) {
                if (zzb.zzc().equals(zzva.ENABLED)) {
                    this.zza.zza(i);
                } else {
                    throw new GeneralSecurityException("cannot set key as primary because it's not enabled: " + i);
                }
            }
        }
        throw new GeneralSecurityException("key not found: " + i);
        return this;
    }

    public static zzcc zza(zzby zzbyVar) {
        return new zzcc(zzbyVar.zzb().zzn());
    }

    private final synchronized zzvg.zza zza(zzuw zzuwVar, zzvs zzvsVar) throws GeneralSecurityException {
        int zzc;
        zzc = zzc();
        if (zzvsVar != zzvs.UNKNOWN_PREFIX) {
        } else {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        return (zzvg.zza) ((zzaje) zzvg.zza.zzd().zza(zzuwVar).zza(zzc).zza(zzva.ENABLED).zza(zzvsVar).zzf());
    }

    private final synchronized zzvg.zza zza(zzvc zzvcVar) throws GeneralSecurityException {
        return zza(zzco.zza(zzvcVar), zzvcVar.zzd());
    }
}
