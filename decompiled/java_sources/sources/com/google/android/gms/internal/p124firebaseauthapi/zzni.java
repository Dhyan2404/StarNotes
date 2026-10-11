package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzni {
    private static final zznk<zznc> zza = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zznh
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzni.zza((zznc) zzciVar, (Integer) null);
        }
    };
    private static final zzni zzb = zzb();
    private final Map<Class<? extends zzci>, zznk<? extends zzci>> zzc = new HashMap();

    private final synchronized <ParametersT extends zzci> zzbu zzb(ParametersT parameterst, @Nullable Integer num) throws GeneralSecurityException {
        zznk<? extends zzci> zznkVar;
        zznkVar = this.zzc.get(parameterst.getClass());
        if (zznkVar != null) {
        } else {
            throw new GeneralSecurityException("Cannot create a new key for parameters " + String.valueOf(parameterst) + ": no key creator for this class was registered.");
        }
        return zznkVar.zza(parameterst, null);
    }

    public final zzbu zza(zzci zzciVar, @Nullable Integer num) throws GeneralSecurityException {
        return zzb(zzciVar, null);
    }

    public static /* synthetic */ zzna zza(zznc zzncVar, Integer num) {
        zzvc zza2 = zzncVar.zzb().zza();
        zzbt<?> zza3 = zzmn.zza().zza(zza2.zzf());
        if (zzmn.zza().zzb(zza2.zzf())) {
            zzuw zza4 = zza3.zza(zza2.zze());
            return new zzna(zzou.zza(zza4.zzf(), zza4.zze(), zza4.zzb(), zza2.zzd(), num), zzbr.zza());
        }
        throw new GeneralSecurityException("Creating new keys is not allowed.");
    }

    private static zzni zzb() {
        zzni zzniVar = new zzni();
        try {
            zzniVar.zza(zza, zznc.class);
            return zzniVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    public static zzni zza() {
        return zzb;
    }

    public final synchronized <ParametersT extends zzci> void zza(zznk<ParametersT> zznkVar, Class<ParametersT> cls) throws GeneralSecurityException {
        zznk<? extends zzci> zznkVar2 = this.zzc.get(cls);
        if (zznkVar2 != null && !zznkVar2.equals(zznkVar)) {
            throw new GeneralSecurityException("Different key creator for parameters class " + String.valueOf(cls) + " already inserted");
        }
        this.zzc.put(cls, zznkVar);
    }
}
