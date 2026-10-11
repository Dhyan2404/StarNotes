package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdg;
import com.google.android.gms.internal.p124firebaseauthapi.zzuh;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzgf {
    private static final zzxv zza;
    private static final zzoa<zzdg, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzcz, zzou> zzd;
    private static final zzmq<zzou> zze;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzge
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey").zza(((zzsf) ((zzaje) zzsf.zza().zza((zzsj) ((zzaje) zzsj.zzb().zza((zzsk) ((zzaje) zzsk.zzb().zza(r1.zzd()).zzf())).zza(r1.zzb()).zzf())).zza((zzue) ((zzaje) zzue.zzc().zza(zzgf.zzb(r1)).zza(r1.zzc()).zzf())).zzf())).zzj()).zza(zzgf.zza(((zzdg) zzciVar).zzh())).zzf()));
                return zzb3;
            }
        }, zzdg.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgh
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzdg zzb3;
                zzb3 = zzgf.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgg
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzsc) ((zzaje) zzsc.zzb().zza((zzsg) ((zzaje) zzsg.zzb().zza((zzsk) ((zzaje) zzsk.zzb().zza(r1.zzc().zzd()).zzf())).zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zza((zzud) ((zzaje) zzud.zzb().zza(zzgf.zzb(r1.zzc())).zza(zzaho.zza(r1.zzf().zza(zzcn.zza(zzcnVar)))).zzf())).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zzgf.zza(r1.zzc().zzh()), ((zzcz) zzbuVar).zza());
                return zza2;
            }
        }, zzcz.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgj
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzcz zzb3;
                zzb3 = zzgf.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcz zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzsc zza2 = zzsc.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    if (zza2.zzd().zza() == 0) {
                        if (zza2.zze().zza() == 0) {
                            return zzcz.zzb().zza(zzdg.zzf().zza(zza2.zzd().zzf().zzb()).zzb(zza2.zze().zzf().zzb()).zzc(zza2.zzd().zze().zza()).zzd(zza2.zze().zze().zza()).zza(zza(zza2.zze().zze().zzb())).zza(zza(zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zzd().zzf().zzf(), zzcn.zza(zzcnVar))).zzb(zzxw.zza(zza2.zze().zzf().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                        }
                        throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
                    }
                    throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk unused) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
    }

    private static zzdg.zzc zza(zzub zzubVar) throws GeneralSecurityException {
        int i = zzgi.zzb[zzubVar.ordinal()];
        if (i == 1) {
            return zzdg.zzc.zza;
        }
        if (i == 2) {
            return zzdg.zzc.zzb;
        }
        if (i == 3) {
            return zzdg.zzc.zzc;
        }
        if (i == 4) {
            return zzdg.zzc.zzd;
        }
        if (i == 5) {
            return zzdg.zzc.zze;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + zzubVar.zza());
    }

    private static zzdg.zzb zza(zzvs zzvsVar) throws GeneralSecurityException {
        int i = zzgi.zza[zzvsVar.ordinal()];
        if (i == 1) {
            return zzdg.zzb.zza;
        }
        if (i == 2 || i == 3) {
            return zzdg.zzb.zzb;
        }
        if (i == 4) {
            return zzdg.zzb.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzdg zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzsf zza2 = zzsf.zza(zzotVar.zza().zze(), zzaiq.zza());
                if (zza2.zzd().zzb() == 0) {
                    return zzdg.zzf().zza(zza2.zzc().zza()).zzb(zza2.zzd().zza()).zzc(zza2.zzc().zze().zza()).zzd(zza2.zzd().zzf().zza()).zza(zza(zza2.zzd().zzf().zzb())).zza(zza(zzotVar.zza().zzd())).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzuh zzb(zzdg zzdgVar) throws GeneralSecurityException {
        zzub zzubVar;
        zzuh.zza zza2 = zzuh.zzc().zza(zzdgVar.zze());
        zzdg.zzc zzg = zzdgVar.zzg();
        if (zzdg.zzc.zza.equals(zzg)) {
            zzubVar = zzub.SHA1;
        } else if (zzdg.zzc.zzb.equals(zzg)) {
            zzubVar = zzub.SHA224;
        } else if (zzdg.zzc.zzc.equals(zzg)) {
            zzubVar = zzub.SHA256;
        } else if (zzdg.zzc.zzd.equals(zzg)) {
            zzubVar = zzub.SHA384;
        } else if (zzdg.zzc.zze.equals(zzg)) {
            zzubVar = zzub.SHA512;
        } else {
            throw new GeneralSecurityException("Unable to serialize HashType " + String.valueOf(zzg));
        }
        return (zzuh) ((zzaje) zza2.zza(zzubVar).zzf());
    }

    private static zzvs zza(zzdg.zzb zzbVar) throws GeneralSecurityException {
        if (zzdg.zzb.zza.equals(zzbVar)) {
            return zzvs.TINK;
        }
        if (zzdg.zzb.zzb.equals(zzbVar)) {
            return zzvs.CRUNCHY;
        }
        if (zzdg.zzb.zzc.equals(zzbVar)) {
            return zzvs.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + String.valueOf(zzbVar));
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzb);
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
    }
}
