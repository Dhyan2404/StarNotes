package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzka extends zzks {
    private final zzki zza;
    private final zzxw zzb;

    private zzka(zzki zzkiVar, zzxw zzxwVar) {
        this.zza = zzkiVar;
        this.zzb = zzxwVar;
    }

    public static zzka zza(zzki zzkiVar, zzxw zzxwVar) throws GeneralSecurityException {
        ECParameterSpec eCParameterSpec;
        if (zzkiVar == null) {
            throw new GeneralSecurityException("HPKE private key cannot be constructed without an HPKE public key");
        }
        if (zzxwVar == null) {
            throw new GeneralSecurityException("HPKE private key cannot be constructed without secret");
        }
        zzjv.zzd zze = zzkiVar.zzb().zze();
        int zza = zzxwVar.zza();
        String str = "Encoded private key byte length for " + String.valueOf(zze) + " must be %d, not " + zza;
        zzjv.zzd zzdVar = zzjv.zzd.zza;
        if (zze == zzdVar) {
            if (zza != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        } else if (zze == zzjv.zzd.zzb) {
            if (zza != 48) {
                throw new GeneralSecurityException(String.format(str, 48));
            }
        } else if (zze == zzjv.zzd.zzc) {
            if (zza != 66) {
                throw new GeneralSecurityException(String.format(str, 66));
            }
        } else {
            if (zze != zzjv.zzd.zzd) {
                throw new GeneralSecurityException("Unable to validate private key length for " + String.valueOf(zze));
            }
            if (zza != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        }
        zzjv.zzd zze2 = zzkiVar.zzb().zze();
        byte[] zzb = zzkiVar.zzd().zzb();
        byte[] zza2 = zzxwVar.zza(zzbr.zza());
        if (zze2 == zzdVar || zze2 == zzjv.zzd.zzb || zze2 == zzjv.zzd.zzc) {
            if (zze2 == zzdVar) {
                eCParameterSpec = zzmf.zza;
            } else if (zze2 == zzjv.zzd.zzb) {
                eCParameterSpec = zzmf.zzb;
            } else {
                if (zze2 != zzjv.zzd.zzc) {
                    throw new IllegalArgumentException("Unable to determine NIST curve params for " + String.valueOf(zze2));
                }
                eCParameterSpec = zzmf.zzc;
            }
            BigInteger order = eCParameterSpec.getOrder();
            BigInteger zza3 = zzmd.zza(zza2);
            if (zza3.signum() <= 0 || zza3.compareTo(order) >= 0) {
                throw new GeneralSecurityException("Invalid private key.");
            }
            if (!zzmf.zza(zza3, eCParameterSpec).equals(zzwr.zza(eCParameterSpec.getCurve(), zzwt.UNCOMPRESSED, zzb))) {
                throw new GeneralSecurityException("Invalid private key for public key.");
            }
        } else {
            if (zze2 != zzjv.zzd.zzd) {
                throw new IllegalArgumentException("Unable to validate key pair for " + String.valueOf(zze2));
            }
            if (!Arrays.equals(zzxt.zza(zza2), zzb)) {
                throw new GeneralSecurityException("Invalid private key for public key.");
            }
        }
        return new zzka(zzkiVar, zzxwVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzks, com.google.android.gms.internal.p124firebaseauthapi.zzck
    public final /* synthetic */ zzbu zzb() {
        return (zzki) zzb();
    }

    public final zzjv zzc() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzks
    /* renamed from: zzd */
    public final /* synthetic */ zzkr zzb() {
        return this.zza;
    }

    public final zzxw zze() {
        return this.zzb;
    }
}
