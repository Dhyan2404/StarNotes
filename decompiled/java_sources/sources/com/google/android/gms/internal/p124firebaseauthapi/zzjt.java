package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzjt extends zzkr {
    private final zzjo zza;

    @Nullable
    private final ECPoint zzb;

    @Nullable
    private final zzxv zzc;
    private final zzxv zzd;

    @Nullable
    private final Integer zze;

    private zzjt(zzjo zzjoVar, @Nullable ECPoint eCPoint, @Nullable zzxv zzxvVar, zzxv zzxvVar2, @Nullable Integer num) {
        this.zza = zzjoVar;
        this.zzb = eCPoint;
        this.zzc = zzxvVar;
        this.zzd = zzxvVar2;
        this.zze = num;
    }

    public static zzjt zza(zzjo zzjoVar, zzxv zzxvVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzjoVar.zzd().equals(zzjo.zzb.zzd)) {
            zzb(zzjoVar.zzg(), num);
            if (zzxvVar.zza() == 32) {
                return new zzjt(zzjoVar, null, zzxvVar, zza(zzjoVar.zzg(), num), num);
            }
            throw new GeneralSecurityException("Encoded public point byte length for X25519 curve must be 32");
        }
        throw new GeneralSecurityException("createForCurveX25519 may only be called with parameters for curve X25519");
    }

    public final zzjo zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzkr
    public final zzxv zzc() {
        return this.zzd;
    }

    @Nullable
    public final zzxv zzd() {
        return this.zzc;
    }

    @Nullable
    public final ECPoint zze() {
        return this.zzb;
    }

    private static void zzb(zzjo.zze zzeVar, @Nullable Integer num) throws GeneralSecurityException {
        zzjo.zze zzeVar2 = zzjo.zze.zzc;
        if (!zzeVar.equals(zzeVar2) && num == null) {
            throw new GeneralSecurityException("'idRequirement' must be non-null for " + String.valueOf(zzeVar) + " variant.");
        }
        if (zzeVar.equals(zzeVar2) && num != null) {
            throw new GeneralSecurityException("'idRequirement' must be null for NO_PREFIX variant.");
        }
    }

    public static zzjt zza(zzjo zzjoVar, ECPoint eCPoint, @Nullable Integer num) throws GeneralSecurityException {
        EllipticCurve curve;
        if (!zzjoVar.zzd().equals(zzjo.zzb.zzd)) {
            zzb(zzjoVar.zzg(), num);
            zzjo.zzb zzd = zzjoVar.zzd();
            if (zzd == zzjo.zzb.zza) {
                curve = zzmf.zza.getCurve();
            } else if (zzd == zzjo.zzb.zzb) {
                curve = zzmf.zzb.getCurve();
            } else if (zzd == zzjo.zzb.zzc) {
                curve = zzmf.zzc.getCurve();
            } else {
                throw new IllegalArgumentException("Unable to determine NIST curve type for " + String.valueOf(zzd));
            }
            zzmf.zza(eCPoint, curve);
            return new zzjt(zzjoVar, eCPoint, null, zza(zzjoVar.zzg(), num), num);
        }
        throw new GeneralSecurityException("createForNistCurve may only be called with parameters for NIST curve");
    }

    private static zzxv zza(zzjo.zze zzeVar, @Nullable Integer num) {
        if (zzeVar == zzjo.zze.zzc) {
            return zznt.zza;
        }
        if (num != null) {
            if (zzeVar == zzjo.zze.zzb) {
                return zznt.zza(num.intValue());
            }
            if (zzeVar == zzjo.zze.zza) {
                return zznt.zzb(num.intValue());
            }
            throw new IllegalStateException("Unknown EciesParameters.Variant: " + String.valueOf(zzeVar));
        }
        throw new IllegalStateException("idRequirement must be non-null for EciesParameters.Variant: " + String.valueOf(zzeVar));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    @Nullable
    public final Integer zza() {
        return this.zze;
    }
}
