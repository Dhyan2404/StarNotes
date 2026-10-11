package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdz;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzgr {
    private static final zzxv zza;
    private static final zzoa<zzdz, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzds, zzou> zzd;
    private static final zzmq<zzou> zze;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgq
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                return zzgr.zza((zzdz) zzciVar);
            }
        }, zzdz.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgt
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzdz zzb3;
                zzb3 = zzgr.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgs
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                return zzgr.zza((zzds) zzbuVar, zzcnVar);
            }
        }, zzds.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgv
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzds zzb3;
                zzb3 = zzgr.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzds zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzss zza2 = zzss.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzds.zzb().zza(zzdz.zze().zzb(zza2.zzd().zzb()).zza(12).zzc(16).zza(zza(zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zzd().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk unused) {
                throw new GeneralSecurityException("Parsing AesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
    }

    private static zzdz.zzb zza(zzvs zzvsVar) throws GeneralSecurityException {
        int i = zzgu.zza[zzvsVar.ordinal()];
        if (i == 1) {
            return zzdz.zzb.zza;
        }
        if (i == 2 || i == 3) {
            return zzdz.zzb.zzb;
        }
        if (i == 4) {
            return zzdz.zzb.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
    }

    public static /* synthetic */ zzou zza(zzds zzdsVar, zzcn zzcnVar) {
        zzb(zzdsVar.zzc());
        return zzou.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzss) ((zzaje) zzss.zzb().zza(zzaho.zza(zzdsVar.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zza(zzdsVar.zzc().zzf()), zzdsVar.zza());
    }

    public static /* synthetic */ zzot zza(zzdz zzdzVar) {
        zzb(zzdzVar);
        return zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.AesGcmKey").zza(((zzsv) ((zzaje) zzsv.zzc().zza(zzdzVar.zzc()).zzf())).zzj()).zza(zza(zzdzVar.zzf())).zzf()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzdz zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzsv zza2 = zzsv.zza(zzotVar.zza().zze(), zzaiq.zza());
                if (zza2.zzb() == 0) {
                    return zzdz.zze().zzb(zza2.zza()).zza(12).zzc(16).zza(zza(zzotVar.zza().zzd())).zza();
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzvs zza(zzdz.zzb zzbVar) throws GeneralSecurityException {
        if (zzdz.zzb.zza.equals(zzbVar)) {
            return zzvs.TINK;
        }
        if (zzdz.zzb.zzb.equals(zzbVar)) {
            return zzvs.CRUNCHY;
        }
        if (zzdz.zzb.zzc.equals(zzbVar)) {
            return zzvs.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + String.valueOf(zzbVar));
    }

    private static void zzb(zzdz zzdzVar) throws GeneralSecurityException {
        if (zzdzVar.zzd() == 16) {
            if (zzdzVar.zzb() != 12) {
                throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d. Currently Tink only supports serialization of AES GCM keys with IV size equal to 12 bytes.", Integer.valueOf(zzdzVar.zzb())));
            }
            return;
        }
        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports serialization of AES GCM keys with tag size equal to 16 bytes.", Integer.valueOf(zzdzVar.zzd())));
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzb);
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
    }
}
