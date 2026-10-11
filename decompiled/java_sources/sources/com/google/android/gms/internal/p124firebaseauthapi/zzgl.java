package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdq;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzgl {
    private static final zzxv zza;
    private static final zzoa<zzdq, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzdj, zzou> zzd;
    private static final zzmq<zzou> zze;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgk
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.AesEaxKey").zza(((zzso) ((zzaje) zzso.zzb().zza(zzgl.zzb(r1)).zza(r1.zzc()).zzf())).zzj()).zza(zzgl.zza(((zzdq) zzciVar).zzf())).zzf()));
                return zzb3;
            }
        }, zzdq.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgn
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzdq zzb3;
                zzb3 = zzgl.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgm
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzsn) ((zzaje) zzsn.zzb().zza(zzgl.zzb(r1.zzc())).zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zzgl.zza(r1.zzc().zzf()), ((zzdj) zzbuVar).zza());
                return zza2;
            }
        }, zzdj.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgp
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzdj zzb3;
                zzb3 = zzgl.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzdj zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzsn zza2 = zzsn.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzdj.zzb().zza(zzdq.zze().zzb(zza2.zze().zzb()).zza(zza2.zzd().zza()).zzc(16).zza(zza(zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zze().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk unused) {
                throw new GeneralSecurityException("Parsing AesEaxcKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
    }

    private static zzdq.zzb zza(zzvs zzvsVar) throws GeneralSecurityException {
        int i = zzgo.zza[zzvsVar.ordinal()];
        if (i == 1) {
            return zzdq.zzb.zza;
        }
        if (i == 2 || i == 3) {
            return zzdq.zzb.zzb;
        }
        if (i == 4) {
            return zzdq.zzb.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzdq zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzso zza2 = zzso.zza(zzotVar.zza().zze(), zzaiq.zza());
                return zzdq.zze().zzb(zza2.zza()).zza(zza2.zzd().zza()).zzc(16).zza(zza(zzotVar.zza().zzd())).zza();
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzvs zza(zzdq.zzb zzbVar) throws GeneralSecurityException {
        if (zzdq.zzb.zza.equals(zzbVar)) {
            return zzvs.TINK;
        }
        if (zzdq.zzb.zzb.equals(zzbVar)) {
            return zzvs.CRUNCHY;
        }
        if (zzdq.zzb.zzc.equals(zzbVar)) {
            return zzvs.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + String.valueOf(zzbVar));
    }

    private static zzsr zzb(zzdq zzdqVar) throws GeneralSecurityException {
        if (zzdqVar.zzd() == 16) {
            return (zzsr) ((zzaje) zzsr.zzb().zza(zzdqVar.zzb()).zzf());
        }
        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes.", Integer.valueOf(zzdqVar.zzd())));
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzb);
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
    }
}
