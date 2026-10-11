package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import com.google.android.gms.internal.p124firebaseauthapi.zztr;
import com.google.android.gms.internal.p124firebaseauthapi.zztv;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzkw {
    private static final zzxv zza;
    private static final zzxv zzb;
    private static final zzoa<zzjo, zzot> zzc;
    private static final zznw<zzot> zzd;
    private static final zzmu<zzjt, zzou> zze;
    private static final zzmq<zzou> zzf;
    private static final zzmu<zzju, zzou> zzg;
    private static final zzmq<zzou> zzh;
    private static final zzmh<zzvs, zzjo.zze> zzi;
    private static final zzmh<zzub, zzjo.zzd> zzj;
    private static final zzmh<zztw, zzjo.zzb> zzk;
    private static final zzmh<zzti, zzjo.zzc> zzl;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        zza = zzb2;
        zzxv zzb3 = zzph.zzb("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
        zzb = zzb3;
        zzc = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkv
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb4;
                zzb4 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").zza(((zztn) ((zzaje) zztn.zza().zza(zzkw.zzb(r1)).zzf())).zzj()).zza(zzkw.zzi.zza((zzmh<zzvs, zzjo.zze>) ((zzjo) zzciVar).zzg())).zzf()));
                return zzb4;
            }
        }, zzjo.class, zzot.class);
        zzd = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzky
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzjo zzb4;
                zzb4 = zzkw.zzb((zzot) zzoxVar);
                return zzb4;
            }
        }, zzb2, zzot.class);
        zze = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkx
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", zzkw.zza(r1).zzj(), zzuw.zzb.ASYMMETRIC_PUBLIC, zzkw.zzi.zza((zzmh<zzvs, zzjo.zze>) r1.zzb().zzg()), ((zzjt) zzbuVar).zza());
                return zza2;
            }
        }, zzjt.class, zzou.class);
        zzf = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzla
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzjt zzd2;
                zzd2 = zzkw.zzd((zzou) zzoxVar, zzcnVar);
                return zzd2;
            }
        }, zzb3, zzou.class);
        zzg = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkz
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                return zzkw.zza((zzju) zzbuVar, zzcnVar);
            }
        }, zzju.class, zzou.class);
        zzh = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzlc
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzju zzc2;
                zzc2 = zzkw.zzc((zzou) zzoxVar, zzcnVar);
                return zzc2;
            }
        }, zzb2, zzou.class);
        zzmk zza2 = zzmh.zza().zza(zzvs.RAW, zzjo.zze.zzc).zza(zzvs.TINK, zzjo.zze.zza);
        zzvs zzvsVar = zzvs.LEGACY;
        zzjo.zze zzeVar = zzjo.zze.zzb;
        zzi = zza2.zza(zzvsVar, zzeVar).zza(zzvs.CRUNCHY, zzeVar).zza();
        zzj = zzmh.zza().zza(zzub.SHA1, zzjo.zzd.zza).zza(zzub.SHA224, zzjo.zzd.zzb).zza(zzub.SHA256, zzjo.zzd.zzc).zza(zzub.SHA384, zzjo.zzd.zzd).zza(zzub.SHA512, zzjo.zzd.zze).zza();
        zzk = zzmh.zza().zza(zztw.NIST_P256, zzjo.zzb.zza).zza(zztw.NIST_P384, zzjo.zzb.zzb).zza(zztw.NIST_P521, zzjo.zzb.zzc).zza(zztw.CURVE25519, zzjo.zzb.zzd).zza();
        zzl = zzmh.zza().zza(zzti.UNCOMPRESSED, zzjo.zzc.zzb).zza(zzti.COMPRESSED, zzjo.zzc.zza).zza(zzti.DO_NOT_USE_CRUNCHY_UNCOMPRESSED, zzjo.zzc.zzc).zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzju zzc(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (!zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to EciesProtoSerialization.parsePrivateKey: " + zzouVar.zzf());
        }
        try {
            zztr zza2 = zztr.zza(zzouVar.zzd(), zzaiq.zza());
            if (zza2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzts zzd2 = zza2.zzd();
            zzjo zza3 = zza(zzouVar.zzc(), zzd2.zzb());
            return zza3.zzd().equals(zzjo.zzb.zzd) ? zzju.zza(zzjt.zza(zza3, zzxv.zza(zzd2.zzf().zzf()), zzouVar.zze()), zzxw.zza(zza2.zze().zzf(), zzcn.zza(zzcnVar))) : zzju.zza(zzjt.zza(zza3, new ECPoint(zzmd.zza(zzd2.zzf().zzf()), zzmd.zza(zzd2.zzg().zzf())), zzouVar.zze()), zzxu.zza(zzmd.zza(zza2.zze().zzf()), zzcn.zza(zzcnVar)));
        } catch (zzajk | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing EcdsaPrivateKey failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzjt zzd(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (!zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to EciesProtoSerialization.parsePublicKey: " + zzouVar.zzf());
        }
        try {
            zzts zza2 = zzts.zza(zzouVar.zzd(), zzaiq.zza());
            if (zza2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzjo zza3 = zza(zzouVar.zzc(), zza2.zzb());
            if (!zza3.zzd().equals(zzjo.zzb.zzd)) {
                return zzjt.zza(zza3, new ECPoint(zzmd.zza(zza2.zzf().zzf()), zzmd.zza(zza2.zzg().zzf())), zzouVar.zze());
            }
            if (zza2.zzg().zzb() == 0) {
                return zzjt.zza(zza3, zzxv.zza(zza2.zzf().zzf()), zzouVar.zze());
            }
            throw new GeneralSecurityException("Y must be empty for X25519 points");
        } catch (zzajk | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing EcdsaPublicKey failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzjo zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
            try {
                return zza(zzotVar.zza().zzd(), zztn.zza(zzotVar.zza().zze(), zzaiq.zza()).zzc());
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing EciesParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to EciesProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static int zza(zzjo.zzb zzbVar) throws GeneralSecurityException {
        if (zzjo.zzb.zza.equals(zzbVar)) {
            return 33;
        }
        if (zzjo.zzb.zzb.equals(zzbVar)) {
            return 49;
        }
        if (zzjo.zzb.zzc.equals(zzbVar)) {
            return 67;
        }
        throw new GeneralSecurityException("Unable to serialize CurveType " + String.valueOf(zzbVar));
    }

    private static zzjo zza(zzvs zzvsVar, zzto zztoVar) throws GeneralSecurityException {
        zzjo.zza zza2 = zzjo.zzc().zza(zzi.zza((zzmh<zzvs, zzjo.zze>) zzvsVar)).zza(zzk.zza((zzmh<zztw, zzjo.zzb>) zztoVar.zzf().zzd())).zza(zzj.zza((zzmh<zzub, zzjo.zzd>) zztoVar.zzf().zze())).zza(zzcp.zza(((zzvc) ((zzaje) zzvc.zza().zza(zztoVar.zzb().zzd().zzf()).zza(zzvs.RAW).zza(zztoVar.zzb().zzd().zze()).zzf())).m22248a_())).zza(zzxv.zza(zztoVar.zzf().zzf().zzf()));
        if (!zztoVar.zzf().zzd().equals(zztw.CURVE25519)) {
            zza2.zza(zzl.zza((zzmh<zzti, zzjo.zzc>) zztoVar.zza()));
        } else if (!zztoVar.zza().equals(zzti.COMPRESSED)) {
            throw new GeneralSecurityException("For CURVE25519 EcPointFormat must be compressed");
        }
        return zza2.zza();
    }

    private static zzto zzb(zzjo zzjoVar) throws GeneralSecurityException {
        zztv.zza zza2 = zztv.zza().zza(zzk.zza((zzmh<zztw, zzjo.zzb>) zzjoVar.zzd())).zza(zzj.zza((zzmh<zzub, zzjo.zzd>) zzjoVar.zze()));
        if (zzjoVar.zzh() != null && zzjoVar.zzh().zza() > 0) {
            zza2.zza(zzaho.zza(zzjoVar.zzh().zzb()));
        }
        zztv zztvVar = (zztv) ((zzaje) zza2.zzf());
        try {
            zzvc zza3 = zzvc.zza(zzcp.zza(zzjoVar.zzb()), zzaiq.zza());
            zztj zztjVar = (zztj) ((zzaje) zztj.zza().zza((zzvc) ((zzaje) zzvc.zza().zza(zza3.zzf()).zza(zzvs.TINK).zza(zza3.zze()).zzf())).zzf());
            zzjo.zzc zzf2 = zzjoVar.zzf();
            if (zzf2 == null) {
                zzf2 = zzjo.zzc.zza;
            }
            return (zzto) ((zzaje) zzto.zzc().zza(zztvVar).zza(zztjVar).zza(zzl.zza((zzmh<zzti, zzjo.zzc>) zzf2)).zzf());
        } catch (zzajk e) {
            throw new GeneralSecurityException("Parsing EciesParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzou zza(zzju zzjuVar, zzcn zzcnVar) {
        zztr.zza zza2 = zztr.zzb().zza(0).zza(zza((zzjt) ((zzkr) zzjuVar.zzb())));
        if (zzjuVar.zzc().zzd().equals(zzjo.zzb.zzd)) {
            zza2.zza(zzaho.zza(zzjuVar.zzf().zza(zzcn.zza(zzcnVar))));
        } else {
            zza2.zza(zzaho.zza(zzmd.zza(zzjuVar.zze().zza(zzcn.zza(zzcnVar)), zza(zzjuVar.zzc().zzd()))));
        }
        return zzou.zza("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", ((zztr) ((zzaje) zza2.zzf())).zzj(), zzuw.zzb.ASYMMETRIC_PRIVATE, zzi.zza((zzmh<zzvs, zzjo.zze>) zzjuVar.zzc().zzg()), zzjuVar.zza());
    }

    private static zzts zza(zzjt zzjtVar) throws GeneralSecurityException {
        if (zzjtVar.zzb().zzd().equals(zzjo.zzb.zzd)) {
            return (zzts) ((zzaje) zzts.zzc().zza(0).zza(zzb(zzjtVar.zzb())).zza(zzaho.zza(zzjtVar.zzd().zzb())).zzb(zzaho.zza).zzf());
        }
        int zza2 = zza(zzjtVar.zzb().zzd());
        ECPoint zze2 = zzjtVar.zze();
        if (zze2 != null) {
            return (zzts) ((zzaje) zzts.zzc().zza(0).zza(zzb(zzjtVar.zzb())).zza(zzaho.zza(zzmd.zza(zze2.getAffineX(), zza2))).zzb(zzaho.zza(zzmd.zza(zze2.getAffineY(), zza2))).zzf());
        }
        throw new GeneralSecurityException("NistCurvePoint was null for NIST curve");
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
