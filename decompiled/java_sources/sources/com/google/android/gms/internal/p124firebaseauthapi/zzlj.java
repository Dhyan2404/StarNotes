package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class zzlj {
    private static final zzoe<zzka, zzbp> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzlm
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzlg.zza((zzka) zzbuVar);
        }
    }, zzka.class, zzbp.class);
    private static final zzoe<zzki, zzbs> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzll
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzlf.zza((zzki) zzbuVar);
        }
    }, zzki.class, zzbs.class);
    private static final zzcj<zzbp> zzc = zzmy.zza("type.googleapis.com/google.crypto.tink.HpkePrivateKey", zzbp.class, zzus.zzf());
    private static final zzbt<zzbs> zzd = zzmy.zza("type.googleapis.com/google.crypto.tink.HpkePublicKey", zzbs.class, zzuw.zzb.ASYMMETRIC_PUBLIC, zzuv.zzg());
    private static final zznk<zzjv> zze = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzlo
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzlj.zza((zzjv) zzciVar, null);
        }
    };

    public static /* synthetic */ zzka zza(zzjv zzjvVar, Integer num) {
        byte[] bArr;
        zzxv zza2;
        zzxw zza3;
        if (zzjvVar.zze().equals(zzjv.zzd.zzd)) {
            byte[] zza4 = zzow.zza(32);
            zza4[0] = (byte) (zza4[0] | 7);
            byte b = (byte) (zza4[31] & 63);
            zza4[31] = b;
            zza4[31] = (byte) (b | 128);
            zza3 = zzxw.zza(zza4, zzbr.zza());
            zza2 = zzxv.zza(zzxt.zza(zza4));
        } else {
            if (!zzjvVar.zze().equals(zzjv.zzd.zza) && !zzjvVar.zze().equals(zzjv.zzd.zzb) && !zzjvVar.zze().equals(zzjv.zzd.zzc)) {
                throw new GeneralSecurityException("Unknown KEM ID");
            }
            zzwq zzc2 = zzln.zzc(zzjvVar.zze());
            KeyPair zza5 = zzwr.zza(zzwr.zza(zzc2));
            zzwt zzwtVar = zzwt.UNCOMPRESSED;
            ECPoint w = ((ECPublicKey) zza5.getPublic()).getW();
            EllipticCurve curve = zzwr.zza(zzc2).getCurve();
            zzmf.zza(w, curve);
            int zza6 = zzwr.zza(curve);
            int ordinal = zzwtVar.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    int i = zza6 + 1;
                    bArr = new byte[i];
                    byte[] zza7 = zzmd.zza(w.getAffineX());
                    System.arraycopy(zza7, 0, bArr, i - zza7.length, zza7.length);
                    bArr[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                } else if (ordinal == 2) {
                    int i2 = zza6 * 2;
                    bArr = new byte[i2];
                    byte[] zza8 = zzmd.zza(w.getAffineX());
                    if (zza8.length > zza6) {
                        zza8 = Arrays.copyOfRange(zza8, zza8.length - zza6, zza8.length);
                    }
                    byte[] zza9 = zzmd.zza(w.getAffineY());
                    if (zza9.length > zza6) {
                        zza9 = Arrays.copyOfRange(zza9, zza9.length - zza6, zza9.length);
                    }
                    System.arraycopy(zza9, 0, bArr, i2 - zza9.length, zza9.length);
                    System.arraycopy(zza8, 0, bArr, zza6 - zza8.length, zza8.length);
                } else {
                    throw new GeneralSecurityException("invalid format:" + String.valueOf(zzwtVar));
                }
            } else {
                int i3 = (zza6 * 2) + 1;
                bArr = new byte[i3];
                byte[] zza10 = zzmd.zza(w.getAffineX());
                byte[] zza11 = zzmd.zza(w.getAffineY());
                System.arraycopy(zza11, 0, bArr, i3 - zza11.length, zza11.length);
                System.arraycopy(zza10, 0, bArr, (zza6 + 1) - zza10.length, zza10.length);
                bArr[0] = 4;
            }
            zza2 = zzxv.zza(bArr);
            zza3 = zzxw.zza(zzmd.zza(((ECPrivateKey) zza5.getPrivate()).getS(), zzln.zza(zzjvVar.zze())), zzbr.zza());
        }
        return zzka.zza(zzki.zza(zzjvVar, zza2, num), zza3);
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzjz.zza();
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            zzjv.zzc zzc2 = zzjv.zzc();
            zzjv.zzf zzfVar = zzjv.zzf.zza;
            zzjv.zzc zza3 = zzc2.zza(zzfVar);
            zzjv.zzd zzdVar = zzjv.zzd.zzd;
            zzjv.zzc zza4 = zza3.zza(zzdVar);
            zzjv.zze zzeVar = zzjv.zze.zza;
            zzjv.zzc zza5 = zza4.zza(zzeVar);
            zzjv.zza zzaVar = zzjv.zza.zza;
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", zza5.zza(zzaVar).zza());
            zzjv.zzc zzc3 = zzjv.zzc();
            zzjv.zzf zzfVar2 = zzjv.zzf.zzc;
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", zzc3.zza(zzfVar2).zza(zzdVar).zza(zzeVar).zza(zzaVar).zza());
            zzjv.zzc zza6 = zzjv.zzc().zza(zzfVar).zza(zzdVar).zza(zzeVar);
            zzjv.zza zzaVar2 = zzjv.zza.zzb;
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", zza6.zza(zzaVar2).zza());
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar).zza(zzeVar).zza(zzaVar2).zza());
            zzjv.zzc zza7 = zzjv.zzc().zza(zzfVar).zza(zzdVar).zza(zzeVar);
            zzjv.zza zzaVar3 = zzjv.zza.zzc;
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305", zza7.zza(zzaVar3).zza());
            hashMap.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar).zza(zzeVar).zza(zzaVar3).zza());
            zzjv.zzc zza8 = zzjv.zzc().zza(zzfVar);
            zzjv.zzd zzdVar2 = zzjv.zzd.zza;
            hashMap.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", zza8.zza(zzdVar2).zza(zzeVar).zza(zzaVar).zza());
            hashMap.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar2).zza(zzeVar).zza(zzaVar).zza());
            hashMap.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", zzjv.zzc().zza(zzfVar).zza(zzdVar2).zza(zzeVar).zza(zzaVar2).zza());
            hashMap.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar2).zza(zzeVar).zza(zzaVar2).zza());
            zzjv.zzc zza9 = zzjv.zzc().zza(zzfVar);
            zzjv.zzd zzdVar3 = zzjv.zzd.zzb;
            zzjv.zzc zza10 = zza9.zza(zzdVar3);
            zzjv.zze zzeVar2 = zzjv.zze.zzb;
            hashMap.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM", zza10.zza(zzeVar2).zza(zzaVar).zza());
            hashMap.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar3).zza(zzeVar2).zza(zzaVar).zza());
            hashMap.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM", zzjv.zzc().zza(zzfVar).zza(zzdVar3).zza(zzeVar2).zza(zzaVar2).zza());
            hashMap.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar3).zza(zzeVar2).zza(zzaVar2).zza());
            zzjv.zzc zza11 = zzjv.zzc().zza(zzfVar);
            zzjv.zzd zzdVar4 = zzjv.zzd.zzc;
            zzjv.zzc zza12 = zza11.zza(zzdVar4);
            zzjv.zze zzeVar3 = zzjv.zze.zzc;
            hashMap.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM", zza12.zza(zzeVar3).zza(zzaVar).zza());
            hashMap.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar4).zza(zzeVar3).zza(zzaVar).zza());
            hashMap.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM", zzjv.zzc().zza(zzfVar).zza(zzdVar4).zza(zzeVar3).zza(zzaVar2).zza());
            hashMap.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW", zzjv.zzc().zza(zzfVar2).zza(zzdVar4).zza(zzeVar3).zza(zzaVar2).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zznp.zza().zza(zza);
            zznp.zza().zza(zzb);
            zzni.zza().zza(zze, zzjv.class);
            zzmn.zza().zza((zzbt) zzc, true);
            zzmn.zza().zza((zzbt) zzd, false);
            return;
        }
        throw new GeneralSecurityException("Registering HPKE Hybrid Encryption is not supported in FIPS mode");
    }
}
