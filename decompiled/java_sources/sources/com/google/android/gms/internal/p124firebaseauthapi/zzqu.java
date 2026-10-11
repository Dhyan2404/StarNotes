package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzpq;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzqu {
    private static final zzxv zza;
    private static final zzoa<zzpq, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzpj, zzou> zzd;
    private static final zzmq<zzou> zze;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqx
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.AesCmacKey").zza(((zzry) ((zzaje) zzry.zzb().zza(zzqu.zzb(r1)).zza(r1.zzc()).zzf())).zzj()).zza(zzqu.zza(((zzpq) zzciVar).zze())).zzf()));
                return zzb3;
            }
        }, zzpq.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqw
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzpq zzb3;
                zzb3 = zzqu.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqz
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzrx) ((zzaje) zzrx.zzb().zza(zzqu.zzb(r1.zzc())).zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zzqu.zza(r1.zzc().zze()), ((zzpj) zzbuVar).zza());
                return zza2;
            }
        }, zzpj.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqy
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzpj zzb3;
                zzb3 = zzqu.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzpj zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzrx zza2 = zzrx.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzpj.zzb().zza(zzpq.zzd().zza(zza2.zze().zzb()).zzb(zza2.zzd().zza()).zza(zza(zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zze().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing AesCmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzpq zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzry zza2 = zzry.zza(zzotVar.zza().zze(), zzaiq.zza());
                return zzpq.zzd().zza(zza2.zza()).zzb(zza2.zzd().zza()).zza(zza(zzotVar.zza().zzd())).zza();
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzpq.zzb zza(zzvs zzvsVar) throws GeneralSecurityException {
        int i = zzrb.zza[zzvsVar.ordinal()];
        if (i == 1) {
            return zzpq.zzb.zza;
        }
        if (i == 2) {
            return zzpq.zzb.zzb;
        }
        if (i == 3) {
            return zzpq.zzb.zzc;
        }
        if (i == 4) {
            return zzpq.zzb.zzd;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
    }

    private static zzsb zzb(zzpq zzpqVar) {
        return (zzsb) ((zzaje) zzsb.zzb().zza(zzpqVar.zzb()).zzf());
    }

    private static zzvs zza(zzpq.zzb zzbVar) throws GeneralSecurityException {
        if (zzpq.zzb.zza.equals(zzbVar)) {
            return zzvs.TINK;
        }
        if (zzpq.zzb.zzb.equals(zzbVar)) {
            return zzvs.CRUNCHY;
        }
        if (zzpq.zzb.zzd.equals(zzbVar)) {
            return zzvs.RAW;
        }
        if (zzpq.zzb.zzc.equals(zzbVar)) {
            return zzvs.LEGACY;
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
