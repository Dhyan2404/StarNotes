package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzqf;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzrf {
    private static final zzxv zza;
    private static final zzmh<zzvs, zzqf.zzc> zzb;
    private static final zzmh<zzub, zzqf.zzb> zzc;
    private static final zzoa<zzqf, zzot> zzd;
    private static final zznw<zzot> zze;
    private static final zzmu<zzpw, zzou> zzf;
    private static final zzmq<zzou> zzg;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zza = zzb2;
        zzb = zzmh.zza().zza(zzvs.RAW, zzqf.zzc.zzd).zza(zzvs.TINK, zzqf.zzc.zza).zza(zzvs.LEGACY, zzqf.zzc.zzc).zza(zzvs.CRUNCHY, zzqf.zzc.zzb).zza();
        zzc = zzmh.zza().zza(zzub.SHA1, zzqf.zzb.zza).zza(zzub.SHA224, zzqf.zzb.zzb).zza(zzub.SHA256, zzqf.zzb.zzc).zza(zzub.SHA384, zzqf.zzb.zzd).zza(zzub.SHA512, zzqf.zzb.zze).zza();
        zzd = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzre
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.HmacKey").zza(((zzue) ((zzaje) zzue.zzc().zza(zzrf.zzb(r1)).zza(r1.zzc()).zzf())).zzj()).zza(zzrf.zzb.zza((zzmh<zzvs, zzqf.zzc>) ((zzqf) zzciVar).zzf())).zzf()));
                return zzb3;
            }
        }, zzqf.class, zzot.class);
        zze = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzrh
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzqf zzb3;
                zzb3 = zzrf.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzf = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzrg
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.HmacKey", ((zzud) ((zzaje) zzud.zzb().zza(zzrf.zzb(r1.zzc())).zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zzrf.zzb.zza((zzmh<zzvs, zzqf.zzc>) r1.zzc().zzf()), ((zzpw) zzbuVar).zza());
                return zza2;
            }
        }, zzpw.class, zzou.class);
        zzg = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzrj
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzpw zzb3;
                zzb3 = zzrf.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzpw zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzud zza2 = zzud.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzpw.zzb().zza(zzqf.zzd().zza(zza2.zzf().zzb()).zzb(zza2.zze().zza()).zza(zzc.zza((zzmh<zzub, zzqf.zzb>) zza2.zze().zzb())).zza(zzb.zza((zzmh<zzvs, zzqf.zzc>) zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zzf().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing HmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzqf zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzue zza2 = zzue.zza(zzotVar.zza().zze(), zzaiq.zza());
                if (zza2.zzb() == 0) {
                    return zzqf.zzd().zza(zza2.zza()).zzb(zza2.zzf().zza()).zza(zzc.zza((zzmh<zzub, zzqf.zzb>) zza2.zzf().zzb())).zza(zzb.zza((zzmh<zzvs, zzqf.zzc>) zzotVar.zza().zzd())).zza();
                }
                throw new GeneralSecurityException("Parsing HmacParameters failed: unknown Version " + zza2.zzb());
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing HmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzd);
        zza2.zza(zze);
        zza2.zza(zzf);
        zza2.zza(zzg);
    }

    private static zzuh zzb(zzqf zzqfVar) throws GeneralSecurityException {
        return (zzuh) ((zzaje) zzuh.zzc().zza(zzqfVar.zzb()).zza(zzc.zza((zzmh<zzub, zzqf.zzb>) zzqfVar.zze())).zzf());
    }
}
