package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzis;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzjf {
    private static final zzxv zza;
    private static final zzoa<zzis, zzot> zzb;
    private static final zznw<zzot> zzc;
    private static final zzmu<zzil, zzou> zzd;
    private static final zzmq<zzou> zze;
    private static final Map<zzis.zzb, zzvs> zzf;
    private static final Map<zzvs, zzis.zzb> zzg;

    static {
        zzxv zzb2 = zzph.zzb("type.googleapis.com/google.crypto.tink.AesSivKey");
        zza = zzb2;
        zzb = zzoa.zza(new zzoc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzje
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzoc
            public final zzox zza(zzci zzciVar) {
                zzot zzb3;
                zzb3 = zzot.zzb((zzvc) ((zzaje) zzvc.zza().zza("type.googleapis.com/google.crypto.tink.AesSivKey").zza(((zztd) ((zzaje) zztd.zzc().zza(r1.zzb()).zzf())).zzj()).zza(zzjf.zza(((zzis) zzciVar).zzd())).zzf()));
                return zzb3;
            }
        }, zzis.class, zzot.class);
        zzc = zznw.zza(new zzny() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjh
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzny
            public final zzci zza(zzox zzoxVar) {
                zzis zzb3;
                zzb3 = zzjf.zzb((zzot) zzoxVar);
                return zzb3;
            }
        }, zzb2, zzot.class);
        zzd = zzmu.zza(new zzmw() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjg
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmw
            public final zzox zza(zzbu zzbuVar, zzcn zzcnVar) {
                zzou zza2;
                zza2 = zzou.zza("type.googleapis.com/google.crypto.tink.AesSivKey", ((zzta) ((zzaje) zzta.zzb().zza(zzaho.zza(r1.zze().zza(zzcn.zza(zzcnVar)))).zzf())).zzj(), zzuw.zzb.SYMMETRIC, zzjf.zza(r1.zzc().zzd()), ((zzil) zzbuVar).zza());
                return zza2;
            }
        }, zzil.class, zzou.class);
        zze = zzmq.zza(new zzms() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjj
            @Override // com.google.android.gms.internal.p124firebaseauthapi.zzms
            public final zzbu zza(zzox zzoxVar, zzcn zzcnVar) {
                zzil zzb3;
                zzb3 = zzjf.zzb((zzou) zzoxVar, zzcnVar);
                return zzb3;
            }
        }, zzb2, zzou.class);
        HashMap hashMap = new HashMap();
        zzis.zzb zzbVar = zzis.zzb.zzc;
        zzvs zzvsVar = zzvs.RAW;
        hashMap.put(zzbVar, zzvsVar);
        zzis.zzb zzbVar2 = zzis.zzb.zza;
        zzvs zzvsVar2 = zzvs.TINK;
        hashMap.put(zzbVar2, zzvsVar2);
        zzis.zzb zzbVar3 = zzis.zzb.zzb;
        zzvs zzvsVar3 = zzvs.CRUNCHY;
        hashMap.put(zzbVar3, zzvsVar3);
        zzf = Collections.unmodifiableMap(hashMap);
        EnumMap enumMap = new EnumMap(zzvs.class);
        enumMap.put((EnumMap) zzvsVar, (zzvs) zzbVar);
        enumMap.put((EnumMap) zzvsVar2, (zzvs) zzbVar2);
        enumMap.put((EnumMap) zzvsVar3, (zzvs) zzbVar3);
        enumMap.put((EnumMap) zzvs.LEGACY, (zzvs) zzbVar3);
        zzg = Collections.unmodifiableMap(enumMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzil zzb(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzouVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
            try {
                zzta zza2 = zzta.zza(zzouVar.zzd(), zzaiq.zza());
                if (zza2.zza() == 0) {
                    return zzil.zzb().zza(zzis.zzc().zza(zza2.zzd().zzb()).zza(zza(zzouVar.zzc())).zza()).zza(zzxw.zza(zza2.zzd().zzf(), zzcn.zza(zzcnVar))).zza(zzouVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk unused) {
                throw new GeneralSecurityException("Parsing AesSivKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesSivParameters.parseParameters");
    }

    private static zzis.zzb zza(zzvs zzvsVar) throws GeneralSecurityException {
        Map<zzvs, zzis.zzb> map = zzg;
        if (map.containsKey(zzvsVar)) {
            return map.get(zzvsVar);
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzvsVar.zza());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzis zzb(zzot zzotVar) throws GeneralSecurityException {
        if (zzotVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
            try {
                zztd zza2 = zztd.zza(zzotVar.zza().zze(), zzaiq.zza());
                if (zza2.zzb() == 0) {
                    return zzis.zzc().zza(zza2.zza()).zza(zza(zzotVar.zza().zzd())).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzajk e) {
                throw new GeneralSecurityException("Parsing AesSivParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesSivParameters.parseParameters: " + zzotVar.zza().zzf());
    }

    private static zzvs zza(zzis.zzb zzbVar) throws GeneralSecurityException {
        Map<zzis.zzb, zzvs> map = zzf;
        if (map.containsKey(zzbVar)) {
            return map.get(zzbVar);
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
