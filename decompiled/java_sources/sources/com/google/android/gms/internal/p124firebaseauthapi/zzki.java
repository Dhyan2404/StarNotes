package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import java.security.GeneralSecurityException;
import java.security.spec.EllipticCurve;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzki extends zzkr {
    private final zzjv zza;
    private final zzxv zzb;
    private final zzxv zzc;

    @Nullable
    private final Integer zzd;

    private zzki(zzjv zzjvVar, zzxv zzxvVar, zzxv zzxvVar2, @Nullable Integer num) {
        this.zza = zzjvVar;
        this.zzb = zzxvVar;
        this.zzc = zzxvVar2;
        this.zzd = num;
    }

    public static zzki zza(zzjv zzjvVar, zzxv zzxvVar, @Nullable Integer num) throws GeneralSecurityException {
        zzxv zzb;
        EllipticCurve curve;
        zzjv.zzf zzf = zzjvVar.zzf();
        zzjv.zzf zzfVar = zzjv.zzf.zzc;
        if (!zzf.equals(zzfVar) && num == null) {
            throw new GeneralSecurityException("'idRequirement' must be non-null for " + String.valueOf(zzf) + " variant.");
        }
        if (zzf.equals(zzfVar) && num != null) {
            throw new GeneralSecurityException("'idRequirement' must be null for NO_PREFIX variant.");
        }
        zzjv.zzd zze = zzjvVar.zze();
        int zza = zzxvVar.zza();
        String str = "Encoded public key byte length for " + String.valueOf(zze) + " must be %d, not " + zza;
        zzjv.zzd zzdVar = zzjv.zzd.zza;
        if (zze == zzdVar) {
            if (zza != 65) {
                throw new GeneralSecurityException(String.format(str, 65));
            }
        } else if (zze == zzjv.zzd.zzb) {
            if (zza != 97) {
                throw new GeneralSecurityException(String.format(str, 97));
            }
        } else if (zze == zzjv.zzd.zzc) {
            if (zza != 133) {
                throw new GeneralSecurityException(String.format(str, 133));
            }
        } else {
            if (zze != zzjv.zzd.zzd) {
                throw new GeneralSecurityException("Unable to validate public key length for " + String.valueOf(zze));
            }
            if (zza != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        }
        if (zze == zzdVar || zze == zzjv.zzd.zzb || zze == zzjv.zzd.zzc) {
            if (zze == zzdVar) {
                curve = zzmf.zza.getCurve();
            } else if (zze == zzjv.zzd.zzb) {
                curve = zzmf.zzb.getCurve();
            } else if (zze == zzjv.zzd.zzc) {
                curve = zzmf.zzc.getCurve();
            } else {
                throw new IllegalArgumentException("Unable to determine NIST curve type for " + String.valueOf(zze));
            }
            zzmf.zza(zzwr.zza(curve, zzwt.UNCOMPRESSED, zzxvVar.zzb()), curve);
        }
        zzjv.zzf zzf2 = zzjvVar.zzf();
        if (zzf2 == zzfVar) {
            zzb = zznt.zza;
        } else if (num != null) {
            if (zzf2 == zzjv.zzf.zzb) {
                zzb = zznt.zza(num.intValue());
            } else if (zzf2 == zzjv.zzf.zza) {
                zzb = zznt.zzb(num.intValue());
            } else {
                throw new IllegalStateException("Unknown HpkeParameters.Variant: " + String.valueOf(zzf2));
            }
        } else {
            throw new IllegalStateException("idRequirement must be non-null for HpkeParameters.Variant " + String.valueOf(zzf2));
        }
        return new zzki(zzjvVar, zzxvVar, zzb, num);
    }

    public final zzjv zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzkr
    public final zzxv zzc() {
        return this.zzc;
    }

    public final zzxv zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    @Nullable
    public final Integer zza() {
        return this.zzd;
    }
}
