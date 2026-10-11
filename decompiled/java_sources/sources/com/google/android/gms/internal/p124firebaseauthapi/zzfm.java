package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzfi;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzfm {
    private static final zzxv zza;
    private static final zzoa<zzfi, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzfg, zzou> zzd;
    private static final zzmq<zzou> zze;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzfl
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey").zza(zzfm.zzb(r1).zzj()).zza(zzfm.zza(((zzfi) zzciVar).zzc())).zzf()));
                return zzb3;
            }
        }, zzfi.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzfo
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzfi zzb3;
                zzb3 = zzfm.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzfn
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((zzvo) ((zzaje) zzvo.zzb().zza(zzfm.zzb(r1.zzb())).zzf())).zzj(), zzuw.zzb.REMOTE, zzfm.zza(r1.zzb().zzc()), ((zzfg) zzbuVar).zza());
                return zza2;
            }
        }, zzfg.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzfq
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzfg zzb3;
                zzb3 = zzfm.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfg zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            try {
                zzvo zza2 = zzvo.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzfg.zza(zza(zza2.zzd(), zzouVar.zzc()), zzouVar.zze());
                }
                throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got " + String.valueOf(zza2));
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
    }

    private static zzfi zza(zzvp zzvpVar, zzvs zzvsVar) throws GeneralSecurityException {
        zzfi.zzb zzbVar;
        zzfi.zzc zzcVar;
        zzci zza2 = zzcp.zza(((zzvc) ((zzaje) zzvc.zza().zza(zzvpVar.zza().zzf()).zza(zzvpVar.zza().zze()).zza(zzvs.RAW).zzf())).m22248a_());
        if (zza2 instanceof zzdz) {
            zzbVar = zzfi.zzb.zza;
        } else if (zza2 instanceof zzeq) {
            zzbVar = zzfi.zzb.zzc;
        } else if (zza2 instanceof zzgd) {
            zzbVar = zzfi.zzb.zzb;
        } else if (zza2 instanceof zzdg) {
            zzbVar = zzfi.zzb.zzd;
        } else if (zza2 instanceof zzdq) {
            zzbVar = zzfi.zzb.zze;
        } else if (zza2 instanceof zzek) {
            zzbVar = zzfi.zzb.zzf;
        } else {
            throw new GeneralSecurityException("Unsupported DEK parameters when parsing " + String.valueOf(zza2));
        }
        zzfi.zza zzaVar = new zzfi.zza();
        int i = zzfp.zza[zzvsVar.ordinal()];
        if (i == 1) {
            zzcVar = zzfi.zzc.zza;
        } else if (i == 2) {
            zzcVar = zzfi.zzc.zzb;
        } else {
            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
        }
        return zzaVar.zza(zzcVar).zza(zzvpVar.zze()).zza((zzcw) zza2).zza(zzbVar).zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfi zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            try {
                return zza(zzvp.zza(zzotVar.zza().zze(), zzaiq.zza()), zzotVar.zza().zzd());
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzvp zzb(zzfi zzfiVar) throws GeneralSecurityException {
        try {
            return (zzvp) ((zzaje) zzvp.zzb().zza(zzfiVar.zzd()).zza(zzvc.zza(zzcp.zza(zzfiVar.zzb()), zzaiq.zza())).zzf());
        } catch (zzajk e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    private static zzvs zza(zzfi.zzc zzcVar) throws GeneralSecurityException {
        if (zzfi.zzc.zza.equals(zzcVar)) {
            return zzvs.TINK;
        }
        if (zzfi.zzc.zzb.equals(zzcVar)) {
            return zzvs.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: " + String.valueOf(zzcVar));
    }

    public static void zza() throws GeneralSecurityException {
        zzns zza2 = zzns.zza();
        zza2.zza(zzb);
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
    }
}
