package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzlf implements zzbs {
    private static final byte[] zza = new byte[0];
    private final byte[] zzb;
    private final zzlh zzc;
    private final zzli zzd;
    private final zzle zze;
    private final byte[] zzf;

    private zzlf(zzxv zzxvVar, zzlh zzlhVar, zzli zzliVar, zzle zzleVar, zzxv zzxvVar2) {
        this.zzb = zzxvVar.zzb();
        this.zzc = zzlhVar;
        this.zzd = zzliVar;
        this.zze = zzleVar;
        this.zzf = zzxvVar2.zzb();
    }

    public static zzbs zza(zzki zzkiVar) throws GeneralSecurityException {
        zzjv zzb = zzkiVar.zzb();
        return new zzlf(zzkiVar.zzd(), zza(zzb.zze()), zza(zzb.zzd()), zza(zzb.zzb()), zzkiVar.zzc());
    }

    public static zzle zza(zzjv.zza zzaVar) throws GeneralSecurityException {
        if (zzaVar.equals(zzjv.zza.zza)) {
            return new zzku(16);
        }
        if (zzaVar.equals(zzjv.zza.zzb)) {
            return new zzku(32);
        }
        if (zzaVar.equals(zzjv.zza.zzc)) {
            return new zzkt();
        }
        throw new GeneralSecurityException("Unrecognized HPKE AEAD identifier");
    }

    public static zzli zza(zzjv.zze zzeVar) throws GeneralSecurityException {
        if (zzeVar.equals(zzjv.zze.zza)) {
            return new zzlb("HmacSha256");
        }
        if (zzeVar.equals(zzjv.zze.zzb)) {
            return new zzlb("HmacSha384");
        }
        if (zzeVar.equals(zzjv.zze.zzc)) {
            return new zzlb("HmacSha512");
        }
        throw new GeneralSecurityException("Unrecognized HPKE KDF identifier");
    }

    public static zzlh zza(zzjv.zzd zzdVar) throws GeneralSecurityException {
        if (zzdVar.equals(zzjv.zzd.zzd)) {
            return new zzlv(new zzlb("HmacSha256"));
        }
        if (zzdVar.equals(zzjv.zzd.zza)) {
            return zzlu.zza(zzwq.NIST_P256);
        }
        if (zzdVar.equals(zzjv.zzd.zzb)) {
            return zzlu.zza(zzwq.NIST_P384);
        }
        if (zzdVar.equals(zzjv.zzd.zzc)) {
            return zzlu.zza(zzwq.NIST_P521);
        }
        throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
    }
}
