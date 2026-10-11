package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzjz {
    private static final zzxv zza;
    private static final zzxv zzb;
    private static final zzoa<zzjv, zzot> zzc;
    private static final zznw<zzot> zzd;
    private static final zzmu<zzki, zzou> zze;
    private static final zzmq<zzou> zzf;
    private static final zzmu<zzka, zzou> zzg;
    private static final zzmq<zzou> zzh;
    private static final zzmh<zzvs, zzjv.zzf> zzi;
    private static final zzmh<zzul, zzjv.zzd> zzj;
    private static final zzmh<zzuj, zzjv.zze> zzk;
    private static final zzmh<zzui, zzjv.zza> zzl;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.HpkePrivateKey");
        zza = zzb2;
        zzxv zzb3 = zzph.zzb("type.googleapis.com/google.crypto.tink.HpkePublicKey");
        zzb = zzb3;
        zzc = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkc
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb4;
                zzb4 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.HpkePrivateKey").zza(((zzun) ((zzaje) zzun.zza().zza(zzjz.zzb(r1)).zzf())).zzj()).zza(zzjz.zzi.zza((zzmh<zzvs, zzjv.zzf>) ((zzjv) zzciVar).zzf())).zzf()));
                return zzb4;
            }
        }, zzjv.class, zzot.class);
        zzd = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkb
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzjv zzb4;
                zzb4 = zzjz.zzb((zzot) zzoxVar);
                return zzb4;
            }
        }, zzb2, zzot.class);
        zze = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzke
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.HpkePublicKey", zzjz.zza(r1).zzj(), zzuw.zzb.ASYMMETRIC_PUBLIC, zzjz.zzi.zza((zzmh<zzvs, zzjv.zzf>) r1.zzb().zzf()), ((zzki) zzbuVar).zza());
                return zza2;
            }
        }, zzki.class, zzou.class);
        zzf = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkd
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzki zzd2;
                zzd2 = zzjz.zzd((zzou) zzoxVar, zzcnVar);
                return zzd2;
            }
        }, zzb3, zzou.class);
        zzg = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkg
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.HpkePrivateKey", ((zzus) ((zzaje) zzus.zzb().zza(0).zza(zzjz.zza((zzki) ((zzkr) r1.zzb()))).zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.ASYMMETRIC_PRIVATE, zzjz.zzi.zza((zzmh<zzvs, zzjv.zzf>) r1.zzc().zzf()), ((zzka) zzbuVar).zza());
                return zza2;
            }
        }, zzka.class, zzou.class);
        zzh = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkf
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzka zzc2;
                zzc2 = zzjz.zzc((zzou) zzoxVar, zzcnVar);
                return zzc2;
            }
        }, zzb2, zzou.class);
        zzmk zza2 = zzmh.zza().zza(zzvs.RAW, zzjv.zzf.zzc).zza(zzvs.TINK, zzjv.zzf.zza);
        zzvs zzvsVar = zzvs.LEGACY;
        zzjv.zzf zzfVar = zzjv.zzf.zzb;
        zzi = zza2.zza(zzvsVar, zzfVar).zza(zzvs.CRUNCHY, zzfVar).zza();
        zzj = zzmh.zza().zza(zzul.DHKEM_P256_HKDF_SHA256, zzjv.zzd.zza).zza(zzul.DHKEM_P384_HKDF_SHA384, zzjv.zzd.zzb).zza(zzul.DHKEM_P521_HKDF_SHA512, zzjv.zzd.zzc).zza(zzul.DHKEM_X25519_HKDF_SHA256, zzjv.zzd.zzd).zza();
        zzk = zzmh.zza().zza(zzuj.HKDF_SHA256, zzjv.zze.zza).zza(zzuj.HKDF_SHA384, zzjv.zze.zzb).zza(zzuj.HKDF_SHA512, zzjv.zze.zzc).zza();
        zzl = zzmh.zza().zza(zzui.AES_128_GCM, zzjv.zza.zza).zza(zzui.AES_256_GCM, zzjv.zza.zzb).zza(zzui.CHACHA20_POLY1305, zzjv.zza.zzc).zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzka zzc(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (!zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: " + zzouVar.zzf());
        }
        try {
            zzus zza2 = zzus.zza(zzouVar.zzd(), zzaiq.zza());
            if (zza2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzuv zzd2 = zza2.zzd();
            zzjv zza3 = zza(zzouVar.zzc(), zzd2.zzb());
            return zzka.zza(zzki.zza(zza3, zza(zza3.zze(), zzd2.zzf().zzf()), zzouVar.zze()), zzxw.zza(zzmd.zza(zzmd.zza(zza2.zze().zzf()), zzln.zza(zza3.zze())), zzcn.zza(zzcnVar)));
        } catch (zzajk unused) {
            throw new GeneralSecurityException("Parsing HpkePrivateKey failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzki zzd(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (!zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.HpkePublicKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: " + zzouVar.zzf());
        }
        try {
            zzuv zza2 = zzuv.zza(zzouVar.zzd(), zzaiq.zza());
            if (zza2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzjv zza3 = zza(zzouVar.zzc(), zza2.zzb());
            return zzki.zza(zza3, zza(zza3.zze(), zza2.zzf().zzf()), zzouVar.zze());
        } catch (zzajk unused) {
            throw new GeneralSecurityException("Parsing HpkePublicKey failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzjv zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
            try {
                return zza(zzotVar.zza().zzd(), zzun.zza(zzotVar.zza().zze(), zzaiq.zza()).zzc());
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing HpkeParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzjv zza(zzvs zzvsVar, zzur zzurVar) throws GeneralSecurityException {
        return zzjv.zzc().zza(zzi.zza((zzmh<zzvs, zzjv.zzf>) zzvsVar)).zza(zzj.zza((zzmh<zzul, zzjv.zzd>) zzurVar.zzc())).zza(zzk.zza((zzmh<zzuj, zzjv.zze>) zzurVar.zzb())).zza(zzl.zza((zzmh<zzui, zzjv.zza>) zzurVar.zza())).zza();
    }

    private static zzur zzb(zzjv zzjvVar) throws GeneralSecurityException {
        return (zzur) ((zzaje) zzur.zzd().zza(zzj.zza((zzmh<zzul, zzjv.zzd>) zzjvVar.zze())).zza(zzk.zza((zzmh<zzuj, zzjv.zze>) zzjvVar.zzd())).zza(zzl.zza((zzmh<zzui, zzjv.zza>) zzjvVar.zzb())).zzf());
    }

    private static zzuv zza(zzki zzkiVar) throws GeneralSecurityException {
        return (zzuv) ((zzaje) zzuv.zzc().zza(0).zza(zzb(zzkiVar.zzb())).zza(zzaho.zza(zzkiVar.zzd().zzb())).zzf());
    }

    private static zzxv zza(zzjv.zzd zzdVar, byte[] bArr) throws GeneralSecurityException {
        return zzxv.zza(zzmd.zza(zzmd.zza(bArr), zzln.zzb(zzdVar)));
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
        zza2.zza(zzf);
        zza2.zza(zzg);
        zza2.zza(zzh);
    }
}
