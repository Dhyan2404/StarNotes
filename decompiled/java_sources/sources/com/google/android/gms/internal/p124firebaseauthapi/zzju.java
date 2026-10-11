package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Arrays;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzju extends zzks {
    private final zzjt zza;

    @Nullable
    private final zzxu zzb;

    @Nullable
    private final zzxw zzc;

    private zzju(zzjt zzjtVar, @Nullable zzxu zzxuVar, @Nullable zzxw zzxwVar) {
        this.zza = zzjtVar;
        this.zzb = zzxuVar;
        this.zzc = zzxwVar;
    }

    public static zzju zza(zzjt zzjtVar, zzxw zzxwVar) throws GeneralSecurityException {
        if (zzjtVar != null) {
            if (zzjtVar.zzd() == null) {
                throw new GeneralSecurityException("ECIES private key for X25519 curve cannot be constructed with NIST-curve public key");
            }
            if (zzxwVar != null) {
                byte[] zza = zzxwVar.zza(zzbr.zza());
                byte[] zzb = zzjtVar.zzd().zzb();
                if (zza.length == 32) {
                    if (Arrays.equals(zzxt.zza(zza), zzb)) {
                        return new zzju(zzjtVar, null, zzxwVar);
                    }
                    throw new GeneralSecurityException("Invalid private key for public key.");
                }
                throw new GeneralSecurityException("Private key bytes length for X25519 curve must be 32");
            }
            throw new GeneralSecurityException("ECIES private key cannot be constructed without secret");
        }
        throw new GeneralSecurityException("ECIES private key cannot be constructed without an ECIES public key");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzks, com.google.android.gms.internal.p124firebaseauthapi.zzck
    public final /* synthetic */ zzbu zzb() {
        return (zzjt) zzb();
    }

    public final zzjo zzc() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzks
    /* renamed from: zzd */
    public final /* synthetic */ zzkr zzb() {
        return this.zza;
    }

    @Nullable
    public final zzxu zze() {
        return this.zzb;
    }

    @Nullable
    public final zzxw zzf() {
        return this.zzc;
    }

    public static zzju zza(zzjt zzjtVar, zzxu zzxuVar) throws GeneralSecurityException {
        if (zzjtVar != null) {
            if (zzjtVar.zze() == null) {
                throw new GeneralSecurityException("ECIES private key for NIST curve cannot be constructed with X25519-curve public key");
            }
            if (zzxuVar != null) {
                BigInteger zza = zzxuVar.zza(zzbr.zza());
                ECPoint zze = zzjtVar.zze();
                zzjo.zzb zzd = zzjtVar.zzb().zzd();
                BigInteger order = zza(zzd).getOrder();
                if (zza.signum() > 0 && zza.compareTo(order) < 0) {
                    if (zzmf.zza(zza, zza(zzd)).equals(zze)) {
                        return new zzju(zzjtVar, zzxuVar, null);
                    }
                    throw new GeneralSecurityException("Invalid private value");
                }
                throw new GeneralSecurityException("Invalid private value");
            }
            throw new GeneralSecurityException("ECIES private key cannot be constructed without secret");
        }
        throw new GeneralSecurityException("ECIES private key cannot be constructed without an ECIES public key");
    }

    private static ECParameterSpec zza(zzjo.zzb zzbVar) {
        if (zzbVar == zzjo.zzb.zza) {
            return zzmf.zza;
        }
        if (zzbVar == zzjo.zzb.zzb) {
            return zzmf.zzb;
        }
        if (zzbVar == zzjo.zzb.zzc) {
            return zzmf.zzc;
        }
        throw new IllegalArgumentException("Unable to determine NIST curve type for " + String.valueOf(zzbVar));
    }
}
